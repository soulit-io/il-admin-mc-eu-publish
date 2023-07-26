using InsuranceLetters.CustomControllers;
using InsuranceLetters.CustomServices;
using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.StaticParams;
using InsuranceLettersCore.Services;
using log4net;
using Newtonsoft.Json.Linq;
using Quartz;
using System;
using System.Collections.Generic;
using System.Linq;

namespace ScheduledTask.ScheduledTasks
{
    public class FeeBasedProcessPendingJob : IJob
    {
        protected InsuranceLettersEntities db = new InsuranceLettersEntities();
        protected TrackingService trackingService;
        protected ApplicationService applicationService;
        protected EmailService emailService;
        protected StaticParameter staticParameter;
        protected LinksService linksService;
        protected InputParserService inputParserService;
        protected WebServiceService wsService;
        protected FeeBasedProcessHelper fbProcessHelper;

        private static readonly ILog log = LogManager.GetLogger("FeeBasedProcessPendingJob");

        public FeeBasedProcessPendingJob()
        {
            trackingService = new TrackingService(this.db);
            applicationService = new ApplicationService(this.db);
            emailService = new EmailService(this.db);
            staticParameter = StaticParameter.getInstance(this.db);
            linksService = new LinksService(this.db);
            inputParserService = new InputParserService();
            wsService = new WebServiceService();
            fbProcessHelper = new FeeBasedProcessHelper(applicationService, trackingService, emailService, linksService, inputParserService, this.db);

        }

        public void Execute(IJobExecutionContext iJobExecutionContext)
        {
            long memStart = GC.GetTotalMemory(false);
            log.Debug($">>>> GC.MEM - Start: {memStart:N}");
            List<tracking> trackingPaymentPending =
                trackingService.findAllByApplicationWithTPAndValue("aig_fee_base", "fee_based_status", FeeBasedController.STATUS_PAYMENT_PENDING);
            processPaymentPending(trackingPaymentPending);
            long memEnd = GC.GetTotalMemory(false);
            log.Debug($">>>> GC.MEM - End__: {memEnd:N} Diff({memEnd-memStart:N})");

            memStart = memEnd;
            log.Debug($">>>> GC.MEM - Start: {memStart:N}");
            List<tracking> trackingTicketNumberError =
                trackingService.findAllByApplicationWithTPAndValue("aig_fee_base", "fee_based_status", FeeBasedController.STATUS_TICKET_NUMBER_ERROR);
            processTicketNumberError(trackingTicketNumberError);
            memEnd = GC.GetTotalMemory(false);
            log.Debug($">>>> GC.MEM - End__: {memEnd:N} Diff({memEnd - memStart:N})");
            
            memStart = memEnd;
            log.Debug($">>>> GC.MEM - Start: {memStart:N}");
            try
            {
                List<tracking> trackingTicketPendingError = trackingService.findAllByApplicationWithTPAndValue("aig_fee_base", "fee_based_status", FeeBasedController.STATUS_TICKET_LETTER_PENDING).FindAll(t => !String.IsNullOrEmpty(t.ticket_id));
                trackingTicketPendingError.AddRange(trackingService.findAllByApplicationWithTPAndValue("aig_fee_base", "fee_based_status", FeeBasedController.STATUS_TICKET_LETTER_ERROR));
             
                List<String> trackingSuccessPending = new List<String>();
                foreach (var item in trackingTicketPendingError)
                {
                    trackingSuccessPending.Add(item.tracking_property.FirstOrDefault(tp => tp.name.Equals("fee_based_tracking_id")).value);
                }

                trackingSuccessPending = trackingSuccessPending.Distinct().ToList();
                //No se procesan los padres de los tickets cancelados o expirados.
                List<tracking> trackingTicketCancelledExpired =
                    trackingTicketPendingError.FindAll(x => x.status == "letter_cancelled"
                    || DateTime.Parse(x.tracking_property.FirstOrDefault(tp => tp.name == "expiredate").value) < DateTime.Today).ToList();
                foreach (var item in trackingTicketCancelledExpired)
                {
                    trackingSuccessPending.Remove(item.tracking_property.FirstOrDefault(tp => tp.name.Equals("fee_based_tracking_id")).value);
                }

                processTicketError(trackingSuccessPending);
                memEnd = GC.GetTotalMemory(false);
                log.Debug($">>>> GC.MEM - End__: {memEnd:N} Diff({memEnd - memStart:N})");
            }
            catch (Exception e)
            {
                log.Error($"ERROR en PAYMENT_SUCCESS con tickets en PENDING o ERROR {e.StackTrace}");
            }
        }

        private void processTicketError(List<String> trackingSuccessPending)
        {
            log.Info($"Iniciando proceso de PAYMENT_SUCCESS con tickets en PENDING o ERROR: {trackingSuccessPending.Count} transacciones");

            foreach (var item in trackingSuccessPending)
            {
                try
                {
                    tracking track = trackingService.findById(long.Parse(item));
                    JObject context = JObject.Parse(track.CryptoData);
                    fbProcessHelper.processFeeBased(wsService, context, track.id, track.date);
                    log.Info($"{item} Se procesó exitosamente.");
                }
                catch (Exception e)
                {
                    log.Error($"ERROR en PAYMENT_SUCCESS con tickets en PENDING o ERROR {item}: {e.StackTrace}");
                }
            }
        }

        private void processPaymentPending(List<tracking> trackingPaymentPending)
        {
            int totalDays = staticParameter.getParameter("fb_payment_days_timeout") != null ? Int32.Parse(staticParameter.getParameter("fb_payment_days_timeout")) : 10;

            log.Info($"Iniciando proceso de PAYMENT_PENDING. Timeout: {totalDays} dias. A procesar: {trackingPaymentPending.Count} transacciones");

            foreach (tracking track in trackingPaymentPending)
            {
                if (track != null)
                {
                    JObject context = JObject.Parse(track.CryptoData);
                    try
                    {
                        fbProcessHelper.processFeeBased(wsService, context, track.id, track.date);

                        //log.Info($"Procesando transaccion {context["fee_based"]?["transaction_id"]} con fecha {track.date.ToString()}");

                        if (context["fee_based"]?["ticket_number_response"]?["type"].ToString() == FeeBasedProcessHelper.RESP_OK)
                        {
                            //Si tiene tickets se pasa a Payment_success
                            context["fee_based"]["status"] = FeeBasedController.STATUS_PAYMENT_SUCCESS;
                            log.Info($"{context["fee_based"]?["transaction_id"]} Se pasa a PAYMENT_SUCCESS. Se procesó exitosamente.");
                        }
                        else
                        {
                            //Si sigue en pending y pasaron x días se pasa a timeout, sino sigue en pending 

                            if ((DateTime.UtcNow - track.date).TotalDays >= totalDays)
                            {
                                context["fee_based"]["status"] = FeeBasedController.STATUS_PROCESS_TIMEOUT;
                                log.Info($"{context["fee_based"]?["transaction_id"]} Se pasa a PAYMENT_TIMEOUT_PROCESS. {(int)(DateTime.UtcNow - track.date).TotalDays} dias de iniciado");
                            }
                            else
                            {
                                log.Info($"{context["fee_based"]?["transaction_id"]} Sigue en STATUS_PAYMENT_PENDING. {(int)(DateTime.UtcNow - track.date).TotalDays} dias de iniciado");

                            }
                        }

                        if (context["fee_based"]["status"].ToString() != FeeBasedController.STATUS_PAYMENT_PENDING)
                        {
                            JArray trackingFields = applicationService.getTrackingFields(context);
                            trackingService.merge(context, trackingFields);
                        }
                    }
                    catch (Exception)
                    {
                        log.Info($"{context["fee_based"]?["transaction_id"]} ERROR al procesar");
                    }

                }
            }
        }


        private void processTicketNumberError(List<tracking> trackingTicketError)
        {

            log.Info($"Iniciando proceso de TICKET_NUMBER_ERROR. A procesar: {trackingTicketError.Count} transacciones");

            foreach (tracking track in trackingTicketError)
            {
                if (track != null)
                {
                    JObject context = JObject.Parse(track.CryptoData);
                    try
                    {
                        fbProcessHelper.processFeeBased(wsService, context, track.id, track.date);

                        if (context["fee_based"]?["ticket_number_response"]?["type"].ToString() == FeeBasedProcessHelper.RESP_OK)
                        {
                            //Si tiene tickets se pasa a Payment_success
                            context["fee_based"]["status"] = FeeBasedController.STATUS_PAYMENT_SUCCESS;
                            log.Info($"{context["fee_based"]?["transaction_id"]} Se pasa a PAYMENT_SUCCESS. Se procesó exitosamente.");
                        }
                        else
                        {
                            log.Info($"{context["fee_based"]?["transaction_id"]} Sigue en STATUS_TICKET_NUMBER_ERROR.");
                        }

                        if (context["fee_based"]["status"].ToString() != FeeBasedController.STATUS_TICKET_NUMBER_ERROR)
                        {
                            JArray trackingFields = applicationService.getTrackingFields(context);
                            trackingService.merge(context, trackingFields);
                        }
                    }
                    catch (Exception)
                    {
                        log.Info($"{context["fee_based"]?["transaction_id"]} ERROR al procesar");
                    }

                }
            }
        }


    }
}