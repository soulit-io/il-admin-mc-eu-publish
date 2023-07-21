using InsuranceLetters.CustomControllers;
using InsuranceLettersCommons.Exceptions;
using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.TO;
using InsuranceLettersCore.Services;
using log4net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Text.RegularExpressions;

namespace InsuranceLetters.CustomServices
{
    public class FeeBasedProcessHelper
    {
        public static string EUR_EQUIV = "16";
        public static string USD_EQUIV = "4";

        public static string RESP_ERROR = "ERROR";
        public static string RESP_OK = "OK";

        private static string CLOSURE_STATUS = "Fechamento";

        private static readonly ILog log = LogManager.GetLogger(typeof(FeeBasedProcessHelper));

        ApplicationService applicationService;
        TrackingService trackingService;
        EmailService emailService;
        LinksService linksService;
        InputParserService inputParserService;
        InsuranceLettersEntities db;
        WebServiceService webServiceService;

        public FeeBasedProcessHelper(ApplicationService applicationServ,
                TrackingService trackingServ,
                EmailService emailServ,
                LinksService linksServ,
                InputParserService inputParserServ,
                InsuranceLettersEntities ildb
               )
        {
            applicationService = applicationServ;
            trackingService = trackingServ;
            emailService = emailServ;
            linksService = linksServ;
            inputParserService = inputParserServ;
            db = ildb;
            webServiceService = new WebServiceService();
        }

        public JObject processFeeBased(WebServiceService wsService, JObject transactionContext, long track_id, DateTime date)
        {

            //TrackingService trackingService = new TrackingService(this.db);
            JArray trackingFields = applicationService.getTrackingFields(transactionContext);

            string transactionStatus = transactionContext["fee_based"]?["status"]?.ToString();

            if (!(transactionContext["fee_based"]?["ticket_number_response"]?["type"].ToString() == RESP_OK))
            {
                transactionContext["fee_based"]["ticket_number_response"] = getTicketsIds(wsService, transactionContext);
            }
            if (transactionContext["fee_based"]?["ticket_number_response"]?["type"].ToString() == RESP_OK)
            {
                transactionContext["fee_based"]["status"] = FeeBasedController.STATUS_PAYMENT_SUCCESS;

                cleanTrackings(track_id);

                List<tracking> trackings = generateTrackings(transactionContext, trackingFields, track_id, date);
                foreach (tracking t in trackings)
                {
                    sendFeeBasedEmail(JObject.Parse(t.CryptoData), trackingFields);
                }
            }
            else
            {
                if (transactionStatus == FeeBasedController.STATUS_PAYMENT_SUCCESS)
                {
                    transactionContext["fee_based"]["status"] = FeeBasedController.STATUS_TICKET_NUMBER_ERROR;
                }

            }


            return new JObject();
        }

        private void cleanTrackings(long track_id)
        {
            try
            {
                List<tracking> trackingToClear = trackingService.findAllByApplicationWithTPAndValue("aig_fee_base", "fee_based_tracking_id", track_id.ToString());

                foreach (tracking tracking in trackingToClear)
                {
                    JObject context = JObject.Parse(tracking.CryptoData);

                    tracking.ticket_id = "";
                    tracking.status = "reset";

                    context["fee_based"] = null;
                    context["input"] = null;
                
                    JArray trackingFields = applicationService.getTrackingFields(context);
                    tracking.CryptoData = context.ToString();
                    trackingService.save(tracking, context, trackingFields);
  
                }
            }
            catch (Exception e)
            {
                log.Error(e.Message, e);
                emailService.sendErrorMail(e);

            }

        }

        private List<tracking> generateTrackings(JObject transactionContext, JArray trackingFields, long track_id, DateTime issuanceDate)
        {
            //TrackingService trackingService = new TrackingService(this.db);
            //InputParserService inputParserService = new InputParserService();
            Regex rgx = new Regex("[^a-zA-Z0-9]");
            List<tracking> trackings = new List<tracking>();

            //Todas las fechas van en format dd/MM/yyyy Excepto ExpireDateTP que es yyyy-MM-dd
            //que es que se utiliza para realizar cálculos
            CultureInfo provider = CultureInfo.InvariantCulture;
            DateTime expireDate = DateTime.ParseExact((string)transactionContext["fee_based"]["sales_request"]["TicketExpiryDate"], "ddMMyyyy", provider);
            string expireDateS = expireDate.ToString("dd/MM/yyyy");
            string expireDateTPS = expireDate.ToString("yyyy-MM-dd");

            //DateTime issuanceDate = DateTime.Now;
            string issuanceDateS = issuanceDate.ToString("dd/MM/yyyy HH:mm:ss");

            DateTime effectiveDate = DateTime.ParseExact((string)transactionContext["fee_based"]["sales_request"]["TicketEffectiveDate"], "ddMMyyyy", provider);
            string effectiveDateS = effectiveDate.ToString("dd/MM/yyyy");



            JObject fee_based_plan = (JObject)transactionContext.SelectToken("$.fee_based_plan");

            string planName = (String)fee_based_plan["plan_name"];

            int passengers = (int)fee_based_plan["passengers"];
            //Tengo que crear un contexto por pasajero
            for (int i = 0; i < passengers; i++)
            {
                JObject passengerContext = new JObject();

                passengerContext["fee_based"] = transactionContext["fee_based"];
                passengerContext["system"] = transactionContext["system"];
                passengerContext["system"]["slug"] = trackingService.buildSlug();

                passengerContext["benefit_info"] = transactionContext["benefit_info"];

                passengerContext["fee_based"]["status"] = FeeBasedController.STATUS_TICKET_LETTER_PENDING;
                passengerContext["fee_based"]["tracking_id"] = track_id;
                passengerContext = inputParserService.mergeInputField(passengerContext, transactionContext, "_" + (i + 1));

                passengerContext["fee_based"]["plan"] = fee_based_plan;

                passengerContext = inputParserService.mergeInputField(passengerContext, "ExpireDateTP", expireDateTPS);
                passengerContext = inputParserService.mergeInputField(passengerContext, "ExpireDate", expireDateS);
                passengerContext = inputParserService.mergeInputField(passengerContext, "IssuanceDate", issuanceDateS);
                passengerContext = inputParserService.mergeInputField(passengerContext, "EffectiveDate", effectiveDateS);


                passengerContext = inputParserService.mergeInputField(passengerContext, "PlanName", planName);


                string partyIdNumber = (string)passengerContext.SelectToken("$.input.fields[?(@.name=='Passport')].values[0].value");
                partyIdNumber = rgx.Replace(partyIdNumber, "");
                DateTime birthDate = DateTime.ParseExact((string)passengerContext.SelectToken("$.input.fields[?(@.name=='DateOfBirth')].values[0].value"), "yyyy-MM-dd", provider);
                string birthQry = birthDate.ToString("ddMMyyyy");
                string passengerEmail = (string)passengerContext.SelectToken("$.input.fields[?(@.name=='Email')].values[0].value");
                string email = passengerEmail;
                string payerEmail = "";

                if (transactionContext.SelectToken("$.input.fields[?(@.name=='PayerEmail')]") != null)
                {
                    payerEmail = (string)transactionContext.SelectToken("$.input.fields[?(@.name=='PayerEmail')].values[0].value");
                }

                if ((!string.IsNullOrEmpty(payerEmail)) && (!email.Equals(payerEmail)))
                {
                    email = email + "," + payerEmail;
                }
                passengerContext["system"]["email_to"] = email;
                passengerContext["system"]["email_to_name"] = email;
                JToken ticketNResponse = transactionContext["fee_based"]["ticket_number_response"];
                string ticketNumber = (string)ticketNResponse.SelectToken("$.listTicketNumberCustomer[?(@.partyIdNumber=='" + partyIdNumber + "' && @.birthDate=='" + birthQry + "')].ticketNumber");

                string simulate_tickets = ConfigurationManager.AppSettings["FB_RANDOM_TICKET_NUMBERS"];
                bool simulate = (simulate_tickets != null && simulate_tickets == "true") ? true : false;
                if (simulate)
                {
                    ticketNumber = "000000" + DateTime.Now.ToString("yyMMddhhmmssfff");
                }

                passengerContext["system"]["ticket_id"] = ticketNumber;

                passengerContext = inputParserService.mergeInputField(passengerContext, "qryEmail", passengerEmail);
                passengerContext = inputParserService.mergeInputField(passengerContext, "qryPassport", partyIdNumber);
                passengerContext = inputParserService.mergeInputField(passengerContext, "LoginEmail", passengerEmail);
                passengerContext = inputParserService.mergeInputField(passengerContext, "LoginPassport", partyIdNumber);

                tracking ticketTrack = trackingService.merge(passengerContext, trackingFields);

                //trackingService.save(ticketTrack);
                trackings.Add(ticketTrack);
            }

            return trackings;
        }

        public FeeBasedResposeTO getFeeBasedResposeTO(FeeBasedRequestTO to)
        {
            long rangeId = 0;

            CultureInfo provider = CultureInfo.InvariantCulture;
            if (to.dateFrom != null && to.dateFrom != "" && to.dateTo != null && to.dateTo != "")
            {
                DateTime dateTimeFrom = DateTime.ParseExact(to.dateFrom, "yyyy-MM-dd", provider);
                DateTime dateTimeTo = DateTime.ParseExact(to.dateTo, "yyyy-MM-dd", provider);
                to.days = (dateTimeTo - dateTimeFrom).TotalDays + 1;

                to.daysTrip = to.days;
                to.dateToTrip = to.dateTo;

                fee_based_range range = this.db.fee_based_range.Where(r => to.days >= r.range_from && to.days <= r.range_to).FirstOrDefault();
                rangeId = range != null ? range.id : 0;

                // Si no encuentra rango, se setea el maximo y la cantidad de dias correspondientes
                if (rangeId == 0)
                {
                    fee_based_range rangeMax = this.db.fee_based_range.OrderByDescending(x=> x.range_from).FirstOrDefault();
                    to.days = (double)rangeMax.range_to;
                    
                    dateTimeTo = DateTime.ParseExact(to.dateFrom, "yyyy-MM-dd", provider);
                    to.dateTo = dateTimeTo.AddDays(to.days - 1).ToString("yyyy-MM-dd");
                    rangeId = rangeMax.id;
                }

            }
  
            List<fee_based_plan_pricing> plans = null;

            if (to.planPricingId != null)
            {
                long pricingId = Convert.ToInt64(to.planPricingId);
                plans = this.db.fee_based_plan_pricing.Where
                  (pr => (pr.id == pricingId)).ToList();
            }
            else
            {
                plans = this.db.fee_based_plan_pricing.Where
                (pr => (pr.fee_based_region.code == to.region || pr.region_id == null)
                && (pr.range_id == rangeId || pr.range_id == null)
                && pr.fee_based_plan.country_code == to.countryCode
                && pr.fee_based_plan.fee_based_package.application.code == to.applicationCode
                && pr.fee_based_plan.annual == 0).ToList();

                List<fee_based_plan_pricing> annualPlans = this.db.fee_based_plan_pricing.Where
                (pr => (pr.fee_based_region.code == to.region || pr.region_id == null)
                && (pr.range_id == rangeId || pr.range_id == null)
                && pr.fee_based_plan.country_code == to.countryCode
                && pr.fee_based_plan.fee_based_package.application.code == to.applicationCode
                && pr.fee_based_plan.annual == 1).ToList();

                plans.AddRange(annualPlans);
            }
            FeeBasedResposeTO response = toTO(plans, to);
            return response;
        }




        private FeeBasedResposeTO toTO(List<fee_based_plan_pricing> plans, FeeBasedRequestTO to)
        {
            //FeeBasedProcessHelper fbProcessHelper = new FeeBasedProcessHelper(this.db);
            FeeBasedResposeTO response = new FeeBasedResposeTO();

            // Obtengo todos los codigos de monedas de los planes a mostrar
            fee_based_country_currency country_config = this.db.fee_based_country_currency.Where(cc => cc.country == to.countryCode).FirstOrDefault();

            string[] allCurrencyCodes = plans.Select(p => p.pricing_currency_code).Distinct().ToArray();
            Dictionary<string, decimal> allCurrencyPrices = this.GetExchangeRates(allCurrencyCodes, country_config.currency);

            response.plans = new List<FeeBasedResponsePlanTO>();
            foreach (fee_based_plan_pricing plan_pricing in plans)
            {
                FeeBasedResponsePlanTO plan = null;
                decimal cotiz;
                if (plan_pricing.pricing_currency_code == country_config.currency)
                {
                    plan = new FeeBasedResponsePlanTO(plan_pricing, to, 1, country_config);
                }
                else if (allCurrencyPrices.TryGetValue(plan_pricing.pricing_currency_code, out cotiz))
                {
                    if (cotiz == 0)
                    {
                        plan = null;
                        log.Error("cotizacion 0 para plan " + plan_pricing.plan_id);
                    }
                    else
                    {
                        plan = new FeeBasedResponsePlanTO(plan_pricing, to, cotiz, country_config);
                    }
                }
                else
                {
                    log.Error("No se pudo calcular el precio de " + plan_pricing.plan_id);
                }

                if (plan != null)
                {
                    response.plans.Add(plan);
                }
            }
            return response;
        }

        private void sendFeeBasedEmail(JObject context, JArray trackingFields)
        {
            try
            {
                linksService.buildLinks(context);
                emailService.sendLetterEmail(context);
                context["system"]["status"] = "letter_emailed";
                context["fee_based"]["status"] = FeeBasedController.STATUS_TICKET_LETTER_OK;
            }
            catch (Exception e)
            {
                context["system"]["status"] = "error";
                context["fee_based"]["status"] = FeeBasedController.STATUS_TICKET_LETTER_ERROR;
                context["system"]["ticket_id"] = "";

                log.Error(e.Message, e);
                emailService.sendErrorMail(e);
            }
            finally
            {
                trackingService.merge(context, trackingFields);
            }
        }

        public Dictionary<string, decimal> GetExchangeRates(string[] all_currency_codes, string countryCurrency)
        {
            Dictionary<string, decimal> currencies = new Dictionary<string, decimal>();
            foreach (var currency_code in all_currency_codes)
            {
                currencies.Add(currency_code, getExchangeRateBCBWs(currency_code,countryCurrency));
            }
            return currencies;
        }
        public decimal getExchangeRateBCBWs(string currency_code, string countryCurrency)
        {
            try
            {
                DateTime dataFinalCotacao = DateTime.Now;
                int exchangeRateWebServiceDaysToCheck = ConfigurationManager.AppSettings["ExchangeRateWebServiceDaysToCheck"] != null ? Convert.ToInt32(ConfigurationManager.AppSettings["ExchangeRateWebServiceDaysToCheck"]) : 30;
                DateTime dataInicial = dataFinalCotacao.AddDays(-exchangeRateWebServiceDaysToCheck);

                string rt;
                string url = $"{ConfigurationManager.AppSettings["ExchangeRateWebServiceURL_"+countryCurrency]}?@moeda=%27{currency_code}%27&@dataInicial=%27{dataInicial.ToString("MM-dd-yyyy")}%27&@dataFinalCotacao=%27{dataFinalCotacao.ToString("MM-dd-yyyy")}%27&$top=1000&$format=json";
                WebRequest request = WebRequest.Create(url);
                request.Method = "GET";
                
                request.ContentType = "application/json";

                WebResponse response = request.GetResponse();

                Stream dataStream = response.GetResponseStream();

                StreamReader reader = new StreamReader(dataStream);

                rt = reader.ReadToEnd();

                var parsedRt = JsonConvert.DeserializeObject<ExchangeRateTO>(rt);

                reader.Close();
                response.Close();

                return decimal.Parse(parsedRt.value.Where(x=>x.tipoBoletim== CLOSURE_STATUS).Last().cotacaoVenda, CultureInfo.InvariantCulture);
            }
            catch (Exception ex)
            {
                log.Debug(ex.Message);
                return 0;
            }
        }

        private JToken getTicketsIds(WebServiceService webServiceService, JObject transactionContext)
        {
            string ticketsWsUrl = ConfigurationManager.AppSettings["GenerateTicketNumberWebServiceURL"];

            JObject reqObject = new JObject();
            reqObject["Source"] = ConfigurationManager.AppSettings["GenerateTicketNumberWebServiceSource"];
            reqObject["Token"] = ConfigurationManager.AppSettings["GenerateTicketNumberWebServiceToken"];
            reqObject["IdTransaction"] = transactionContext["fee_based"]["transaction_id"];

            JToken response = webServiceService.post(ticketsWsUrl, reqObject);

            //string simulate_tickets = ConfigurationManager.AppSettings["SIMULATE_FB_PAYMENT_SUCCESS"];
            //bool simulate = (simulate_tickets != null && simulate_tickets == "true") ? true : false;

            //if (response["type"].ToString().ToLower() == RESP_ERROR.ToLower() && !simulate)
            //{
            //    throw new CustomException(response["text"].ToString());
            //}

            return response;
        }
    }
}