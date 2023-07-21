using InsuranceLettersCommons.Model;
using System;
using System.Globalization;

namespace InsuranceLettersCommons.TO
{

    public class FeeBasedResponseBenefitTO
    {

        public FeeBasedResponseBenefitTO(fee_based_coverage coverage, fee_based_country_currency country_config, FeeBasedRequestTO to, bool annual)
        {
            this.benefit_code = coverage.fee_based_benefit.code;
            this.benefit_name = coverage.fee_based_benefit.name;

            this.additional_coverage = coverage.additional_coverage;
            this.applies_to = coverage.applies_to;
            this.bundle_type = coverage.bundle_type;
            this.coverage_type = coverage.coverage_type;
            this.occur_begin_time = coverage.occur_begin_time;
            this.occur_currency = coverage.occur_currency;
            this.occur_end_time = coverage.occur_end_time;
            this.occur_max_amt = coverage.occur_max_amt;
            this.occur_min_amt = coverage.occur_min_amt;
            this.occur_misc = coverage.occur_misc;
            this.occur_time_unit = coverage.occur_time_unit;
            this.payment_type = coverage.payment_type;
            this.policy_currency = coverage.policy_currency;
            this.policy_max_amount = coverage.policy_max_amount;
            this.policy_max_occurs = coverage.policy_max_occurs;
            this.policy_region_restriction = coverage.policy_region_restriction;
            this.policy_time_imit = coverage.policy_time_imit;
            this.policy_time_unit = coverage.policy_time_unit;
            this.qualifying_requirement = coverage.qualifying_requirement;
            this.distribution = coverage.distribution.Value.ToString(CultureInfo.CreateSpecificCulture(country_config.specificCulture));
            this.period_description_anual = coverage.fee_based_benefit.period_description_annual;
            this.period_description_per_trip = coverage.fee_based_benefit.period_description_per_trip;
            this.coverage_description = completeCoverageDescription(this.occur_end_time, to, annual, coverage);
        }

        public string benefit_code { get; set; }
        public string benefit_name { get; set; }
        public string additional_coverage { get; set; }
        public string applies_to { get; set; }
        public string bundle_type { get; set; }
        public string coverage_type { get; set; }
        public Nullable<int> occur_begin_time { get; set; }
        public string occur_currency { get; set; }
        public Nullable<int> occur_end_time { get; set; }
        public Nullable<int> occur_max_amt { get; set; }
        public Nullable<int> occur_min_amt { get; set; }
        public string occur_misc { get; set; }
        public string occur_time_unit { get; set; }
        public string payment_type { get; set; }
        public string policy_currency { get; set; }
        public Nullable<int> policy_max_amount { get; set; }
        public Nullable<int> policy_max_occurs { get; set; }
        public string policy_region_restriction { get; set; }
        public Nullable<int> policy_time_imit { get; set; }
        public string policy_time_unit { get; set; }
        public string qualifying_requirement { get; set; }
        public string distribution { get; set; }
        public string coverage_description { get; set; }
        public string period_description_anual { get; set; }
        public string period_description_per_trip { get; set; }



        private string completeCoverageDescription(int? occur_end_time, FeeBasedRequestTO to, bool annual, fee_based_coverage coverage)
        {

            string DAYS = to.productCD == "MBK" ? "60" : "31";
            string DATE_FROM = !annual ? DateTime.ParseExact(to.dateFrom, "yyyy-MM-dd", CultureInfo.InvariantCulture).ToString("dd/MM/yyyy") : "";
            string DATE_TO = !annual ? DateTime.ParseExact(to.dateTo, "yyyy-MM-dd", CultureInfo.InvariantCulture).ToString("dd/MM/yyyy") : "";
            string coverageDescription = annual ? coverage.fee_based_benefit.period_description_annual : coverage.fee_based_benefit.period_description_per_trip;
            coverageDescription = coverageDescription.Replace("{DAYS}", DAYS);


            coverageDescription = coverageDescription.Replace("{DATE_FROM}", DATE_FROM);
            coverageDescription = coverageDescription.Replace("{DATE_TO}", DATE_TO);

            return coverageDescription;




        }
    }

}
