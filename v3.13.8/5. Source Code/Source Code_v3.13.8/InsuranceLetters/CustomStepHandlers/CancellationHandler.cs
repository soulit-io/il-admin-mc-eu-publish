using InsuranceLetters.CustomControllers;
using InsuranceLetters.CustomServices;
using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.StaticTranslation;
using InsuranceLettersCommons.StepHandler;
using InsuranceLettersCommons.TO;
using InsuranceLettersCore.Services;
using log4net;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;

namespace InsuranceLetters.WebStepHandlers
{
    public class CancellationHandler : StepHandler
    {       

        public override JObject handleStep(JObject context)
        {

            FeeBasedCancellationHelper feeBasedCancellationHelper = new FeeBasedCancellationHelper(this.db);
            EmailService emailService = new EmailService(this.db);
            var selectedTicketsToCancel = context.SelectToken("$.input.fields[?(@.name == 'selected_tickets_to_cancel')].values");
            List<string> selectedTicketsList = new List<string>();
            var listCustomer = context["tickets_to_cancel"][0]["data"]["fee_based"]["sales_request"]["ListCustomer"];

            foreach (var selectedTicketToCancel in selectedTicketsToCancel)
            {
                string tickeIdtString = selectedTicketToCancel["value"].ToString();
                selectedTicketsList.Add(tickeIdtString);
            }
            bool escenarioCancelacionAuto = context["cancellation_scenario_auto"].ToString().ToLower().Equals("false");


            feeBasedCancellationHelper.cancelTickets(context, selectedTicketsList, FeeBasedCancellationHelper.PAYER_PASSENGER_PARTY_TYPE, FeeBasedCancellationHelper.PAYER_NOT_PASSENGER_PARTY_TYPE, listCustomer, !escenarioCancelacionAuto);
            context["fee_based"] = new JObject();

            if (context["system"]["error"] != null) {

                feeBasedCancellationHelper.notificationCancellation(context, emailService);
            }
            return context;
        }

        public override bool breakChain()
        {
            return false;
        }

    }
}