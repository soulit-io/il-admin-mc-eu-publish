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
    public class NotificationErrorCancellationJob : IJob
    {
        protected InsuranceLettersEntities db = new InsuranceLettersEntities();
        protected TrackingService trackingService;
        protected ApplicationService applicationService;
        protected EmailService emailService;
        protected StaticParameter staticParameter;
        protected LinksService linksService;
        protected InputParserService inputParserService;
        protected WebServiceService wsService;
        protected FeeBasedCancellationHelper fbCancellationHelper;

        private static readonly ILog log = LogManager.GetLogger("FeeBasedProcessPendingJob");

        public NotificationErrorCancellationJob()
        {
            trackingService = new TrackingService(this.db);
            applicationService = new ApplicationService(this.db);
            emailService = new EmailService(this.db);
            staticParameter = StaticParameter.getInstance(this.db);
            linksService = new LinksService(this.db);
            inputParserService = new InputParserService();
            wsService = new WebServiceService();
            fbCancellationHelper = new FeeBasedCancellationHelper(this.db);

        }

        public void Execute(IJobExecutionContext iJobExecutionContext)
        {
            long memStart = GC.GetTotalMemory(false);
            log.Debug($">>>> GC.MEM - Start: {memStart:N}");
            List<tracking> trackingNotificationError =
                trackingService.findAllByApplicationWithTPAndValue("aig_fee_base_cancellation", "fee_based_status", FeeBasedController.STATUS_CANCEL_NOTIFICATION_ERROR);
            processNotificationError(trackingNotificationError);
            long memEnd = GC.GetTotalMemory(false);
            log.Debug($">>>> GC.MEM - End__: {memEnd:N} Diff({memEnd-memStart:N})");
        }        

        private void processNotificationError(List<tracking> trackingNotificationError)
        {

            log.Info($"Iniciando proceso STATUS_CANCEL_NOTIFICATION_ERROR. A procesar: {trackingNotificationError.Count} transacciones");

            foreach (tracking track in trackingNotificationError)
            {
                if (track != null)
                {
                    JObject context = JObject.Parse(track.CryptoData);

                    fbCancellationHelper.notificationCancellation(context, emailService);
                    trackingService.mergeWithTP(context);

                }
            }
        }
    }
}