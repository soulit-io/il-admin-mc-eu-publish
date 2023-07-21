
using InsuranceLetters.CustomControllers;
using InsuranceLetters.CustomServices;
using InsuranceLettersCommons.StepHandler;
using InsuranceLettersCommons.TO;
using log4net;
using Newtonsoft.Json.Linq;
using System;
using System.Web.Script.Serialization;

namespace InsuranceLetters.WebStepHandlers
{
    public class PlanSelectHandler : StepHandler
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(PlanSelectHandler));
        private FeeBasedProcessHelper fbProcessHelper;
        private InsuranceLettersCore.Services.EmailService emailService;

        public override JObject handleStep(JObject context)
        {
            emailService = new InsuranceLettersCore.Services.EmailService(this.db);
            try
            {
                fbProcessHelper = new FeeBasedProcessHelper(null, null, null, null, null, this.db);
                FeeBasedRequestTO feeBasedRequestTO = new FeeBasedRequestTO();
                string fee_based_selected_plan_pricing = (string)context.SelectToken("$.input.fields[?(@.name == 'fee_based_selected_plan_pricing')].values[0].value");
                feeBasedRequestTO.planPricingId = fee_based_selected_plan_pricing;
                feeBasedRequestTO.passengers = (int)context.SelectToken("$.input.fields[?(@.name == 'travelersNumber')].values[0].value");
                feeBasedRequestTO.dateFrom = (string)context.SelectToken("$.input.fields[?(@.name == 'DepartureDate')].values[0].value");
                feeBasedRequestTO.dateTo = (string)context.SelectToken("$.input.fields[?(@.name == 'ReturnDate')].values[0].value");
                feeBasedRequestTO.countryCode = (string)context.SelectToken("$.benefit_info.GetBenefitInformationResult.ICACountry");
                feeBasedRequestTO.productCD = (string)context.SelectToken("$.benefit_info.GetBenefitInformationResult.Products.Product.ProductCd");
                FeeBasedResposeTO feeBasedResposeTO = fbProcessHelper.getFeeBasedResposeTO(feeBasedRequestTO);
                var serialiser = new JavaScriptSerializer();
                context["fee_based_plan"] = JObject.Parse(serialiser.Serialize(feeBasedResposeTO.plans[0]));

            }
            catch (Exception e)
            {
                context["system"]["error"] = FeeBasedController.STATUS_SALES_ERROR;
                log.Error(e.Message, e);
                //log.Debug(context.ToString());
                emailService.sendErrorMail(e);
            }
            return context;
        }

        public override bool breakChain()
        {
            return false;
        }
    }
}