using InsuranceLettersCommons.Model;

namespace InsuranceLettersCommons.TO
{

    public class FeeBasedResponseRegionTO
    {

        public FeeBasedResponseRegionTO(fee_based_region fee_based_region)
        {
            this.code = fee_based_region.code;
            this.name = fee_based_region.name;

        }

        public string code { get; set; }
        public string name { get; set; }
    }


}
