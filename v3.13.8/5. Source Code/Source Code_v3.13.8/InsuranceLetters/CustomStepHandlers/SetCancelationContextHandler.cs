using log4net;
using InsuranceLettersCommons.StepHandler;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json.Linq;
using InsuranceLettersCore.Services;
using InsuranceLettersCommons.Model;
using System.Data.Entity.Core.Mapping;
using System.Web.Helpers;
using DocumentFormat.OpenXml.Wordprocessing;
using InsuranceLetters.CustomTO;
using System.Web.Script.Serialization;

namespace InsuranceLetters.WebStepHandlers
{
    public class SetCancelationContextHandler : StepHandler
    {
        //
        // GET: /GetPayerHandler/

        private static readonly ILog log = LogManager.GetLogger(
            typeof(SetCancelationContextHandler)
        );

        public override JObject handleStep(JObject context)
        {
            TrackingService trackingService = new TrackingService(this.db);
            //recibe/devuelve contexto con datos de payer

            if (context["tickets_to_cancel"] != null)
            {
                context.Remove("tickets_to_cancel");
            }

            if (context["params"] != null)
            {
                context["params"]["ticket_to_cancel"] = "";
                context["params"]["transaction_to_cancel"] = "";
            }

            JObject con = context;

            string ticketToCancel = (string)
                context.SelectToken(
                    "$.input.fields[?(@.name=='ticket_to_cancel')].values[0].value"
                );
            string transactionToCancel = (string)
                context.SelectToken(
                    "$.input.fields[?(@.name=='transaction_to_cancel')].values[0].value"
                );

            List<string> ticketList = new List<string>();
            log.Debug("ticketToCancel" + ticketToCancel);
            log.Debug("transactionToCancel" + transactionToCancel);

            context["cancellation_transaction"] = false;

            if (!String.IsNullOrEmpty(ticketToCancel) && String.IsNullOrEmpty(transactionToCancel))
            {
                ticketList.Add(ticketToCancel);
            }

            if (!String.IsNullOrEmpty(transactionToCancel))
            {
                context["cancellation_transaction"] = true;

                List<tracking_property> feeBasedTrackingIdList = db.tracking_property
                    .Where(
                        tp =>
                            (tp.value == transactionToCancel)
                            && (tp.name.Equals("fee_based_tracking_id"))
                    )
                    .ToList();

                foreach (
                    var trackingId in feeBasedTrackingIdList.Select(tid => tid.tracking_id).ToList()
                )
                {
                    ticketList.Add(
                        (string)
                            db.tracking
                                .Where(tr => tr.id.Equals(trackingId))
                                .Select(tr => tr.ticket_id)
                                .FirstOrDefault()
                    );
                }
            }
            //con["tickets_to_cancel"] = Json.Encode(ticketList);

            JArray ticketToCancelList = new JArray();
            foreach (string tick in ticketList)
            {
                JObject ticketToCancelTO = new JObject();
                var tracking = db.tracking.Where(tr => tr.ticket_id.Equals(tick)).FirstOrDefault();
                ticketToCancelTO["tracking_id"] = tracking.id;
                ticketToCancelTO["ticket_number"] = tracking.ticket_id;
                ticketToCancelTO["status"] = tracking.status;
                ticketToCancelTO["data"] = JObject.Parse(tracking.CryptoData);
                ticketToCancelTO["date"] = tracking.date;
                ticketToCancelList.Add(ticketToCancelTO);
            }

            //encontrar  tdatos a partir de ticket o transacción
            con["tickets_to_cancel"] = ticketToCancelList;

            return con;
        }

        public override bool breakChain()
        {
            return false;
        }
    }
}
