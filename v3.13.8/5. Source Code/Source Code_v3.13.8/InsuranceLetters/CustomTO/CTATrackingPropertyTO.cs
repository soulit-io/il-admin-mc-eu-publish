using InsuranceLettersCommons.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace InsuranceLetters.CustomTO
{
    public class CTATrackingPropertyTO
    {
        public CTATrackingPropertyTO(tracking_property tp)
        {
            id = tp.id;
            tracking_id = tp.tracking_id;
            name = tp.name;
            value = tp.value;
        }
        public long id { get; set; }
        public long tracking_id { get; set; }
        public string name { get; set; }
        public string value { get; set; }
        public string company { get; set; }
    }
}