using Common.Logging;
using InsuranceLetters.CustomControllers;
using InsuranceLetters.CustomServices;
using InsuranceLetters.WebStepHandlers;
using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.StaticTranslation;
using InsuranceLettersCommons.StepHandler;
using InsuranceLettersCommons.TO;
using InsuranceLettersCore.Services;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.Entity.Infrastructure;
using System.Globalization;
using System.Linq;
using System.Web;

namespace InsuranceLetters.CustomStepHandlers
{
    public class AccessStageDataHandler : StepHandler
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(CancellationHandler));
        

        public override JObject handleStep(JObject context)
        {
            try
            {
                var transactionContext = context["tickets_to_cancel"][0];
                AccessStageData accesStageData = new AccessStageData();
                string transactionId = (string)transactionContext["data"]["fee_based"]["sales_response"]["id"];
                string payerPassport = (string)context.SelectToken("$.input.fields[?(@.name=='LoginPassport')].values[0].value");
                string payerEmail = (string)context.SelectToken("$.input.fields[?(@.name=='LoginEmail')].values[0].value");
                context["fee_based"]= new JObject();
                context["fee_based"]["access_stage_pay_data"]=accesStageData.getAccessStagePayData(transactionId,payerEmail,payerPassport);
            }
            catch (Exception e)
            {
                log.Error(e.Message);
            }

            return context;
        }

        public override bool breakChain()
        {
            return false;
        }

    }
}