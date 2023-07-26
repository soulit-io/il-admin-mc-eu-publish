using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InsuranceLettersCommons.TO
{
    public class TransactionTO
    {
        public string transactionId { get; set; }
        public long trackingId { get; set; }
        public string date { get; set; }
        public string status { get; set; }
        public string expired { get; set; }
        public TransactionFBTicketsTO tickets { get; set; }

        public string issuanceDate { get; set; }
        public string passengers { get; set; }
        public string plan { get; set; }
        public string region { get; set; }
        public string validFrom { get; set; }
        public string validTo{ get; set; }
        public string tripCoverage { get; set; }

    }
}
