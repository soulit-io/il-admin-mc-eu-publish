using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace InsuranceLettersCommons.TO
{
    [Bind]
    public class FeeBasedAccessStageCallbackRequestTO
    {
        [Required]
        public string returnCode { get; set; }

        [Required]
        public string returnMessage { get; set; }

        [Required]
        public string tid { get; set; }

        [Required]
        public string authorizationCode { get; set; }

        [Required]
        public string nsu { get; set; }

        [Required]
        public string installments { get; set; }
        [Required]
        public string orderId { get; set; }
        [Required]
        public string id { get; set; }

    }


}
