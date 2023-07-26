using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using InsuranceLettersCommons.Model;

namespace InsuranceLetters.CustomTO
{
    public class CTATackingTO
    {
        public CTATackingTO(tracking t)
        {
            id = t.id;
            date = t.date;
            landing = t.landing;
            language = t.language;
            step = t.step;
            application = t.application;
            slug = t.slug;
            user_id = t.user_id;
            //data = t.data;
            ticket_id = t.ticket_id;
            status = t.status;
            parent_slug = t.parent_slug;
            batch_id = t.batch_id;
            tracking_property = new List<CTATrackingPropertyTO>();
            foreach (tracking_property tp in t.tracking_property)
            {
                tracking_property.Add(new CTATrackingPropertyTO(tp));
            }
        }
        public long id { get; set; }
        public System.DateTime date { get; set; }
        public string landing { get; set; }
        public string language { get; set; }
        public string step { get; set; }
        public string application { get; set; }
        public string slug { get; set; }
        public string user_id { get; set; }
        public string data { get; set; }
        public string ticket_id { get; set; }
        public string status { get; set; }
        public string parent_slug { get; set; }
        public string batch_id { get; set; }
        public string email { get; set; }
        public string agency { get; set; }
        public string bin { get; set; }

        public List<CTATrackingPropertyTO> tracking_property { get; set; }
    }
}