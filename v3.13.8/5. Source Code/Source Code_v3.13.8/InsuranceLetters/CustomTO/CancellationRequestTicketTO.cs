using System.Collections.Generic;

namespace InsuranceLettersCommons.TO
{
    public class CancellationRequestTicketTO
    {
        public string ticketNumber { get; set; }
        public string premiumRefund { get; set; }
        public List<CancellationRequestCoverageTO> ListCoverageRefund { get; set; }
    }
}