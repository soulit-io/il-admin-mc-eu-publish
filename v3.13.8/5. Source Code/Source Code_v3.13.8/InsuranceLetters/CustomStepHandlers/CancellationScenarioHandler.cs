using InsuranceLetters.CustomControllers;
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
    public class CancellationScenarioHandler : StepHandler
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(CancellationScenarioHandler));

        public override JObject handleStep(JObject context)
        {
            context["cancellation_scenario_auto"] = isEscenarioAuto(context);
            return context;
        }

        public static bool isEscenarioAuto(JObject context)
        {
            CultureInfo provider = CultureInfo.InvariantCulture;

            string questionTrip = (string)context.SelectToken("$.input.fields[?(@.name=='questionTrip')].values[0].value");
            string questionAttendance = (string)context.SelectToken("$.input.fields[?(@.name=='questionAttendance')].values[0].value");
            var contextToCancel = context["tickets_to_cancel"][0]["data"];
            bool isAnnual = (string)contextToCancel["fee_based"]["plan"]["annual"].ToString().ToLower() == "true";
            DateTime departureDate = DateTime.ParseExact((string)contextToCancel["fee_based"]["sales_request"]["DepartureDate"].ToString(), "ddMMyyyy", provider);
            DateTime today = DateTime.Now;
            bool result = false;

            if ((!isAnnual && today < departureDate && questionAttendance.ToLower() == "no") || 
                (isAnnual && questionTrip.ToLower() == "no" && questionAttendance.ToLower() == "no"))
            {
                result = true;
            }
            else
            {
                result = false;
            }

            return result;
        }

        public override bool breakChain()
        {
            return false;
        }

    }
}