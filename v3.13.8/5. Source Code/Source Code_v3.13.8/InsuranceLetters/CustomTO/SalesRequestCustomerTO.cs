
using System.Collections.Generic;

namespace InsuranceLettersCommons.TO
{
    public class SalesRequestCustomerTO
    {
        public string PartyIdType { get; set; }
        public string PartyIdNumber { get; set; }
        public string PartyName { get; set; }
        public string PartyLastName { get; set; }
        public string Address { get; set; }
        public string DoorNumber { get; set; }
        public string Complement { get; set; }


        public string ContactDDD { get; set; }
        public string ContactPhone { get; set; }

        public string Neighborhood { get; set; }
        public string City { get; set; }
        public string ZIP { get; set; }
        public string State { get; set; }
        public string ContactMobile { get; set; }
        public string BirthDate { get; set; }
        public string MaritalStatus { get; set; }
        public string Email { get; set; }
        public List<SalesRequestCoverageTO> ListCoverage { get; set; }
        public string PartyType { get; set; }
    }
}