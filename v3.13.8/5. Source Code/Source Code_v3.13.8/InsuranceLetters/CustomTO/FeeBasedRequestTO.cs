using InsuranceLettersCommons.FieldValidation;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace InsuranceLettersCommons.TO
{
    [Bind]
    public class FeeBasedRequestTO
    {
        [Required]
        public string region { get; set; }

        [Required]
        public string countryCode { get; set; }

        [Required]
        public string applicationCode { get; set; }

        [Required]
        public int passengers { get; set; }

        [Required]
        [ValidDate]
        public string dateFrom { get; set; }

        [Required]
        [ValidDate]
        public string dateTo { get; set; }

        public string planPricingId { get; set; }

        public double days { get; set; }

        public double daysTrip { get; set; }
        public string dateToTrip { get; set; }

        [Required]
        public string productCD { get; set; }
    }
}
