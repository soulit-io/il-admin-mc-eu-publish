using InsuranceLettersCommons.FieldValidation;
using System;
using System.ComponentModel.DataAnnotations;
using System.Globalization;
using System.Linq;
using System.Web.Mvc;

namespace InsuranceLettersCommons.FieldValidation
{
    [AttributeUsage(AttributeTargets.Field | AttributeTargets.Method | AttributeTargets.Parameter | AttributeTargets.Property, AllowMultiple = false)]
    public class ValidCountry : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
            if (value == null || value.ToString().Length == 0)
            {
                return ValidationResult.Success;
            }
            return !IsCountryCodeValid(value.ToString()) ? new ValidationResult(ErrorMessage) : ValidationResult.Success;
        }

        protected bool IsCountryCodeValid(string countryCode)
        {
            return CultureInfo
                .GetCultures(CultureTypes.SpecificCultures)
                    .Select(culture => new RegionInfo(culture.LCID))
                        .Any(region => region.ThreeLetterISORegionName == countryCode);
        }


    }
}
public class ValidCountryValidator : DataAnnotationsModelValidator<ValidCountry>
{
    public ValidCountryValidator(ModelMetadata metadata, ControllerContext context, ValidCountry attribute)
        : base(metadata, context, attribute)
    {
        if (!attribute.IsValid(context.HttpContext.Request.Form[metadata.PropertyName]))
        {
            var propertyName = metadata.PropertyName;
            context.Controller.ViewData.ModelState[propertyName].Errors.Clear();
            context.Controller.ViewData.ModelState[propertyName].Errors.Add(attribute.ErrorMessage);
        }
    }




}
