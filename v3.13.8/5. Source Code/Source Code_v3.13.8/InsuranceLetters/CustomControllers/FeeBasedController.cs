
using InsuranceLetters.CustomServices;
using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.TO;
using InsuranceLettersCore.Controllers.Base;
using InsuranceLettersCore.Services;
using log4net;
using Newtonsoft.Json.Linq;
using System;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web.Mvc;
using System.Web.Script.Serialization;

namespace InsuranceLetters.CustomControllers
{

    public class FeeBasedController : BaseViewController
    {
        public static string STATUS_IN_PROCESS = "IN_PROCESS";
        public static string STATUS_SALES_ERROR = "SALES_ERROR";

        public static string STATUS_PAYMENT_PENDING = "PAYMENT_PENDING";
        public static string STATUS_PAYMENT_SUCCESS = "PAYMENT_SUCCESS";
        public static string STATUS_PAYMENT_TIMEOUT = "PAYMENT_TIMEOUT";
        public static string STATUS_PAYMENT_ERROR = "PAYMENT_ERROR";

        public static string STATUS_PROCESS_TIMEOUT = "PAYMENT_TIMEOUT_PROCESS";
        public static string STATUS_TICKET_NUMBER_ERROR = "TICKET_NUMBER_ERROR";
       
        

        public static string STATUS_REFUND_PENDING = "REFUND_PENDING";
        public static string STATUS_REFUND_SUCCESS = "REFUND_SUCCESS";
        public static string STATUS_REFUND_ERROR = "REFUND_ERROR";
        public static string STATUS_CANCEL_ERROR = "CANCEL_ERROR";
        public static string STATUS_CANCEL_NOTIFICATION_ERROR = "CANCEL_NOTIFICATION_ERROR";
        public static string STATUS_CANCEL_NOTIFICATION_SUCCESS = "CANCEL_NOTIFICATION_SUCCESS";

        public static string STATUS_FINISH = "PROCESS_FINISH";

        public static string STATUS_TICKET_LETTER_PENDING = "TICKET_LETTER_PENDING";
        public static string STATUS_TICKET_LETTER_OK = "TICKET_LETTER_OK";
        public static string STATUS_TICKET_LETTER_ERROR = "TICKET_LETTER_ERROR";

        //private static string CIELO_SUCCESS_4 = "4";
        //private static string CIELO_SUCCESS_6 = "6";
        //private static string CIELO_TIMEOUT = "99";


        private static readonly ILog log = LogManager.GetLogger(typeof(FeeBasedController));

        private TrackingService trackingService;
        private ApplicationService applicationService;
        private FeeBasedProcessHelper fbProcessHelper;
        private EmailService emailService;
        private LinksService linksService;
        private InputParserService inputParserService;
        private WebServiceService wsService;

 

        public FeeBasedController()
        {
            trackingService = new TrackingService(this.db);
            applicationService = new ApplicationService(this.db);
            emailService = new EmailService(this.db);
            linksService = new LinksService(this.db);
            inputParserService = new InputParserService();
            wsService = new WebServiceService();
            fbProcessHelper = new FeeBasedProcessHelper(applicationService, trackingService, emailService, linksService, inputParserService, this.db);
        }

        [HttpPost]
        public ActionResult PostGetPlans([Bind] FeeBasedRequestTO to)
        {
            var request = "";
            try
            {
                FeeBasedResposeTO response = fbProcessHelper.getFeeBasedResposeTO(to);
                var jsonSerialiser = new JavaScriptSerializer();
                request = jsonSerialiser.Serialize(response);
                return Content(request.ToString(), "application/json");
            }
            catch (Exception e)
            {
                log.Error(e.Message, e);
                log.Debug(request);
                emailService.sendErrorMail(e);
            }
            return Content(request.ToString(), "application/json");
        }

        [HttpGet]
        public ActionResult GetFeeBasedStatus(string slug)
        {
            TrackingService trackingService = new TrackingService(this.db);
            tracking track = trackingService.findBySlug(slug);
            JObject feeBasedResult = new JObject();

            //string simulate_tickets = ConfigurationManager.AppSettings["SIMULATE_FB_PAYMENT_SUCCESS"];
            //bool simulate = (simulate_tickets != null && simulate_tickets == "true") ? true : false;

            if (track != null)
            {
                JObject transactionContext = JObject.Parse(track.CryptoData);
                feeBasedResult["fee_based_status"] = transactionContext["fee_based"]["status"];
                
                /*if (simulate && feeBasedResult["fee_based_status"].ToString() == STATUS_PAYMENT_PENDING)
                {
                     //Se guarda el STATUS_PAYMENT_SUCCESS para la simulacion 
                    transactionContext["fee_based"]["status"]= STATUS_PAYMENT_SUCCESS;
                    trackingService.mergeWithTP(transactionContext);
                }*/
            }
            else
            {
                feeBasedResult["fee_based_status"] = "NOT-FOUND";
            }

            return Content(feeBasedResult.ToString(), "application/json");
        }

        [HttpGet]
        public ActionResult GenerateCertificates(string slug)
        {
            JArray trackingFields = null;
            tracking track = trackingService.findBySlug(slug);
            JObject transactionContext = JObject.Parse(track.CryptoData);
            JObject feeBasedResult = new JObject();
            try
            {
                if ((string)transactionContext["fee_based"]["status"] == FeeBasedController.STATUS_PAYMENT_SUCCESS)
                {
                    feeBasedResult = fbProcessHelper.processFeeBased(wsService, transactionContext, track.id, track.date);
                }
            }
            catch (Exception e)
            {
                log.Error(e.Message, e);
                log.Debug(transactionContext.ToString());
                emailService.sendErrorMail(e, transactionContext);
            }
            finally
            {
                trackingFields = applicationService.getTrackingFields(transactionContext);
                trackingService.merge(transactionContext, trackingFields);
            }
            return Content(feeBasedResult.ToString(), "application/json");
        }

        [HttpPost]
        public ActionResult PostAccessStageCallback([Bind] FeeBasedAccessStageCallbackRequestTO to)
        {
            JObject context = null;
            Request.InputStream.Seek(0, SeekOrigin.Begin);
            var jsonSerialiser = new JavaScriptSerializer();
            string jsonStr = "";
            using (StreamReader sr = new StreamReader(Request.InputStream))
            {
                jsonStr = sr.ReadToEnd();
                //log.Debug(jsonStr);
            }

            FeeBasedAccessStageCallbackResponseTO response = new FeeBasedAccessStageCallbackResponseTO();

            try
            {
                response.code = "ACK";
                response.message = "Received";

                TrackingService trackingService = new TrackingService(this.db);
                ApplicationService applicationService = new ApplicationService(this.db);
                JArray trackingFields = null;

                tracking track = trackingService.findAllByApplicationWithTPAndValue("aig_fee_base", "fee_based_transaction_id", to.orderId).FirstOrDefault();

                if (track != null)
                {
                    context = JObject.Parse(track.CryptoData);

                string[] sucessCodes = ConfigurationManager.AppSettings["CIELO_SUCCESS_CODES"].Split(',');
                string[] timeoutCodes = ConfigurationManager.AppSettings["CIELO_TIMEOUT_CODES"].Split(',');

                if (sucessCodes.Contains(to.returnCode))
                {
                    context["fee_based"]["status"] = FeeBasedController.STATUS_PAYMENT_SUCCESS;
                }
                else if (timeoutCodes.Contains(to.returnCode))
                {
                    context["fee_based"]["status"] = FeeBasedController.STATUS_PAYMENT_TIMEOUT;
                }
                else
                {
                    context["fee_based"]["status"] = FeeBasedController.STATUS_PAYMENT_ERROR + "_" + to.returnCode;
                }

                var serialiser = new JavaScriptSerializer();
                context["fee_based"]["sales_callback"] = JObject.Parse(serialiser.Serialize(to));

                trackingFields = applicationService.getTrackingFields(context);
                track.CryptoData = context.ToString();
                trackingService.save(track, context, trackingFields);
                    LogUtils.AuditInfoAction(context);
                }
                else
                {
                    response.code = "ERROR";
                    response.message = "Not-Found";

                    emailService.sendErrorMail(jsonStr + jsonSerialiser.Serialize(response));
                }

            }
            catch (Exception e)
            {
                response.code = "ERROR";
                response.message = e.Message;
                log.Error(e.Message, e);
                emailService.sendErrorMail(e);
            }
            
            var json = jsonSerialiser.Serialize(response);
            return Content(json.ToString(), "application/json");

        }

    }
}
