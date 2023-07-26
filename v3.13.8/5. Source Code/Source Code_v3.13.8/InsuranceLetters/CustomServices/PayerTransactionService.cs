using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.TO;
using InsuranceLettersCore.Services;
using log4net;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Globalization;
using System.Linq;
using System.Web.Helpers;

namespace InsuranceLetters.CustomServices
{
    public class PayerTransactionService
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(FeeBasedProcessHelper));

        ApplicationService applicationService;
        TrackingService trackingService;
        EmailService emailService;
        LinksService linksService;
        InputParserService inputParserService;
        InsuranceLettersEntities db;
        WebServiceService webServiceService;
        public PayerTransactionService(ApplicationService applicationServ,
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

        public JObject checkIfPayer(JObject context)
        {
            string loginPassport = (string)context.SelectToken("$.input.fields[?(@.name=='LoginPassport')].values[0].value");
            string ticketsWsUrl = ConfigurationManager.AppSettings["GenerateTicketNumberWebServiceURL"];

            JObject reqObject = new JObject();
            reqObject["Source"] = ConfigurationManager.AppSettings["GenerateTicketNumberWebServiceSource"];
            reqObject["Token"] = ConfigurationManager.AppSettings["GenerateTicketNumberWebServiceToken"];

            JObject response = new JObject();
            bool cpfIsPayer = false;

            try
            {
                List<tracking_property> trackingProperties = db.tracking_property.Where(tp => (tp.value.Equals(loginPassport)
                && (tp.name.Equals("fee_based_transaction_payer_cpf")))).ToList();

                List<tracking> trackingList = new List<tracking>();

                foreach (tracking_property trackingProperty in trackingProperties)
                {
                    tracking tracking = new tracking();
                    var trackingQuery = db.tracking.Where(tr => tr.id == trackingProperty.tracking_id).ToList();
                    tracking = trackingQuery.FirstOrDefault();
                    JObject json = JObject.Parse(tracking.CryptoData);
                    var inputFields = json["input"]["fields"];
                    foreach (var field in inputFields)
                    {
                        if (field["name"].ToString().Equals("PayerPassport"))
                        {
                            cpfIsPayer = field["values"][0]["value"].ToString() == loginPassport;
                            break;
                        }
                    }
                    trackingList.Add(tracking);
                }

                List<TransactionTO> transactionTOList = new List<TransactionTO>();

                response["cpf_is_payer"] = cpfIsPayer;
                return response;

            }
            catch (Exception ex)
            {
                log.Info(ex);
            }


            return response;
        }

        public JObject getPayerTransactionIds(JObject context)
        {
            string loginPassport = (string)context.SelectToken("$.input.fields[?(@.name=='LoginPassport')].values[0].value");
            string ticketsWsUrl = ConfigurationManager.AppSettings["GenerateTicketNumberWebServiceURL"];

            JObject reqObject = new JObject();
            reqObject["Source"] = ConfigurationManager.AppSettings["GenerateTicketNumberWebServiceSource"];
            reqObject["Token"] = ConfigurationManager.AppSettings["GenerateTicketNumberWebServiceToken"];

            JObject response = new JObject();


            try
            {
                List<tracking_property> trackingProperties = db.tracking_property.Where(tp => (tp.value.Equals(loginPassport)
                && (tp.name.Equals("fee_based_transaction_payer_cpf")))).ToList();

                List<tracking> trackingList = new List<tracking>();

                foreach (tracking_property trackingProperty in trackingProperties)
                {
                    tracking tracking = new tracking();
                    var trackingQuery = db.tracking.Where(tr => tr.id == trackingProperty.tracking_id).ToList();
                    tracking = trackingQuery.First();
                    trackingList.Add(tracking);
                }

                List<TransactionTO> transactionTOList = new List<TransactionTO>();
                foreach (tracking tracking in trackingList)
                {
                    var data = JObject.Parse(tracking.CryptoData);
                    TransactionTO transactionTO = new TransactionTO();

                    transactionTO.trackingId = tracking.id;
                    transactionTO.date = tracking.date.ToString("dd/MM/yyyy h:mm:ss tt"); //format DD/MM/YYYY HH:mm:ss a
                    try
                    {
                        if ((string)data["fee_based"]["status"] == "PAYMENT_SUCCESS")
                        {
                            transactionTO.transactionId = data.SelectToken("fee_based") != null ?
                            data.SelectToken("fee_based").SelectToken("transaction_id") != null ?
                                data.SelectToken("fee_based").SelectToken("transaction_id").ToString() : null : null;
                            transactionTO.status = data.SelectToken("fee_based") != null ?
                                data.SelectToken("fee_based").SelectToken("status").ToString() : null;

                            var effective = data.SelectToken("fee_based")?.SelectToken("sales_request")?.SelectToken("DepartureDate").ToString();
                            DateTime effectiveDate = DateTime.ParseExact(effective, "ddMMyyyy", CultureInfo.InvariantCulture);

                            var expiration = data.SelectToken("fee_based")?.SelectToken("sales_request")?.SelectToken("ReturnDate").ToString();
                            DateTime expirationDate = DateTime.ParseExact(expiration, "ddMMyyyy", CultureInfo.InvariantCulture);

                            if (expirationDate < DateTime.Today || !checkIfTicketsAreAvailable(transactionTO.trackingId.ToString()))
                            {
                                transactionTO.expired = "true";
                                
                            }
                            else
                            {
                                transactionTO.expired = "false";
                            }

                            var benefits = data["benefit_info"]["GetBenefitInformationResult"]["Benefit"]["BenefitInfo"];

                            bool isBlack = benefits.FirstOrDefault(b => (string)b["BenefitCd"] == "INJ") != null;

                            var feeBasedPlan = data["fee_based_plan"];
                            if (feeBasedPlan != null)
                            {
                                bool isAnnual = (bool)data["fee_based_plan"]["annual"];

                                transactionTO.passengers = (string)data["fee_based_plan"]["passengers"];
                                transactionTO.plan = (string)data["fee_based_plan"]["plan_name"];
                                transactionTO.region = isAnnual ? null : (string)data["fee_based_plan"]["region"]["name"];
                                transactionTO.validFrom = effectiveDate.ToString("yyyy-MM-dd");
                                transactionTO.validTo = expirationDate.ToString("yyyy-MM-dd");
                                transactionTO.tripCoverage = setTripCoverage(isAnnual, isBlack, (string)data["fee_based_plan"]["days"],
                                    (string)data["system"]["language"]);
                            }

                            var feeBaseTrackingID = db.tracking_property.Where(x => x.name == "fee_based_tracking_id"
                                && x.value.ToString() == tracking.id.ToString()).ToList();

                            transactionTO.issuanceDate = tracking.date.ToString();

                            

                            transactionTOList.Add(transactionTO);
                        }

                    }
                    catch (Exception ex)
                    {
                        log.Info(ex);
                    }
                }

                response["transaction_list"] = Json.Encode(transactionTOList);
                return response;

            }
            catch (Exception ex)
            {
                log.Info(ex);
            }


            return response;
        }

        public List<tracking> getTicketsFromDbWithTransaction(string transaction)
        {
            List<tracking_property> trackingProperties = db.tracking_property.Where(tp => (tp.name == "fee_based_tracking_id" && tp.value.Equals(transaction))).ToList();
            List<tracking> trackingList = new List<tracking>();
            foreach (tracking_property trackingProperty in trackingProperties)
            {
                tracking tracking = new tracking();
                var trackingQuery = db.tracking.Where(tr => tr.id == trackingProperty.tracking_id).ToList();
                tracking = trackingQuery.First();
                trackingList.Add(tracking);
            }
            return trackingList;
        }

        public bool checkIfTicketsAreAvailable(string transaction)
        {
            List<tracking> trackingList = getTicketsFromDbWithTransaction(transaction);
            return trackingList.Any(tr=>tr.status.Equals("letter_emailed"));
        }


        public JObject getTicketsFromTransaction(string transaction)
        {
            JObject response = new JObject();

            try
            {
                List<tracking> trackingList = getTicketsFromDbWithTransaction(transaction);

                

                List<TransactionFBTicketsTO> transactionTOList = new List<TransactionFBTicketsTO>();
                foreach (tracking tracking in trackingList)
                {
                    var data = JObject.Parse(tracking.CryptoData);
                    TransactionFBTicketsTO ticketsToList = new TransactionFBTicketsTO();

                    ticketsToList.ticketId = tracking.id.ToString();
                    ticketsToList.ticketNumber = tracking.ticket_id;
                    ticketsToList.ticketStatus = tracking.status;


                    try
                    {
                        var inputFields = data["input"]["fields"];
                        foreach (var inputField in inputFields)
                        {
                            string inputName = (string)inputField["name"];
                            switch (inputName)
                            {
                                case "FirstName":
                                    ticketsToList.passengerName = (string)inputField["values"][0]["value"];
                                    break;
                                case "LastName":
                                    ticketsToList.passengerLastName = (string)inputField["values"][0]["value"];
                                    break;
                                case "Passport":
                                    ticketsToList.passengerPassport = (string)inputField["values"][0]["value"];
                                    break;
                                case "Email":
                                    ticketsToList.passengerEmail = (string)inputField["values"][0]["value"];
                                    break;
                                case "CancelledDate":
                                    ticketsToList.ticketCancelledDate = (string)inputField["values"][0]["value"];
                                    break;
                                default:
                                    break;
                            }
                        }
                        transactionTOList.Add(ticketsToList);
                    }
                    catch (Exception ex)
                    {
                        log.Info(ex);
                    }
                }

                response["transaction_tickets"] = Json.Encode(transactionTOList);
                return response;

            }
            catch (Exception ex)
            {
                log.Info(ex);
            }


            return response;
        }

        private string setTripCoverage(bool isAnnual, bool isBlack, string dataDays, string lang)
        {
            string coverage = "";
            if (isAnnual)
            {
                string upTo60Days = "";
                string upTo31Days = "";
                switch (lang)
                {
                    case "pt":
                        upTo60Days = "V&aacute;rias viagens de at&eacute; 60 dias";
                        upTo31Days = "V&aacute;rias viagens de at&eacute; 31 dias";
                        break;
                    case "es":
                        upTo60Days = "M&uacute;ltiples viajes hasta 60 d&iacute;as";
                        upTo31Days = "M&uacute;ltiples viajes hasta 31 d&iacute;as";
                        break;
                    case "en":
                        upTo60Days = "Multiple trips up to 60 days";
                        upTo31Days = "Multiple trips up to 31 days";
                        break;
                    default:
                        break;
                }
                coverage = isBlack ? upTo60Days : upTo31Days;
            }
            else
            {
                switch (lang)
                {
                    case "pt":
                        coverage = "Uma &uacute;nica viagem por " + dataDays + " dias";
                        break;
                    case "es":
                        coverage = "Un &uacute;nico viaje por " + dataDays + " d&iacute;as";
                        break;
                    case "en":
                        coverage = "Une only trip for " + dataDays + " days";
                        break;
                    default:
                        break;
                }
            }


            return coverage;
        }
    }
}
