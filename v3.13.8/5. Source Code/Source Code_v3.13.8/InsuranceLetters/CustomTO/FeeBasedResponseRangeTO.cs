using InsuranceLettersCommons.Model;
using System;

namespace InsuranceLettersCommons.TO
{
    public class FeeBasedResponseRangeTO
    {

        public FeeBasedResponseRangeTO(fee_based_range fee_based_range)
        {
            this.range_from = fee_based_range.range_from;
            this.range_to = fee_based_range.range_to;
        }

        public Nullable<int> range_from { get; set; }
        public Nullable<int> range_to { get; set; }
    }

}
