using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InsuranceLettersCommons.TO
{
    public class TransactionFBTicketsTO
    {
        public string ticketId { get; set; }
        public string ticketNumber { get; set; }
        public string passengerName { get; set; }
        public string passengerLastName { get; set; }
        public string passengerPassport { get; set; }
        public string ticketStatus { get; set; }
        public string passengerEmail { get; set; }    
        public string ticketCancelledDate { get; set; }

    }
}
