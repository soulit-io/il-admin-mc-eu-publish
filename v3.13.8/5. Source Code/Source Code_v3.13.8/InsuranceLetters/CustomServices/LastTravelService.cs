using InsuranceLetters.WebStepHandlers;
using InsuranceLettersCommons.Model;
using InsuranceLettersCore.Services;
using log4net;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web.Script.Serialization;

namespace InsuranceLetters.CustomServices
{
    public class LastTravelService
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(FeeBasedProcessHelper));

        ApplicationService applicationService;
        TrackingService trackingService;
        EmailService emailService;
        LinksService linksService;
        InputParserService inputParserService;
        InsuranceLettersEntities db;
        WebServiceService webServiceService;
        public LastTravelService(ApplicationService applicationServ,
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

        public JObject getLastTravel(JObject context)
        {
            string loginPassport = (string)context.SelectToken("$.input.fields[?(@.name=='LoginPassport')].values[0].value");

            JObject reqObject = new JObject();

            JObject response = new JObject();

            System.Collections.Generic.List<LastTravelPassengerCandidate> lastTravelPassengerCandidates = new List<LastTravelPassengerCandidate>();

            try
            {
                List<tracking_property> trackingProperties = db.tracking_property.Where(tp => (tp.value.Equals(loginPassport))).ToList();

                List<tracking> trackingList = new List<tracking>();



                string contextICACode = (string)context["benefit_info"]["GetBenefitInformationResult"]["ICACode"];
                string contextProductCd = (string)context["benefit_info"]["GetBenefitInformationResult"]["Products"]["Product"]["ProductCd"];

                foreach (tracking_property trackingProperty in trackingProperties)
                {
                    tracking tracking = new tracking();
                    var trackingQuery = db.tracking.Where(tr => tr.id == trackingProperty.tracking_id).ToList();
                    tracking = trackingQuery.First();
                    trackingList.Add(tracking);
                }

                trackingList.Reverse();

                foreach (tracking tracking in trackingList)
                {
                    var data = JObject.Parse(tracking.CryptoData);

                    System.Collections.Generic.List<LastTravelPassengerCandidate> passengerCandidates = new List<LastTravelPassengerCandidate>();

                    string application = (string)data["system"]["application"];

                    string dataProductCd = (string)data["benefit_info"]["GetBenefitInformationResult"]["Products"]["Product"]["ProductCd"];
                    string dataICACode = (string)data["benefit_info"]["GetBenefitInformationResult"]["ICACode"];

                    if (!string.IsNullOrEmpty(application) && application.Equals("travel_insurance_annual") && dataProductCd == contextProductCd && dataICACode == contextICACode)
                    {
                        try
                        {
                            var dataInput = data["input"]["fields"];
                            bool spouseCheck = (dataInput.SelectToken("[?(@.name == 'spouseCheck')].values[0].value") != null
                        && dataInput.SelectToken("[?(@.name == 'spouseCheck')].values[0].value").ToString().ToLowerInvariant() == "on");
                            bool childCheck = (dataInput.SelectToken("[?(@.name == 'childCheck')].values[0].value") != null &&
                                dataInput.SelectToken("[?(@.name == 'childCheck')].values[0].value").ToString().ToLowerInvariant() == "on");



                            string spouseFirstName = "";
                            string spouseLastName = "";
                            string spousePassport = "";
                            string spouseDateOfBirth = "";
                            JArray childFirstNames = null;
                            JArray childLastNames = null;
                            JArray childPassports = null;
                            JArray childDateOfBirths = null;

                            string cardHolderFirstName = (string)dataInput.SelectToken("[?(@.name == 'FirstName')].values[0].value");
                            string cardHolderLastName = (string)dataInput.SelectToken("[?(@.name == 'LastName')].values[0].value");
                            string cardHolderDateOfBirth = (string)dataInput.SelectToken("[?(@.name == 'DateOfBirth')].values[0].value");
                            string cardHolderPassport = (string)dataInput.SelectToken("[?(@.name == 'Passport')].values[0].value");

                            string cardHolderEmail = (string)dataInput.SelectToken("[?(@.name == 'Email')].values[0].value");
                            //string cardHolderNacionality = (string)previousContextFields.SelectToken("[?(@.name == 'Nacionality')].values[0].value");
                            string cardHolderAddress = (string)dataInput.SelectToken("[?(@.name == 'Address')].values[0].value");
                            string cardHolderNeighborhood = (string)dataInput.SelectToken("[?(@.name == 'Neighborhood')].values[0].value");
                            string cardHolderCity = (string)dataInput.SelectToken("[?(@.name == 'City')].values[0].value");
                            string cardHolderState = (string)dataInput.SelectToken("[?(@.name == 'State')].values[0].value");
                            string cardHolderZipCode = (string)dataInput.SelectToken("[?(@.name == 'ZipCode')].values[0].value");
                            string cardHolderTelephone1 = (string)dataInput.SelectToken("[?(@.name == 'Telephone1')].values[0].value");
                            string cardHolderTelephone2 = (string)dataInput.SelectToken("[?(@.name == 'Telephone2')].values[0].value");
                            string cardHolderDoorNumber = (string)dataInput.SelectToken("[?(@.name == 'DoorNumber')].values[0].value");
                            string cardHolderDescripcionAdicional = (string)dataInput.SelectToken("[?(@.name == 'DescripcionAdicional')].values[0].value");

                            LastTravelPassengerCandidate passengerCardHolderCandidate = new LastTravelPassengerCandidate();

                            passengerCardHolderCandidate.passengerFirstName = cardHolderFirstName;
                            passengerCardHolderCandidate.passengerLastName = cardHolderLastName;
                            passengerCardHolderCandidate.passengerDateOfBirth = cardHolderDateOfBirth;
                            passengerCardHolderCandidate.passengerPassport = cardHolderPassport;

                            passengerCardHolderCandidate.passengerCardHolderEmail = cardHolderEmail;
                            //passengerCardHolderCandidate.passengerCardHolderNacionality = cardHolderNacionality;
                            passengerCardHolderCandidate.passengerCardHolderAddress = cardHolderAddress;
                            passengerCardHolderCandidate.passengerCardHolderNeighborhood = cardHolderNeighborhood;
                            passengerCardHolderCandidate.passengerCardHolderCity = cardHolderCity;
                            passengerCardHolderCandidate.passengerCardHolderState = cardHolderState;
                            passengerCardHolderCandidate.passengerCardHolderZipCode = cardHolderZipCode;
                            passengerCardHolderCandidate.passengerCardHolderTelephone1 = cardHolderTelephone1;
                            passengerCardHolderCandidate.passengerCardHolderTelephone2 = cardHolderTelephone2;
                            passengerCardHolderCandidate.passengerCardHolderDoorNumber = cardHolderDoorNumber;
                            passengerCardHolderCandidate.passengerCardHolderDescripcionAdicional = cardHolderDescripcionAdicional;

                            lastTravelPassengerCandidates.Add(passengerCardHolderCandidate);

                            if (spouseCheck)
                            {
                                LastTravelPassengerCandidate passengerSpouseCandidate = new LastTravelPassengerCandidate();

                                spouseFirstName = (string)dataInput.SelectToken("[?(@.name == 'SpouseFirstName')].values[0].value");
                                spouseLastName = (string)dataInput.SelectToken("[?(@.name == 'SpouseLastName')].values[0].value");
                                spousePassport = (string)dataInput.SelectToken("[?(@.name == 'SpousePassport')].values[0].value");
                                spouseDateOfBirth = (string)dataInput.SelectToken("[?(@.name == 'SpouseDateOfBirth')].values[0].value");
                                passengerSpouseCandidate.passengerFirstName = spouseFirstName;
                                passengerSpouseCandidate.passengerLastName = spouseLastName;
                                passengerSpouseCandidate.passengerPassport = spousePassport;
                                passengerSpouseCandidate.passengerDateOfBirth = spouseDateOfBirth;

                                lastTravelPassengerCandidates.Add(passengerSpouseCandidate);
                            }

                            if (childCheck)
                            {
                                int childCount = 0;

                                childFirstNames = (JArray)dataInput.SelectToken("[?(@.name == 'ChildFirstName')].values");
                                childLastNames = (JArray)dataInput.SelectToken("[?(@.name == 'ChildLastName')].values");
                                childDateOfBirths = (JArray)dataInput.SelectToken("[?(@.name == 'ChildDateOfBirth')].values");
                                childPassports = (JArray)dataInput.SelectToken("[?(@.name == 'ChildPassport')].values");

                                childCount = childFirstNames.Count;

                                for (int i = 0; i < childCount; i++)
                                {
                                    LastTravelPassengerCandidate passengerCandidate = new LastTravelPassengerCandidate();
                                    passengerCandidate.passengerFirstName = (string)childFirstNames[i]["value"];
                                    passengerCandidate.passengerLastName = (string)childLastNames[i]["value"];
                                    passengerCandidate.passengerDateOfBirth = (string)childDateOfBirths[i]["value"];
                                    passengerCandidate.passengerPassport = (string)childPassports[i]["value"];
                                    lastTravelPassengerCandidates.Add(passengerCandidate);
                                }
                            }
                            break;
                        }
                        catch (Exception ex)
                        {

                        }
                    }

                }

                var serializer = new JavaScriptSerializer();

                JArray lastTravelCandidatesList = new JArray();



                foreach (var lastTravelItem in lastTravelPassengerCandidates)
                {
                    JObject lastTravelCand = new JObject();
                    lastTravelCand["candidate_first_name"] = lastTravelItem.passengerFirstName;
                    lastTravelCand["candidate_last_name"] = lastTravelItem.passengerLastName;
                    lastTravelCand["candidate_date_of_birth"] = lastTravelItem.passengerDateOfBirth;
                    lastTravelCand["candidate_passport"] = lastTravelItem.passengerPassport;
                    if (lastTravelItem.passengerCardHolderEmail != null)
                    {
                        lastTravelCand["candidate_cardholder_email"] = lastTravelItem.passengerCardHolderEmail;
                        //passCand["candidate_cardholder_nacionality"] = passengerCandidate.passengerCardHolderNacionality;
                        lastTravelCand["candidate_cardholder_address"] = lastTravelItem.passengerCardHolderAddress;
                        lastTravelCand["candidate_cardholder_neighborhood"] = lastTravelItem.passengerCardHolderNeighborhood;
                        lastTravelCand["candidate_cardholder_city"] = lastTravelItem.passengerCardHolderCity;
                        lastTravelCand["candidate_cardholder_state"] = lastTravelItem.passengerCardHolderState;
                        lastTravelCand["candidate_cardholder_zipCode"] = lastTravelItem.passengerCardHolderZipCode;
                        lastTravelCand["candidate_cardholder_telephone1"] = lastTravelItem.passengerCardHolderTelephone1;
                        lastTravelCand["candidate_cardholder_telephone2"] = lastTravelItem.passengerCardHolderTelephone2;
                        lastTravelCand["candidate_cardholder_doornumber"] = lastTravelItem.passengerCardHolderDoorNumber;
                        lastTravelCand["candidate_cardholder_descripcionadicional"] = lastTravelItem.passengerCardHolderDescripcionAdicional;
                    }



                    lastTravelCandidatesList.Add(lastTravelCand);
                }


                context["last_travel_candidates"] = lastTravelCandidatesList;


            }
            catch (Exception ex)
            {

            }

            return context;

        }
    }
}
