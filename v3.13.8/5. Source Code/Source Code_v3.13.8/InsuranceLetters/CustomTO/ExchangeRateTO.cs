using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InsuranceLettersCommons.TO
{
    public class ExchangeRateTO
    {
        [JsonProperty("odata.context")]
        public string odataContext { get; set; }
        public ExchangeRateValueTO[] value { get; set; }
    }
}
