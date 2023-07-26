using InsuranceLettersCommons.StepHandler;
using log4net;
using Newtonsoft.Json.Linq;
using System.Collections.Generic;
using System.Web.Script.Serialization;

namespace InsuranceLetters.WebStepHandlers
{
    public class FeeBasePassengerCandidatesHandler : StepHandler
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(FeeBasePassengerCandidatesHandler));

        public override JObject handleStep(JObject context)
        {
            //var previousContextFields = context["input"]["previous-context-fields"];
            //bool previuousCandidates = context["passenger_candidates"] != null;
            //if (previousContextFields != null)
            //{
            //    if (!previuousCandidates)
            //    {
            //        List<PassengerCandidate> passengerCandidates = new List<PassengerCandidate>();                    

            //        string cardHolderFirstName = (string)previousContextFields.SelectToken("[?(@.name == 'FirstName')].values[0].value");
            //        string cardHolderLastName = (string)previousContextFields.SelectToken("[?(@.name == 'LastName')].values[0].value");
            //        string cardHolderDateOfBirth = (string)previousContextFields.SelectToken("[?(@.name == 'DateOfBirth')].values[0].value");
            //        string cardHolderPassport = (string)previousContextFields.SelectToken("[?(@.name == 'Passport')].values[0].value");
                    
            //        string cardHolderEmail = (string)previousContextFields.SelectToken("[?(@.name == 'Email')].values[0].value");
            //        //string cardHolderNacionality = (string)previousContextFields.SelectToken("[?(@.name == 'Nacionality')].values[0].value");
            //        string cardHolderAddress = (string)previousContextFields.SelectToken("[?(@.name == 'Address')].values[0].value");
            //        string cardHolderNeighborhood = (string)previousContextFields.SelectToken("[?(@.name == 'Neighborhood')].values[0].value");
            //        string cardHolderCity = (string)previousContextFields.SelectToken("[?(@.name == 'City')].values[0].value");
            //        string cardHolderState = (string)previousContextFields.SelectToken("[?(@.name == 'State')].values[0].value");
            //        string cardHolderZipCode = (string)previousContextFields.SelectToken("[?(@.name == 'ZipCode')].values[0].value");
            //        string cardHolderTelephone1 = (string)previousContextFields.SelectToken("[?(@.name == 'Telephone1')].values[0].value");
            //        string cardHolderTelephone2 = (string)previousContextFields.SelectToken("[?(@.name == 'Telephone2')].values[0].value");
            //        string cardHolderDoorNumber = (string)previousContextFields.SelectToken("[?(@.name == 'DoorNumber')].values[0].value");
            //        string cardHolderDescripcionAdicional = (string)previousContextFields.SelectToken("[?(@.name == 'DescripcionAdicional')].values[0].value");
                    

            //        PassengerCandidate passengerCardHolderCandidate = new PassengerCandidate();

            //        passengerCardHolderCandidate.firstName = cardHolderFirstName;
            //        passengerCardHolderCandidate.lastName = cardHolderLastName;
            //        passengerCardHolderCandidate.dateOfBirth = cardHolderDateOfBirth;
            //        passengerCardHolderCandidate.passport = cardHolderPassport;
            //        passengerCardHolderCandidate.isPassport = false;

            //        passengerCardHolderCandidate.email = cardHolderEmail;
            //        //passengerCardHolderCandidate.passengerCardHolderNacionality = cardHolderNacionality;
            //        passengerCardHolderCandidate.address = cardHolderAddress;
            //        passengerCardHolderCandidate.neighborhood = cardHolderNeighborhood;
            //        passengerCardHolderCandidate.city = cardHolderCity;
            //        passengerCardHolderCandidate.state = cardHolderState;
            //        passengerCardHolderCandidate.zipCode = cardHolderZipCode;
            //        passengerCardHolderCandidate.telephone1 = cardHolderTelephone1;
            //        passengerCardHolderCandidate.telephone2 = cardHolderTelephone2;
            //        passengerCardHolderCandidate.doorName = cardHolderDoorNumber;
            //        passengerCardHolderCandidate.descripcionAdicional = cardHolderDescripcionAdicional;

            //        passengerCandidates.Add(passengerCardHolderCandidate);

            //        bool spouseCheck = (previousContextFields.SelectToken("[?(@.name == 'spouseCheck')].values[0].value") != null
            //            && previousContextFields.SelectToken("[?(@.name == 'spouseCheck')].values[0].value").ToString().ToLowerInvariant() == "on");

            //        if (spouseCheck)
            //        {
            //            PassengerCandidate passengerSpouseCandidate = new PassengerCandidate();

            //            passengerSpouseCandidate.firstName = (string)previousContextFields.SelectToken("[?(@.name == 'SpouseFirstName')].values[0].value");
            //            passengerSpouseCandidate.lastName = (string)previousContextFields.SelectToken("[?(@.name == 'SpouseLastName')].values[0].value");
            //            passengerSpouseCandidate.passport = (string)previousContextFields.SelectToken("[?(@.name == 'SpousePassport')].values[0].value");
            //            passengerSpouseCandidate.isPassport = previousContextFields.SelectToken("[?(@.name == 'SpouseRadio')].values[0].value").ToString()=="true";
            //            passengerSpouseCandidate.dateOfBirth = (string)previousContextFields.SelectToken("[?(@.name == 'SpouseDateOfBirth')].values[0].value");

            //            passengerCandidates.Add(passengerSpouseCandidate);
            //        }

            //        bool childCheck = (previousContextFields.SelectToken("[?(@.name == 'childCheck')].values[0].value") != null &&
            //            previousContextFields.SelectToken("[?(@.name == 'childCheck')].values[0].value").ToString().ToLowerInvariant() == "on");
            //        if (childCheck)
            //        {
            //            JArray childFirstNames = (JArray)previousContextFields.SelectToken("[?(@.name == 'ChildFirstName')].values");
            //            JArray childLastNames = (JArray)previousContextFields.SelectToken("[?(@.name == 'ChildLastName')].values");
            //            JArray childDateOfBirths = (JArray)previousContextFields.SelectToken("[?(@.name == 'ChildDateOfBirth')].values");
            //            JArray childPassports = (JArray)previousContextFields.SelectToken("[?(@.name == 'ChildPassport')].values");
            //            //JArray childIsPassports = (JArray)previousContextFields.SelectToken("[?(@.name ^= 'ChildIsPassport')].values");

            //            int childCount = childFirstNames.Count;

            //            for (int i = 0; i < childCount; i++)
            //            {
            //                PassengerCandidate passengerCandidate = new PassengerCandidate();
            //                passengerCandidate.firstName = (string)childFirstNames[i]["value"];
            //                passengerCandidate.lastName = (string)childLastNames[i]["value"];
            //                passengerCandidate.dateOfBirth = (string)childDateOfBirths[i]["value"];
            //                passengerCandidate.passport = (string)childPassports[i]["value"];
            //                passengerCandidate.isPassport = true;
            //                passengerCandidates.Add(passengerCandidate);
            //            }
            //        }

            //        context["passenger_candidates"] = GenerateCandidates(passengerCandidates);
            //    }
            //    else
            //    {
            //        List<PassengerCandidate> passengerCandidates = new List<PassengerCandidate>();
            //        List<string> passengerCandidatesFirstNames = new List<string>();
            //        List<string> passengerCandidatesLastNames = new List<string>();
            //        List<string> passengerCandidatesDatesOfBirth = new List<string>();
            //        List<string> passengerCandidatesPassports = new List<string>();
            //        List<string> passengerCandidatesEmails = new List<string>();
            //        List<string> passengerCandidatesIsPassports = new List<string>();

            //        var contextPassengerCandidates = context["passenger_candidates"];

            //        foreach (var contextPassengerCandidate in contextPassengerCandidates)
            //        {
            //            PassengerCandidate passengerCandidate = new PassengerCandidate();

            //            passengerCandidate.firstName = (string)contextPassengerCandidate["candidate_first_name"];
            //            passengerCandidate.lastName = (string)contextPassengerCandidate["candidate_last_name"];
            //            passengerCandidate.dateOfBirth = (string)contextPassengerCandidate["candidate_date_of_birth"];
            //            passengerCandidate.passport = (string)contextPassengerCandidate["candidate_passport"];
            //            passengerCandidate.isPassport = (bool)contextPassengerCandidate["candidate_is_passport"];
            //            if (contextPassengerCandidate["candidate_cardholder_email"] != null)
            //            {
            //                passengerCandidate.email = (string)contextPassengerCandidate["candidate_cardholder_email"];
            //                //passengerCandidate.passengerCardHolderNacionality=(string)contextPassengerCandidate["candidate_cardholder_nacionality"];
            //                passengerCandidate.address = (string)contextPassengerCandidate["candidate_cardholder_address"];
            //                passengerCandidate.neighborhood = (string)contextPassengerCandidate["candidate_cardholder_neighborhood"];
            //                passengerCandidate.city = (string)contextPassengerCandidate["candidate_cardholder_city"];
            //                passengerCandidate.state = (string)contextPassengerCandidate["candidate_cardholder_state"];
            //                passengerCandidate.zipCode = (string)contextPassengerCandidate["candidate_cardholder_zipCode"];
            //                passengerCandidate.telephone1 = (string)contextPassengerCandidate["candidate_cardholder_telephone1"];
            //                passengerCandidate.telephone2 = (string)contextPassengerCandidate["candidate_cardholder_telephone2"];
            //                passengerCandidate.doorName = (string)contextPassengerCandidate["candidate_cardholder_doornumber"];
            //                passengerCandidate.descripcionAdicional = (string)contextPassengerCandidate["candidate_cardholder_descripcionadicional"];
            //            }

            //            passengerCandidates.Add(passengerCandidate);

            //        }

            //        foreach (var value in previousContextFields)
            //        {
            //            string valueName = (string)value["name"];
            //            if (valueName.StartsWith("FirstName_"))
            //            {
            //                passengerCandidatesFirstNames.Add((string)value["values"][0]["value"]);
            //            };
            //            if (valueName.StartsWith("LastName_"))
            //            {
            //                passengerCandidatesLastNames.Add((string)value["values"][0]["value"]);
            //            };
            //            if (valueName.StartsWith("DateOfBirth_"))
            //            {
            //                passengerCandidatesDatesOfBirth.Add((string)value["values"][0]["value"]);
            //            };
            //            if (valueName.StartsWith("Passport_"))
            //            {
            //                passengerCandidatesPassports.Add((string)value["values"][0]["value"]);
            //            };
            //            if (valueName.StartsWith("Email_"))
            //            {
            //                passengerCandidatesEmails.Add((string)value["values"][0]["value"]);
            //            };
            //            if (valueName.StartsWith("IsCPF_"))
            //            {
            //                passengerCandidatesIsPassports.Add((string)value["values"][0]["value"]);
            //            }; 

            //        }
            //        for (int i = 0; i < passengerCandidatesFirstNames.Count; i++)
            //        {
            //            bool passengerExists = false;
            //            PassengerCandidate passengerCandidate = new PassengerCandidate();

            //            passengerCandidate.firstName = passengerCandidatesFirstNames[i];
            //            passengerCandidate.lastName = passengerCandidatesLastNames[i];
            //            passengerCandidate.dateOfBirth = passengerCandidatesDatesOfBirth[i];
            //            string passengerPassport = passengerCandidatesPassports[i].Replace(".", "").Replace("-", "");
            //            passengerCandidate.email = passengerCandidatesEmails[i];

            //            passengerCandidate.passport = passengerPassport;
            //            passengerCandidate.isPassport = passengerCandidatesIsPassports[i].ToString()=="True";
            //            passengerExists = passengerCandidates.Exists(p => p.passport == passengerCandidate.passport);

            //            if (!passengerExists) passengerCandidates.Add(passengerCandidate);
            //        }

            //        context["passenger_candidates"] = GenerateCandidates(passengerCandidates);                    
            //    }
            //}
            //else
            //{
            //    try
            //    {
            //        List<PassengerCandidate> passengerCandidates = new List<PassengerCandidate>();
            //        List<string> passengerCandidatesFirstNames = new List<string>();
            //        List<string> passengerCandidatesLastNames = new List<string>();
            //        List<string> passengerCandidatesDatesOfBirth = new List<string>();
            //        List<string> passengerCandidatesPassports = new List<string>();
            //        List<bool> passengerCandidatesIsPassports = new List<bool>();

            //        var lastTravelCandidates = context["last_travel_candidates"];
            //        if(lastTravelCandidates!=null)
            //        {
            //            foreach (var lastTravelCandidate in lastTravelCandidates)
            //            {
            //                PassengerCandidate passengerCandidate = new PassengerCandidate();

            //                passengerCandidate.firstName = (string)lastTravelCandidate["candidate_first_name"];
            //                passengerCandidate.lastName = (string)lastTravelCandidate["candidate_last_name"];
            //                passengerCandidate.dateOfBirth = (string)lastTravelCandidate["candidate_date_of_birth"];
            //                passengerCandidate.passport = (string)lastTravelCandidate["candidate_passport"];
            //                if (lastTravelCandidate["candidate_is_passport"] != null)
            //                {
            //                    passengerCandidate.isPassport = lastTravelCandidate["candidate_is_passport"].ToString() == "True";
            //                }
            //                else
            //                {
            //                    passengerCandidate.isPassport = false;
            //                }

            //                if (lastTravelCandidate["candidate_email"] != null)
            //                {
            //                    passengerCandidate.email = (string)lastTravelCandidate["candidate_email"];
            //                    //passengerCandidate.passengerCardHolderNacionality=(string)contextPassengerCandidate["candidate_cardholder_nacionality"];
            //                    passengerCandidate.address = (string)lastTravelCandidate["candidate_address"];
            //                    passengerCandidate.neighborhood = (string)lastTravelCandidate["candidate_neighborhood"];
            //                    passengerCandidate.city = (string)lastTravelCandidate["candidate_cardholder_city"];
            //                    passengerCandidate.state = (string)lastTravelCandidate["candidate_cardholder_state"];
            //                    passengerCandidate.zipCode = (string)lastTravelCandidate["candidate_cardholder_zipCode"];
            //                    passengerCandidate.telephone1 = (string)lastTravelCandidate["candidate_cardholder_telephone1"];
            //                    passengerCandidate.telephone2 = (string)lastTravelCandidate["candidate_cardholder_telephone2"];
            //                    passengerCandidate.doorName = (string)lastTravelCandidate["candidate_cardholder_doornumber"];
            //                    passengerCandidate.descripcionAdicional = (string)lastTravelCandidate["candidate_cardholder_descripcionadicional"];
            //                }

            //                passengerCandidates.Add(passengerCandidate);

            //            }
            //        }


            //        for (int i = 0; i < passengerCandidatesFirstNames.Count; i++)
            //        {

            //            PassengerCandidate passengerCandidate = new PassengerCandidate();

            //            passengerCandidate.firstName = passengerCandidatesFirstNames[i];
            //            passengerCandidate.lastName = passengerCandidatesLastNames[i];
            //            passengerCandidate.dateOfBirth = passengerCandidatesDatesOfBirth[i];
            //            string passengerPassport = passengerCandidatesPassports[i].Replace(".", "").Replace("-", "");

            //            passengerCandidate.passport = passengerPassport;
            //            passengerCandidate.isPassport = passengerCandidatesIsPassports[i];
            //            bool passengerExists = passengerCandidates.Exists(p => p.passport == passengerCandidate.passport);

            //            if (!passengerExists) passengerCandidates.Add(passengerCandidate);
            //        }

            //        context["passenger_candidates"] = GenerateCandidates(passengerCandidates);
            //    }
            //    catch (System.Exception)
            //    {

                    //context["passenger_candidates"] = "";
            //    }


            //}

            return context;

            
        }

        private JArray GenerateCandidates(List<PassengerCandidate> passengerCandidates)
        {
            var serializer = new JavaScriptSerializer();

            JArray passengerCandidatesList = new JArray();

            foreach (PassengerCandidate passengerCandidate in passengerCandidates)
            {

                JObject contextPassengerCandidate = new JObject();
                contextPassengerCandidate["candidate_first_name"] = passengerCandidate.firstName;
                contextPassengerCandidate["candidate_last_name"] = passengerCandidate.lastName;
                contextPassengerCandidate["candidate_date_of_birth"] = passengerCandidate.dateOfBirth;
                contextPassengerCandidate["candidate_passport"] = passengerCandidate.passport;
                contextPassengerCandidate["candidate_is_passport"] = passengerCandidate.isPassport;
                if (passengerCandidate.email != null)
                {
                    contextPassengerCandidate["candidate_cardholder_email"] = passengerCandidate.email;
                    //passCand["candidate_cardholder_nacionality"] = passengerCandidate.passengerCardHolderNacionality;
                    contextPassengerCandidate["candidate_cardholder_address"] = passengerCandidate.address;
                    contextPassengerCandidate["candidate_cardholder_neighborhood"] = passengerCandidate.neighborhood;
                    contextPassengerCandidate["candidate_cardholder_city"] = passengerCandidate.city;
                    contextPassengerCandidate["candidate_cardholder_state"] = passengerCandidate.state;
                    contextPassengerCandidate["candidate_cardholder_zipCode"] = passengerCandidate.zipCode;
                    contextPassengerCandidate["candidate_cardholder_telephone1"] = passengerCandidate.telephone1;
                    contextPassengerCandidate["candidate_cardholder_telephone2"] = passengerCandidate.telephone2;
                    contextPassengerCandidate["candidate_cardholder_doornumber"] = passengerCandidate.doorName;
                    contextPassengerCandidate["candidate_cardholder_descripcionadicional"] = passengerCandidate.descripcionAdicional;
                }

                passengerCandidatesList.Add(contextPassengerCandidate);
            }

            return passengerCandidatesList;
        }

        public override bool breakChain()
        {
            return false;
        }

    }

    public class PassengerCandidate
    {
        public string firstName { get; set; }
        public string lastName { get; set; }
        public string passport { get; set; }
        public bool isPassport { get; set; }
        public string dateOfBirth { get; set; }
        public string email { get; set; }
        //public string passengerCardHolderNacionality { get; set; }
        public string address { get; set; }
        public string neighborhood { get; set; }
        public string city { get; set; }
        public string state { get; set; }
        public string zipCode { get; set; }
        public string telephone1 { get; set; }
        public string telephone2 { get; set; }
        public string doorName { get; set; }
        public string descripcionAdicional { get; set; }
    }
}