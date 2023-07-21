using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.StepHandler;
using log4net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Helpers;
using System.Web.Script.Serialization;

namespace InsuranceLetters.WebStepHandlers
{
    public class LastTravelHandler : StepHandler
    {
        //
        // GET: /GetPayerHandler/

        private static readonly ILog log = LogManager.GetLogger(typeof(LastTravelHandler));


        public override JObject handleStep(JObject context)
        {

            string loginPassport = (string)context.SelectToken("$.input.fields[?(@.name=='LoginPassport')].values[0].value");

            JObject reqObject = new JObject();

            JObject response = new JObject();

            List<LastTravelPassengerCandidate> lastTravelPassengerCandidates = new List<LastTravelPassengerCandidate>();


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

                List<LastTravelPassengerCandidate> passengerCandidates = new List<LastTravelPassengerCandidate>();

                string application = (string)data["system"]["application"];

                string dataProductCd = (string)data["benefit_info"]["GetBenefitInformationResult"]["Products"]["Product"]["ProductCd"];
                string dataICACode = (string)data["benefit_info"]["GetBenefitInformationResult"]["ICACode"];

                if (!string.IsNullOrEmpty(application) && application.Equals("travel_insurance_annual") && dataProductCd == contextProductCd && dataICACode == contextICACode)
                {

                    var dataInput = data["input"]["fields"];
                    bool spouseCheck = (dataInput.SelectToken("[?(@.name == 'spouseCheck')].values[0].value") != null
                && dataInput.SelectToken("[?(@.name == 'spouseCheck')].values[0].value").ToString().ToLowerInvariant() == "on");
                    bool childCheck = (dataInput.SelectToken("[?(@.name == 'childCheck')].values[0].value") != null &&
                        dataInput.SelectToken("[?(@.name == 'childCheck')].values[0].value").ToString().ToLowerInvariant() == "on");



                    string spouseFirstName = "";
                    string spouseLastName = "";
                    string spousePassport = "";
                    bool spouseIsPassport = false;
                    string spouseDateOfBirth = "";
                    JArray childFirstNames = null;
                    JArray childLastNames = null;
                    JArray childPassports = null;
                    JArray childDateOfBirths = null;
                    JArray childIsPassports = null;
                    JArray childIsCpfs = null;

                    string cardHolderFirstName = (string)dataInput.SelectToken("[?(@.name == 'FirstName')].values[0].value");
                    string cardHolderLastName = (string)dataInput.SelectToken("[?(@.name == 'LastName')].values[0].value");
                    string cardHolderDateOfBirth = (string)dataInput.SelectToken("[?(@.name == 'DateOfBirth')].values[0].value");
                    string cardHolderPassport = (string)dataInput.SelectToken("[?(@.name == 'Passport')].values[0].value");

                    string cardHolderEmail = (string)dataInput.SelectToken("[?(@.name == 'Email')].values[0].value");
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
                    passengerCardHolderCandidate.passengerIsPassport = "False";
                    passengerCardHolderCandidate.passengerCardHolderEmail = cardHolderEmail;
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
                        if (dataInput.SelectToken("[?(@.name == 'SpouseRadio')].values[0].value") != null)
                        {
                            spouseIsPassport = (string)dataInput.SelectToken("[?(@.name == 'SpouseRadio')].values[0].value").ToString() == "true";
                        }
                        spouseDateOfBirth = (string)dataInput.SelectToken("[?(@.name == 'SpouseDateOfBirth')].values[0].value");

                        passengerSpouseCandidate.passengerFirstName = spouseFirstName;
                        passengerSpouseCandidate.passengerLastName = spouseLastName;
                        passengerSpouseCandidate.passengerPassport = spousePassport;
                        passengerSpouseCandidate.passengerIsPassport = spouseIsPassport.ToString();
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
                            passengerCandidate.passengerIsPassport = "False";
                            lastTravelPassengerCandidates.Add(passengerCandidate);
                        }
                    }
                    break;


                }

            }

            var serializer = new JavaScriptSerializer();

            JArray lastTravelCandidatesList = new JArray();



            foreach (var lastTravelItem in lastTravelPassengerCandidates)
            {
                JObject lastTravelCand = new JObject();
                lastTravelCand["first_name"] = lastTravelItem.passengerFirstName;
                lastTravelCand["last_name"] = lastTravelItem.passengerLastName;
                lastTravelCand["date_of_birth"] = lastTravelItem.passengerDateOfBirth;
                lastTravelCand["passport"] = lastTravelItem.passengerPassport;
                lastTravelCand["is_passport"] = lastTravelItem.passengerIsPassport;
                if (lastTravelItem.passengerCardHolderEmail != null)
                {
                    lastTravelCand["email"] = lastTravelItem.passengerCardHolderEmail;
                    lastTravelCand["address"] = lastTravelItem.passengerCardHolderAddress;
                    lastTravelCand["neighborhood"] = lastTravelItem.passengerCardHolderNeighborhood;
                    lastTravelCand["city"] = lastTravelItem.passengerCardHolderCity;
                    lastTravelCand["state"] = lastTravelItem.passengerCardHolderState;
                    lastTravelCand["zipCode"] = lastTravelItem.passengerCardHolderZipCode;
                    lastTravelCand["telephone1"] = lastTravelItem.passengerCardHolderTelephone1;
                    lastTravelCand["telephone2"] = lastTravelItem.passengerCardHolderTelephone2;
                    lastTravelCand["doornumber"] = lastTravelItem.passengerCardHolderDoorNumber;
                    lastTravelCand["descripcionadicional"] = lastTravelItem.passengerCardHolderDescripcionAdicional;
                }
                else
                {
                    lastTravelCand["email"] = lastTravelPassengerCandidates[0].passengerCardHolderEmail;
                    lastTravelCand["address"] = lastTravelPassengerCandidates[0].passengerCardHolderAddress;
                    lastTravelCand["neighborhood"] = lastTravelPassengerCandidates[0].passengerCardHolderNeighborhood;
                    lastTravelCand["city"] = lastTravelPassengerCandidates[0].passengerCardHolderCity;
                    lastTravelCand["state"] = lastTravelPassengerCandidates[0].passengerCardHolderState;
                    lastTravelCand["zipCode"] = lastTravelPassengerCandidates[0].passengerCardHolderZipCode;
                    lastTravelCand["telephone1"] = lastTravelPassengerCandidates[0].passengerCardHolderTelephone1;
                    lastTravelCand["telephone2"] = lastTravelPassengerCandidates[0].passengerCardHolderTelephone2;
                    lastTravelCand["doornumber"] = lastTravelPassengerCandidates[0].passengerCardHolderDoorNumber;
                    lastTravelCand["descripcionadicional"] = lastTravelPassengerCandidates[0].passengerCardHolderDescripcionAdicional;
                }

                lastTravelCandidatesList.Add(lastTravelCand);

             

            }

            context["passenger_candidates"] = lastTravelCandidatesList;

            return context;
            

        }


        public override bool breakChain()
        {
            return false;
        }

    }

    public class LastTravelPassengerCandidate
    {
        public string passengerFirstName { get; set; }
        public string passengerLastName { get; set; }
        public string passengerDateOfBirth { get; set; }
        public string passengerPassport { get; set; }
        public string passengerIsPassport { get; set; }
        public string passengerCardHolderEmail { get; set; }
        public string passengerCardHolderAddress { get; set; }
        public string passengerCardHolderNeighborhood { get; set; }
        public string passengerCardHolderCity { get; set; }
        public string doorNumber { get; set; }
        public string descripcionAdicional { get; set; }
        public string passengerCardHolderState { get; set; }
        public string passengerCardHolderZipCode { get; set; }
        public string passengerCardHolderTelephone1 { get; set; }
        public string passengerCardHolderTelephone2 { get; set; }
        public string passengerCardHolderDoorNumber { get; set; }
        public string passengerCardHolderDescripcionAdicional { get; set; }

    }
}
