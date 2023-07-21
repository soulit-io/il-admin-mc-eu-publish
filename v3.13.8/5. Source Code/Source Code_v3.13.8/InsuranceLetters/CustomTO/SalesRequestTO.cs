using System.Collections.Generic;

namespace InsuranceLettersCommons.TO
{
    public class SalesRequestTO
    {
        public string Source { get; set; }
        public string Token { get; set; }
        public string TicketEffectiveDate { get; set; }
        public string TicketExpiryDate { get; set; }
        public string TotalPremium { get; set; }
        public string Exchangerate { get; set; }
        public string PaymentPlan { get; set; }
        public string PaymentMode { get; set; }
        public string BankNumber { get; set; }
        public string BankAgency { get; set; }
        public string BankAccount { get; set; }
        public string TripType { get; set; }
        public string OriginState { get; set; }
        public string DestinationCountries { get; set; }
        public string DestinationState { get; set; }
        public string DepartureDate { get; set; }
        public string ReturnDate { get; set; }
        public string SalesDate { get; set; }
        public string NumberOfDays { get; set; }
        public string PlanName { get; set; }
        public string InsuredAmountCurrency { get; set; }
        public List<SalesRequestCustomerTO> ListCustomer { get; set; }
    }
}

