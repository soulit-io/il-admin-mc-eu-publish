using InsuranceLettersCommons.Model;

namespace InsuranceLettersCommons.TO
{

    public class FeeBasedResponsePlanCharacteristicTO
    {

        public FeeBasedResponsePlanCharacteristicTO(fee_based_plan_characteristic characteristic, FeeBasedResponseRegionTO regionTO)
        {
            this.description = completeDescription(characteristic, regionTO);

        }

        public string description { get; set; }

        public string completeDescription(fee_based_plan_characteristic characteristic, FeeBasedResponseRegionTO regionTO)
        {
            string REGION_CURRENCY = "";
            if ((regionTO != null) && (regionTO.code.Equals("A")))
            {
                REGION_CURRENCY = "€";
            }
            else
            {
                REGION_CURRENCY = "US$";
            }
            REGION_CURRENCY.Replace("{REGION_CURRENCY}", REGION_CURRENCY);
            string characteristicDescription = characteristic.description.Replace("{REGION_CURRENCY}", REGION_CURRENCY);

            return characteristicDescription;
        }

    }

}
