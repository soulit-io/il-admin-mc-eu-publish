using InsuranceLettersCommons.Exceptions;
using log4net;
using System;
using System.Collections.Generic;
using ClosedXML.Excel;
using System.Linq;
using System.Net;

namespace InsuranceLetters.CustomServices
{
    public class ExcelParserService
    {

        private static readonly ILog log = LogManager.GetLogger(typeof(ExcelParserService));
        private const string StatusEmptyLine = "-1";
        private const string StatusInvalidLine = "0";
        private const string InvalidLineValue = "ERR_INVALID_LINE";
        private const string WorksheetName = "data";
        private const string InvalidCompanyNameException = "ERR_CTA_INVALID_COMPANY";
        private const string InvalidFileException = "ERR_CTA_INVALID_FILE";

        public List<List<string>> processExcel(string path, string companyName)
        {
            List<List<string>> excelContent = new List<List<string>>();
            
            XLWorkbook workbook = new XLWorkbook(path); 
            IXLWorksheet ws1 = workbook.Worksheet(WorksheetName);

            var rows = ws1.Rows().ToList()
                    .Where(r => (r.Cell(1).Value.ToString() != StatusEmptyLine) && (r.Cell(1).Value.ToString() != StatusInvalidLine));

            foreach (IXLRow row in rows)
            {
                var excelLine = new List<string>();
                foreach (IXLCell cell in row.Cells())
                {
                    IXLAddress address = cell.Address;
                    int rowNum = address.RowNumber;
                    int columnNum = address.ColumnNumber;
                    string inputValue;
                    if (cell.HasFormula)
                    {
                        inputValue = cell.CachedValue.ToString();
                    }
                    else
                    {
                        inputValue= cell.Value.ToString();
                    }
                     
                    if (rowNum == 2 && columnNum==18)
                    {
                        if (!inputValue.Equals(WebUtility.HtmlDecode(companyName), StringComparison.InvariantCultureIgnoreCase))
                        {
                            throw new CustomException(InvalidCompanyNameException);
                        }
                    }
                    //Checking the validity of the line(status column shouldnt be 0)
                    //Status is in column 1
                    if (rowNum > 1 && columnNum == 1)
                    {
                        if (inputValue.Equals(StatusInvalidLine))
                        {
                            inputValue = InvalidLineValue;
                            //excelLine.Add("error");
                        }
                    }

                    
                    excelLine.Add(inputValue);
                }
                //Se fuerzan las fechas de emisión


                excelContent.Add(excelLine);
            }

            if (excelContent.Count()<=1)
            {
                throw new CustomException(InvalidFileException);
            }
            
            return excelContent;
        }

    }
}