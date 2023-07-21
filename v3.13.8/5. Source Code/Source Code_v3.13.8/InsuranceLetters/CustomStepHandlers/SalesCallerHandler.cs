using InsuranceLetters.CustomControllers;
using InsuranceLettersCommons.Crypto;
using InsuranceLettersCommons.Exceptions;
using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.StepHandler;
using InsuranceLettersCommons.TO;
using InsuranceLettersCore.Services;
using log4net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Web.Script.Serialization;

namespace InsuranceLetters.WebStepHandlers
{
    public class SalesCallerHandler : StepHandler
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(SalesCallerHandler));

        private EmailService emailService;

        public override JObject handleStep(JObject context)
        {
            emailService = new EmailService(this.db);
            SalesRequestTO salesRequestTO = createRequestTO(context);
            var jsonSerialiser = new JavaScriptSerializer();

            try
            {
                if (context["fee_based"] != null && context["fee_based"]["sales_request"]!=null)
                {
                    if (context["fee_based"]["status"] != null)
                    {
                        // Si ya se obtuvo confirmación del pago,
                        // ó ya se realizó la misma llamada anteriormente NO se llama a Sales
                        if (context["fee_based"]["status"].ToString() == FeeBasedController.STATUS_PAYMENT_SUCCESS
                            || context["fee_based"]["sales_request"].ToString() == JObject.Parse(jsonSerialiser.Serialize(salesRequestTO)).ToString())
                        {
                            return context;
                        }

                    }
                }
                context["fee_based"] = new JObject();

                SalesResponseTO salesResponseTO = callWS(salesRequestTO);

                context["fee_based"]["sales_request"] = JObject.Parse(jsonSerialiser.Serialize(salesRequestTO));
                context["fee_based"]["sales_response"] = JObject.Parse(jsonSerialiser.Serialize(salesResponseTO));

                if (salesResponseTO.id == null)
                {
                    context["fee_based"]["status"] = FeeBasedController.STATUS_SALES_ERROR;
                    emailService.sendErrorMail(new CustomException("SALES_ERROR SALES"), context);
                    log.Error("SALES_ERROR");
                    log.Debug(jsonSerialiser.Serialize(salesRequestTO));
                    log.Debug(jsonSerialiser.Serialize(salesResponseTO));
                }
                else
                {
                    context["fee_based"]["status"] = FeeBasedController.STATUS_PAYMENT_PENDING;
                    context["fee_based"]["transaction_id"] = salesResponseTO.id;
                }
            }
            catch (Exception e)
            {
                context["fee_based"]["status"] = FeeBasedController.STATUS_SALES_ERROR;
                context["system"]["error"] = e.Message;
                log.Error(e.Message, e);
                //log.Debug(context.ToString());
                emailService.sendErrorMail(e, context);
            }
            LogUtils.AuditInfoAction(context);
            return context;
        }

        private SalesResponseTO callWS(SalesRequestTO salesRequestTO)
        {
            WebServiceService webServiceService = new WebServiceService();
            SalesResponseTO response = new SalesResponseTO();
            string salesWsUrl = ConfigurationManager.AppSettings["SalesWebServiceURL"];
            JToken resp = webServiceService.post(salesWsUrl, JObject.FromObject(salesRequestTO));
            response = JsonConvert.DeserializeObject<SalesResponseTO>(resp.ToString());
            return response;

        }

        private SalesRequestTO createRequestTO(JObject context)
        {

            CultureInfo provider = CultureInfo.InvariantCulture;
            SalesRequestTO salesRequestTO = new SalesRequestTO();
            JObject fee_based_plan = (JObject)context.SelectToken("$.fee_based_plan");

            string country = ((string)fee_based_plan["country_code"]);

            fee_based_country_currency country_config = this.db.fee_based_country_currency.Where(cc => cc.country == country).FirstOrDefault();

            salesRequestTO.Source = ConfigurationManager.AppSettings["SalesWebServiceSource"];
            salesRequestTO.Token = ConfigurationManager.AppSettings["SalesWebServiceToken"];
            salesRequestTO.TotalPremium = (string)fee_based_plan["total_price"];
            salesRequestTO.Exchangerate = (string)fee_based_plan["convertion_rate"];
            salesRequestTO.PaymentPlan = "1";
            salesRequestTO.PaymentMode = "3";
            salesRequestTO.BankNumber = "";
            salesRequestTO.BankAgency = "";
            salesRequestTO.BankAccount = "";
            salesRequestTO.TripType = "1";
            salesRequestTO.OriginState = "";
            salesRequestTO.DestinationState = "";
            salesRequestTO.DepartureDate = (string)fee_based_plan["date_from"];

            bool annual = ((string)fee_based_plan["annual"] == "True");

            salesRequestTO.SalesDate = DateTime.Now.ToString("ddMMyyyy");
            salesRequestTO.TicketEffectiveDate = DateTime.Now.ToString("ddMMyyyy");

            if (annual)
            {
                salesRequestTO.DepartureDate = salesRequestTO.TicketEffectiveDate;
                salesRequestTO.TicketExpiryDate = DateTime.Now.AddYears(1).AddDays(-1).ToString("ddMMyyyy");
                salesRequestTO.ReturnDate = salesRequestTO.TicketExpiryDate;
            }
            else
            {
                salesRequestTO.DestinationCountries = (string)fee_based_plan["region"]["code"];
                if (fee_based_plan["date_from"] != null)
                {
                    DateTime departureDate = DateTime.ParseExact((string)fee_based_plan["date_from"], "yyyy-MM-dd", provider);
                    salesRequestTO.DepartureDate = departureDate.ToString("ddMMyyyy");
                }
                if (fee_based_plan["date_to"] != null)
                {
                    DateTime returnDate = DateTime.ParseExact((string)fee_based_plan["date_to"], "yyyy-MM-dd", provider);
                    salesRequestTO.ReturnDate = returnDate.ToString("ddMMyyyy");
                    salesRequestTO.TicketExpiryDate = returnDate.ToString("ddMMyyyy");
                }
            }


            salesRequestTO.NumberOfDays = (string)fee_based_plan["days"];
            salesRequestTO.PlanName = (string)fee_based_plan["plan_pricing_id"];
            salesRequestTO.InsuredAmountCurrency = (string)fee_based_plan["currency_code"];
            salesRequestTO.ListCustomer = new List<SalesRequestCustomerTO>();

            int passengers = (int)fee_based_plan["passengers"];
            var passengerAsPayerCheck = (string)context.SelectToken("$.input.fields[?(@.name=='passengerAsPayerCheck')].values[0].value");
            var payerPartyIdNumber = (string)context.SelectToken("$.input.fields[?(@.name=='PayerPassport')].values[0].value");
            var payerFound = false;

            for (int i = 0; i < passengers; i++)
            {
                SalesRequestCustomerTO customer = new SalesRequestCustomerTO();


                //customer.PartyType = (i == 0) ? "1" : "2";
                var isCPF = (string)context.SelectToken("$.input.fields[?(@.name=='IsCPF_" + (i + 1) + "')].values[0].value");
                customer.PartyIdType = (isCPF == "true") ? "03" : "16";

                var partyIdNumber = (string)context.SelectToken("$.input.fields[?(@.name=='Passport_" + (i + 1) + "')].values[0].value");
                if ((payerPartyIdNumber == partyIdNumber) && (!payerFound))
                {
                    customer.PartyType = "1";
                    payerFound = true;
                }
                else
                {
                    customer.PartyType = "2";
                }

                customer.PartyIdNumber = RijndaelCrypto.encrypt((string)context.SelectToken("$.input.fields[?(@.name=='Passport_" + (i + 1) + "')].values[0].value"));

                string partyName = (string)context.SelectToken("$.input.fields[?(@.name=='FirstName_" + (i + 1) + "')].values[0].value");
                customer.PartyName = RijndaelCrypto.encrypt(WebUtility.HtmlDecode(partyName));

                string partyLastName = (string)context.SelectToken("$.input.fields[?(@.name=='LastName_" + (i + 1) + "')].values[0].value");
                customer.PartyLastName = RijndaelCrypto.encrypt(WebUtility.HtmlDecode(partyLastName));

                string address = (string)context.SelectToken("$.input.fields[?(@.name=='Address_" + (i + 1) + "')].values[0].value");
                customer.Address = WebUtility.HtmlDecode(address);

                customer.DoorNumber = (string)context.SelectToken("$.input.fields[?(@.name=='DoorNumber_" + (i + 1) + "')].values[0].value"); ;

                string complement = (string)context.SelectToken("$.input.fields[?(@.name=='DescripcionAdicional_" + (i + 1) + "')].values[0].value");
                customer.Complement = WebUtility.HtmlDecode(complement);

                string neighborhood = (string)context.SelectToken("$.input.fields[?(@.name=='Neighborhood_" + (i + 1) + "')].values[0].value");
                customer.Neighborhood = WebUtility.HtmlDecode(neighborhood);

                string city = (string)context.SelectToken("$.input.fields[?(@.name=='City_" + (i + 1) + "')].values[0].value");
                customer.City = WebUtility.HtmlDecode(city);

                customer.ZIP = (string)context.SelectToken("$.input.fields[?(@.name=='ZipCode_" + (i + 1) + "')].values[0].value");
                customer.State = (string)context.SelectToken("$.input.fields[?(@.name=='State_" + (i + 1) + "')].values[0].value"); ;

                DateTime birthDate = DateTime.ParseExact((string)context.SelectToken("$.input.fields[?(@.name=='DateOfBirth_" + (i + 1) + "')].values[0].value"), "yyyy-MM-dd", provider);
                customer.BirthDate = birthDate.ToString("ddMMyyyy");

                customer.MaritalStatus = "O";
                customer.Email = (string)context.SelectToken("$.input.fields[?(@.name=='Email_" + (i + 1) + "')].values[0].value");
                customer.ContactDDD = (string)context.SelectToken("$.input.fields[?(@.name=='Telephone1_" + (i + 1) + "')].values[0].value");
                customer.ContactPhone = (string)context.SelectToken("$.input.fields[?(@.name=='Telephone2_" + (i + 1) + "')].values[0].value");
                customer.ContactMobile = customer.ContactDDD + customer.ContactPhone;
                customer.ListCoverage = new List<SalesRequestCoverageTO>();

                JArray coveragesArray = (JArray)fee_based_plan["benefits"];

                JToken last = coveragesArray.Last();
                decimal sum = 0;

                foreach (JToken cov in coveragesArray)
                {
                    SalesRequestCoverageTO coverage = new SalesRequestCoverageTO();

                    coverage.CoverageCode = (string)cov["benefit_code"];
                    coverage.CoverageSI = (string)cov["occur_max_amt"]; // occur_max_amount

                    decimal distributionC = decimal.Parse((string)cov["distribution"], CultureInfo.GetCultureInfo(country_config.specificCulture));
                    decimal unitPrice = decimal.Parse((string)fee_based_plan["unit_price"], CultureInfo.GetCultureInfo(country_config.specificCulture));


                    decimal covPremium = (distributionC * unitPrice) / 100;

                    if (cov == last)
                    {
                        covPremium = unitPrice - sum;
                    }
                    else
                    {
                        sum += covPremium;
                    }

                    coverage.CoveragePremium = covPremium.ToString("F5", CultureInfo.CreateSpecificCulture(country_config.specificCulture));

                    customer.ListCoverage.Add(coverage);
                }
                salesRequestTO.ListCustomer.Add(customer);

            }

            if (!String.IsNullOrEmpty(passengerAsPayerCheck) && (passengerAsPayerCheck == "on") && !payerFound)
            {
                SalesRequestCustomerTO customer = new SalesRequestCustomerTO();
                customer.PartyIdType = "03"; // TODO 16 si es passport (i == 0) ?"03":"16";

                string partyIdNumber = (string)context.SelectToken("$.input.fields[?(@.name=='PayerPassport')].values[0].value");
                customer.PartyIdNumber = RijndaelCrypto.encrypt(WebUtility.HtmlDecode(partyIdNumber));

                customer.PartyType = "3";

                string partyName = (string)context.SelectToken("$.input.fields[?(@.name=='PayerFirstName')].values[0].value");
                customer.PartyName = RijndaelCrypto.encrypt(WebUtility.HtmlDecode(partyName));

                string partyLastName = (string)context.SelectToken("$.input.fields[?(@.name=='PayerLastName')].values[0].value");
                customer.PartyLastName = RijndaelCrypto.encrypt(WebUtility.HtmlDecode(partyLastName));

                string address = (string)context.SelectToken("$.input.fields[?(@.name=='PayerAddress')].values[0].value");
                customer.Address = WebUtility.HtmlDecode(address);

                customer.DoorNumber = (string)context.SelectToken("$.input.fields[?(@.name=='PayerDoorNumber')].values[0].value"); ;

                string complement = (string)context.SelectToken("$.input.fields[?(@.name=='PayerDescripcionAdicional')].values[0].value");
                customer.Complement = WebUtility.HtmlDecode(complement);

                string neighborhood = (string)context.SelectToken("$.input.fields[?(@.name=='PayerNeighborhood')].values[0].value");
                customer.Neighborhood = WebUtility.HtmlDecode(neighborhood);

                string city = (string)context.SelectToken("$.input.fields[?(@.name=='PayerCity')].values[0].value");
                customer.City = WebUtility.HtmlDecode(city);

                customer.ZIP = (string)context.SelectToken("$.input.fields[?(@.name=='PayerZipCode')].values[0].value");
                customer.State = (string)context.SelectToken("$.input.fields[?(@.name=='PayerState')].values[0].value"); ;

                DateTime birthDate = DateTime.ParseExact((string)context.SelectToken("$.input.fields[?(@.name=='PayerDateOfBirth')].values[0].value"), "yyyy-MM-dd", provider);
                customer.BirthDate = birthDate.ToString("ddMMyyyy");

                customer.MaritalStatus = "O";
                customer.Email = (string)context.SelectToken("$.input.fields[?(@.name=='PayerEmail')].values[0].value");
                customer.ContactDDD = (string)context.SelectToken("$.input.fields[?(@.name=='PayerTelephone1')].values[0].value");
                customer.ContactPhone = (string)context.SelectToken("$.input.fields[?(@.name=='PayerTelephone2')].values[0].value");
                customer.ContactMobile = customer.ContactDDD + customer.ContactPhone;
                salesRequestTO.ListCustomer.Add(customer);
            }

            return salesRequestTO;
        }

        public override bool breakChain()
        {
            return false;
        }
    }
}