using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace InsuranceLettersCommons.TO
{
    public class ExchangeRateValueTO
    {
        public string cotacaoCompra { get; set; }
        public string cotacaoVenda { get; set; }
        public DateTime dataHoraCotacao { get; set; }
        public string tipoBoletim { get; set; }
    }
}
