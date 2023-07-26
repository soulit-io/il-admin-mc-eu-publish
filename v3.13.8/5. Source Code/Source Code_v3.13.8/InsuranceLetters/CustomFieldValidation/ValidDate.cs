using InsuranceLettersCommons.FieldValidation;
using InsuranceLettersCommons.TO;
using System;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace InsuranceLettersCommons.FieldValidation
{
    [AttributeUsage(AttributeTargets.Field | AttributeTargets.Method | AttributeTargets.Parameter | AttributeTargets.Property, AllowMultiple = false)]
    public class ValidDate : ValidationAttribute
    {

        //gt lt le ge
        public string comparator { get; set; }

        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {
    
            if (value == null || value.ToString().Length == 0)
            {
                return ValidationResult.Success;
            }
            return !IsDateValid(value.ToString()) ? new ValidationResult(ErrorMessage) : ValidationResult.Success;
        }

        protected bool IsDateValid(string dateS)
        {
            bool result = false;
            try
            {
                DateTime dt = DateTime.ParseExact(dateS, new[] {"yyyy-MM-dd","yyyy-MM-dd hh:mm:ss"},System.Globalization.CultureInfo.InvariantCulture,System.Globalization.DateTimeStyles.None);
                result = true;
            }
            catch { result = false;}

            return result;
        }
    }
}
public class ValidDateValidator : DataAnnotationsModelValidator<ValidDate>
{
    public ValidDateValidator(ModelMetadata metadata, ControllerContext context, ValidDate attribute)
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
