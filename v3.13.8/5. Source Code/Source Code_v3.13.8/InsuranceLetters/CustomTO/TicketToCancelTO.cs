using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InsuranceLetters.CustomTO
{
    public class TicketToCancelTO
    {
       
        public long trackingId { get; set; }
        public string ticketNumber { get; set; }
        public DateTime date { get; set; }
        public string status { get; set; }
        public string data { get; set; }


    }
}
