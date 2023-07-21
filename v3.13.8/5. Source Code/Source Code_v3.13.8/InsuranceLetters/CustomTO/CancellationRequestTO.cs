using System.Collections.Generic;

namespace InsuranceLettersCommons.TO
{
    public class CancellationRequestTO
    {
        public string Source { get; set; }
        public string Token { get; set; }
        public string TransactionID { get; set; }
        public string PaymentMode { get; set; }
        public string CancellationDate { get; set; }
        public string TotalPremiumRefund { get; set; }
        public List<CancellationRequestTicketTO> ListTicketNumber { get; set; }
        public string CancellationType { get; set; }
    }
}

