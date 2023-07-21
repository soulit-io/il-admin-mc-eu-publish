using InsuranceLettersCore.Controllers.Base;
using InsuranceLettersCore.Services;
using InsuranceLettersCommons.Exceptions;
using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.StaticTranslation;
using InsuranceLettersCommons.TO;
using log4net;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using InsuranceLetters.CustomServices;
using Antlr.Runtime;

namespace InsuranceLettersCore.Controllers
{
    public class PayerTransactionController : BaseViewController
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(PayerTransactionController));
        private TrackingService trackingService;

        [HttpPost]
        public ActionResult PostCheckIfPayer([Bind] TicketFinderTO to)
        {
            trackingService = new TrackingService(this.db);

            PayerTransactionService service = new PayerTransactionService(null, null, null, null, null, this.db);
            ApplicationService applicationService = new ApplicationService(this.db);
            StaticTranslator translator = StaticTranslator.getInstance(this.db);
            List<List<KeyValuePair<string, List<string>>>> responseFieldsList = new List<List<KeyValuePair<string, List<string>>>>();
            HashSet<string> apps = new HashSet<string>();
            JObject currentContext;

            try
            {
                currentContext = this.getCurrentContext(null);
            }
            catch (Exception e)
            {
                log.Error(e);
                return new HttpStatusCodeResult(HttpStatusCode.InternalServerError, MissingSlugException.KEY);
            }
            try
            {
                var request = service.checkIfPayer(currentContext);

                trackingService.merge(currentContext);
                return Content(request.ToString(), "application/json");

            }
            catch (Exception e)
            {
                log.Error(e);
                return new HttpStatusCodeResult(HttpStatusCode.InternalServerError, e.Message);
            }
        }

            [HttpPost]
        public ActionResult PostFindPayerTransaction([Bind] TicketFinderTO to)
        {
            trackingService = new TrackingService(this.db);

            PayerTransactionService service = new PayerTransactionService(null, null, null, null, null, this.db);
            ApplicationService applicationService = new ApplicationService(this.db);
            StaticTranslator translator = StaticTranslator.getInstance(this.db);
            List<List<KeyValuePair<string, List<string>>>> responseFieldsList = new List<List<KeyValuePair<string, List<string>>>>();
            HashSet<string> apps = new HashSet<string>();
            JObject currentContext;

            try
            {
                currentContext = this.getCurrentContext(null);
            }
            catch (Exception e)
            {
                log.Error(e);
                return new HttpStatusCodeResult(HttpStatusCode.InternalServerError, MissingSlugException.KEY);
            }
            try
            {
                var request = service.getPayerTransactionIds(currentContext);

                trackingService.merge(currentContext);
                return Content(request.ToString(), "application/json");

            }
            catch (Exception e)
            {
                log.Error(e);
                return new HttpStatusCodeResult(HttpStatusCode.InternalServerError, e.Message);
            }

        }
        public ActionResult TicketsFromTransaction(string transaction)
        {
            trackingService = new TrackingService(this.db);

            PayerTransactionService service = new PayerTransactionService(null, null, null, null, null, this.db);
            ApplicationService applicationService = new ApplicationService(this.db);
            StaticTranslator translator = StaticTranslator.getInstance(this.db);
            List<List<KeyValuePair<string, List<string>>>> responseFieldsList = new List<List<KeyValuePair<string, List<string>>>>();
            HashSet<string> apps = new HashSet<string>();
            JObject currentContext;

            try
            {
                currentContext = this.getCurrentContext(null);
            }
            catch (Exception e)
            {
                log.Error(e);
                return new HttpStatusCodeResult(HttpStatusCode.InternalServerError, MissingSlugException.KEY);
            }
            try
            {
                var request = service.getTicketsFromTransaction(transaction);

                trackingService.merge(currentContext);
                return Content(request.ToString(), "application/json");

            }
            catch (Exception e)
            {
                log.Error(e);
                return new HttpStatusCodeResult(HttpStatusCode.InternalServerError, e.Message);
            }
        }

        public ActionResult GetTransactionData(string transaction)
        {
            //Esto se está usando?
             return Json("", JsonRequestBehavior.AllowGet);
            /*
            TrackingService service = new TrackingService(this.db);
            ApplicationService applicationService = new ApplicationService(this.db);

            try
            {
                JObject currentContext = this.getCurrentContext(null);
                long transTrackId = long. Parse(transaction);
                tracking transactionToCancelTracking = db.tracking.Where(t => t.id == transTrackId).FirstOrDefault();
               
                //currentContext["system"]["transaction_to_cancel_0"]["fee_based"] = JObject.Parse(transactionToCancelTracking.CryptoData)["fee_based"];
                                
                currentContext["fee_based_cancellation"] = new JObject();
                currentContext["fee_based_cancellation"]["fee_based_transaction"] = JObject.Parse(transactionToCancelTracking.CryptoData)["fee_based"]["sales_callback"];
                
                service.merge(currentContext);

                return Json(currentContext, JsonRequestBehavior.AllowGet);

            }
            catch (Exception e)
            {
                log.Error(e);
                return new HttpStatusCodeResult(HttpStatusCode.InternalServerError, "ERR_UNKNOWN");
            }
            */
            /*
            JObject context = new JObject();
            List<KeyValuePair<string, List<string>>> responseFields = new List<KeyValuePair<string, List<string>>>();

            foreach (tracking track in trackingList)
            {

                if (track == null)
                    return new HttpStatusCodeResult(HttpStatusCode.NoContent);

                context = JObject.Parse(track.CryptoData);

                if (context == null)
                    return new HttpStatusCodeResult(HttpStatusCode.NoContent);
                JToken inputs = context["input"];
                if (inputs == null)
                    return new HttpStatusCodeResult(HttpStatusCode.NoContent);

                JArray fields = (JArray)context["input"]["fields"];
                if (fields == null)
                    return new HttpStatusCodeResult(HttpStatusCode.NoContent);

                application app = applicationService.findByCode(track.application);
                JArray jCancelationFields = JArray.Parse(app.cancelation_fields);
                List<string> cancelationFields = new List<string>();
                foreach (JToken field in jCancelationFields)
                    cancelationFields.Add((string)field);


                foreach (JToken field in fields)
                {
                    string name = (string)field["name"];
                    List<string> values = new List<string>();

                    if (!cancelationFields.Contains(name))
                        continue;

                    JArray jvalues = (JArray)field["values"];
                    if (jvalues != null)
                    {
                        foreach (JToken value in jvalues)
                        {
                            values.Add((string)value["value"]);
                        }
                    }
                    responseFields.Add(new KeyValuePair<string, List<string>>(name, values));
                }
                string transactionToCancel = "transaction_to_cancel_" + trackingList.IndexOf(track).ToString();
                */


        }

    }
}
