using InsuranceLettersCommons.FieldValidation;
using System;
using System.ComponentModel.DataAnnotations;
using System.Web.Mvc;

namespace InsuranceLettersCommons.FieldValidation
{
    [AttributeUsage(AttributeTargets.Field | AttributeTargets.Method | AttributeTargets.Parameter | AttributeTargets.Property, AllowMultiple = false)]
    public class ValidCPF : ValidationAttribute
    {
        protected override ValidationResult IsValid(object value, ValidationContext validationContext)
        {

            if (value == null || value.ToString().Length == 0)
            {
                return ValidationResult.Success;
            }
            return !validaCPF(value.ToString()) ? new ValidationResult(ErrorMessage) : ValidationResult.Success;
        }

        protected bool validaCPF(string cpf)
        {
            int[] multiplicador1 = new int[9] { 10, 9, 8, 7, 6, 5, 4, 3, 2 };
            int[] multiplicador2 = new int[10] { 11, 10, 9, 8, 7, 6, 5, 4, 3, 2 };

            string tempCpf;

            string digito;

            int soma;

            int resto;

            cpf = cpf.Trim();

            cpf = cpf.Replace(".", "").Replace("-", "");

            if (cpf.Length != 11)

                return false;

            tempCpf = cpf.Substring(0, 9);

            soma = 0;

            for (int i = 0; i < 9; i++)

                soma += int.Parse(tempCpf[i].ToString()) * multiplicador1[i];

            resto = soma % 11;

            if (resto < 2)

                resto = 0;
            else
                resto = 11 - resto;
            digito = resto.ToString();
            tempCpf = tempCpf + digito;
            soma = 0;
            for (int i = 0; i < 10; i++)
                soma += int.Parse(tempCpf[i].ToString()) * multiplicador2[i];
            resto = soma % 11;
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = digito + resto.ToString();
            return cpf.EndsWith(digito);

        }


    }
}
public class ValidCPFValidator : DataAnnotationsModelValidator<ValidCPF>
{
    public ValidCPFValidator(ModelMetadata metadata, ControllerContext context, ValidCPF attribute)
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
