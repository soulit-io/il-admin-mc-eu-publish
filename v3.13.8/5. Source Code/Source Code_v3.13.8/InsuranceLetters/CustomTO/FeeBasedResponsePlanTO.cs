using InsuranceLettersCommons.Model;
using System;
using System.Collections.Generic;
using System.Globalization;

namespace InsuranceLettersCommons.TO
{

    public class FeeBasedResponsePlanTO
    {
        public long plan_id { get; set; }
        public string plan_name { get; set; }
        public long plan_pricing_id { get; set; }
        public string currency_code { get; set; }
        public string country_code { get; set; }
        public string date_from { get; set; }
        public string date_to { get; set; }
        public string unit_price { get; set; }
        public string total_price { get; set; }
        public string currency_symbol;
        public string convertion_rate { get; set; }
        public int passengers { get; set; }
        public bool annual { get; set; }
        public double days { get; set; }

        public string date_to_trip { get; set; }
        public double days_trip { get; set; }
        public Nullable<long> annual_plan_assoc { get; set; }
        public FeeBasedResponseRegionTO region { get; set; }
        public FeeBasedResponseRangeTO range { get; set; }
        public List<FeeBasedResponseBenefitTO> benefits { get; set; }
        public List<FeeBasedResponsePlanCharacteristicTO> characteristics { get; set; }

        public FeeBasedResponsePlanTO(fee_based_plan_pricing plan_pricing, FeeBasedRequestTO to, decimal cotiz, fee_based_country_currency country_config)
        {
            this.currency_code = plan_pricing.ben_currency_code;

            //this.unit_price = plan_pricing.price.Value.ToString("F2", CultureInfo.CreateSpecificCulture(country_config.specificCulture));
            this.convertion_rate = decimal.Round(cotiz, 2, MidpointRounding.AwayFromZero).ToString("F2", CultureInfo.CreateSpecificCulture(country_config.specificCulture));

            decimal unit = decimal.Round(plan_pricing.price.Value, 2, MidpointRounding.AwayFromZero) * decimal.Round(cotiz, 2, MidpointRounding.AwayFromZero);

            decimal tot = to.passengers * decimal.Round(unit, 2, MidpointRounding.AwayFromZero);

            this.total_price = decimal.Round(tot, 2, MidpointRounding.AwayFromZero).ToString("F2", CultureInfo.CreateSpecificCulture(country_config.specificCulture));
            this.unit_price = decimal.Round(unit, 2, MidpointRounding.AwayFromZero).ToString("F2", CultureInfo.CreateSpecificCulture(country_config.specificCulture));

            this.currency_symbol = country_config.symbol;
            this.country_code = to.countryCode;

            this.passengers = to.passengers;
            this.plan_name = plan_pricing.fee_based_plan.name;
            this.plan_id = plan_pricing.fee_based_plan.id;

            this.plan_pricing_id = plan_pricing.id;

            this.annual = plan_pricing.fee_based_plan.annual == 0 ? false : true;
            this.annual_plan_assoc = plan_pricing.fee_based_plan.annual_plan_assoc;

            if (this.annual)
            {
                this.days = 365;
            }
            else
            {
                this.days = to.days;
            }

            this.region = plan_pricing.region_id != null ? new FeeBasedResponseRegionTO(plan_pricing.fee_based_region) : null;

            this.range = plan_pricing.range_id != null ? new FeeBasedResponseRangeTO(plan_pricing.fee_based_range) : null;

            this.date_from = to.dateFrom;
            this.date_to = to.dateTo;

            this.date_to_trip = to.dateToTrip;

            this.days_trip = to.days;

            this.benefits = new List<FeeBasedResponseBenefitTO>();
            this.characteristics = new List<FeeBasedResponsePlanCharacteristicTO>();

            foreach (fee_based_coverage coverage in plan_pricing.fee_based_plan.fee_based_coverage)
            {
                FeeBasedResponseBenefitTO ben = new FeeBasedResponseBenefitTO(coverage, country_config, to, annual);
                this.benefits.Add(ben);
            }

            this.benefits.Sort((x, y) => y.distribution.CompareTo(x.distribution));

            foreach (fee_based_plan_characteristic characteristic in plan_pricing.fee_based_plan.fee_based_plan_characteristic)
            {
                FeeBasedResponsePlanCharacteristicTO c = new FeeBasedResponsePlanCharacteristicTO(characteristic, region);
                this.characteristics.Add(c);
            }

        }

    }

}
