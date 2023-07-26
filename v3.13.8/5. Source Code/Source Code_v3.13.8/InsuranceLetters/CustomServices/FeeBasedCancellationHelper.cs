using InsuranceLetters.CustomControllers;
using InsuranceLettersCommons.Exceptions;
using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.StaticTranslation;
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
    public class FeeBasedCancellationHelper
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(FeeBasedCancellationHelper));
        public static string PAYER_PASSENGER_PARTY_TYPE = "1";
        public static string PAYER_NOT_PASSENGER_PARTY_TYPE = "3";
        InsuranceLettersEntities db;


        public FeeBasedCancellationHelper(InsuranceLettersEntities ildb)
        {
            db = ildb;
        }
        public void notificationCancellation(JObject context, EmailService emailService)
        {
          
                context["fee_based"]["status"] = FeeBasedController.STATUS_CANCEL_NOTIFICATION_SUCCESS;
                bool escenarioCancelacionAuto = context["cancellation_scenario_auto"].ToString().ToLower().Equals("true");
                var selectedTicketsToCancel = context.SelectToken("$.input.fields[?(@.name == 'selected_tickets_to_cancel')].values");
                List<string> selectedTicketsList = new List<string>();
                var listCustomer = context["tickets_to_cancel"][0]["data"]["fee_based"]["sales_request"]["ListCustomer"];


                foreach (var selectedTicketToCancel in selectedTicketsToCancel)
                {
                    string tickeIdtString = selectedTicketToCancel["value"].ToString();
                    selectedTicketsList.Add(tickeIdtString);
                }

                if (escenarioCancelacionAuto)
                {
                    JToken request = generateRequest(context, selectedTicketsList);
                    context["fee_based"]["cancellation_request"] = request;
                    try
                    {
                        JToken response = callWS(request);

                        if (response != null)
                        {
                            log.Debug("--Response Text--");
                            log.Debug(response["text"].ToString());
                            context["fee_based"]["cancellation_response"] = response;

                            mailCancelTickets(context, emailService, selectedTicketsList, PAYER_PASSENGER_PARTY_TYPE, PAYER_NOT_PASSENGER_PARTY_TYPE, listCustomer, false);
                            
                        }
                        else
                        {
                            context["fee_based"]["status"] = FeeBasedController.STATUS_CANCEL_NOTIFICATION_ERROR;
                        }
                    }
                    catch (Exception e)
                    {
                        context["fee_based"]["status"] = FeeBasedController.STATUS_CANCEL_NOTIFICATION_ERROR;
                        log.Error(e.Message, e);
                        emailService.sendErrorMail(e);
                    }
                }
                else
                {
                    try
                    {
                        mailCancelTickets(context, emailService, selectedTicketsList, PAYER_PASSENGER_PARTY_TYPE, PAYER_NOT_PASSENGER_PARTY_TYPE, listCustomer, true);
                    }
                    catch (Exception e)
                    {
                        context["fee_based"]["status"] = FeeBasedController.STATUS_CANCEL_NOTIFICATION_ERROR;

                        log.Error(e.Message, e);
                        emailService.sendErrorMail(e);
                    }
                }
            
        }

        public void cancelTickets(JObject context, List<string> selectedTicketsList, string payerPassengerPartyType, string payerNoPassengerPartyType, JToken listCustomer, bool isManual)
        {
            try
            {
                foreach (string selectedTicket in selectedTicketsList)
                {
                    StaticTranslator translator = StaticTranslator.getInstance(this.db);
                    TrackingService trackingService = new TrackingService(this.db);
                    InputParserService inputParserService = new InputParserService();

                    tracking track = trackingService.findByTicketId(selectedTicket);
                    if (track != null)
                    {
                        JObject ticketContext = JObject.Parse(track.CryptoData);
                        ticketContext["system"]["status"] = "letter_cancelled";
                        inputParserService.mergeInputField(ticketContext, "CancelledDate", DateTime.Now.ToString("yyyy-MM-dd"));
                        trackingService.merge(ticketContext);
                        ticketContext["system"]["application"] = "aig_fee_base_cancellation";
                    }
                }
            }
            catch (Exception)
            {
                context["system"]["error"] = FeeBasedController.STATUS_CANCEL_ERROR;
            }
        }

        private void mailCancelTickets(JObject context, EmailService emailService, List<string> selectedTicketsList, string payerPassengerPartyType, string payerNoPassengerPartyType, JToken listCustomer, bool isManual)
        {
            try
            {
                foreach (string selectedTicket in selectedTicketsList)
                {
                    StaticTranslator translator = StaticTranslator.getInstance(this.db);
                    TrackingService trackingService = new TrackingService(this.db);
                    InputParserService inputParserService = new InputParserService();

                    tracking track = trackingService.findByTicketId(selectedTicket);

                    if (track != null)
                    {
                        JObject ticketContext = JObject.Parse(track.CryptoData);
                        ticketContext["system"]["application"] = "aig_fee_base_cancellation";
                        emailService.sendTextEmail(ticketContext);

                        if (isManual)
                        {
                            emailService.sendCancelationMail(ticketContext);
                        }

                    }
                }
            }
            catch (Exception)
            {
                context["fee_based"]["status"] = FeeBasedController.STATUS_CANCEL_NOTIFICATION_ERROR;
            }
        }


        private JToken generateRequest(JObject context, List<string> ticketIdList)
        {
            CancellationRequestTO cancellationRequestTO = createRequestTO(context, ticketIdList);
            return JObject.FromObject(cancellationRequestTO);
        }

        private JToken callWS(JToken request)
        {
            WebServiceService webServiceService = new WebServiceService();
            JToken response = null;
            string cWsUrl = ConfigurationManager.AppSettings["CancellationWebServiceURL"];
            response = webServiceService.post(cWsUrl, request);
            return response;
        }

        private CancellationRequestTO createRequestTO(JObject context, List<string> ticketIdList)
        {
            CultureInfo provider = CultureInfo.InvariantCulture;
            CancellationRequestTO cancellationRequestTO = new CancellationRequestTO();

            string country = (string)context["tickets_to_cancel"][0]["data"]["fee_based"]["plan"]["country_code"];
            fee_based_country_currency country_config = this.db.fee_based_country_currency.Where(cc => cc.country == country).FirstOrDefault();

            cancellationRequestTO.Source = ConfigurationManager.AppSettings["CancellationWebServiceSource"];
            cancellationRequestTO.Token = ConfigurationManager.AppSettings["CancellationWebServiceToken"];
            cancellationRequestTO.TransactionID = (string)context["tickets_to_cancel"][0]["data"]["fee_based"]["transaction_id"];
            cancellationRequestTO.PaymentMode = "3";//default

            cancellationRequestTO.CancellationDate = (string)context["tickets_to_cancel"][0]["data"]["fee_based"]["sales_request"]["TicketEffectiveDate"];

            cancellationRequestTO.TotalPremiumRefund = (string)context["tickets_to_cancel"][0]["data"]["fee_based"]["plan"]["unit_price"];
            cancellationRequestTO.CancellationType = "1";
            List<CancellationRequestTicketTO> ticketsCancellation = new List<CancellationRequestTicketTO>();
            foreach (var ticketId in ticketIdList)
            {
                CancellationRequestTicketTO ticketCancellation = new CancellationRequestTicketTO();
                string transactionId = (string)context["tickets_to_cancel"][0]["data"]["fee_based"]["transaction_id"];
                ticketCancellation.premiumRefund = cancellationRequestTO.TotalPremiumRefund;
                ticketCancellation.ticketNumber = ticketId;
                ticketCancellation.ListCoverageRefund = new List<CancellationRequestCoverageTO>();
                JArray coveragesArray = (JArray)context["tickets_to_cancel"][0]["data"]["fee_based"]["plan"]["benefits"];
                foreach (JToken cov in coveragesArray)
                {
                    CancellationRequestCoverageTO coverage = new CancellationRequestCoverageTO();
                    coverage.CoverageCode = (string)cov["benefit_code"];
                    decimal distributionC = decimal.Round((decimal.Parse((string)cov["distribution"], CultureInfo.GetCultureInfo(country_config.specificCulture))), 5, MidpointRounding.AwayFromZero);
                    distributionC = decimal.Round(distributionC, 5, MidpointRounding.AwayFromZero);
                    decimal refund = decimal.Parse((string)ticketCancellation.premiumRefund, CultureInfo.GetCultureInfo(country_config.specificCulture));
                    refund = decimal.Round(refund, 5, MidpointRounding.AwayFromZero);
                    decimal covPremium = (distributionC * refund) / 100;
                    covPremium = decimal.Round(covPremium, 5, MidpointRounding.AwayFromZero);
                    coverage.CoveragePremiumRefund = covPremium.ToString("F5", CultureInfo.CreateSpecificCulture(country_config.specificCulture));
                    ticketCancellation.ListCoverageRefund.Add(coverage);
                }
                ticketsCancellation.Add(ticketCancellation);
            }
            cancellationRequestTO.ListTicketNumber = ticketsCancellation;
            return cancellationRequestTO;
        }


    }
}