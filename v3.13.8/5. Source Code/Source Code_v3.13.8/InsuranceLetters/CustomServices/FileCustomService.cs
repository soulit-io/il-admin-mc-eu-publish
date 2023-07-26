using System;
using System.Collections.Generic;
using System.IO;
using InsuranceLettersCommons.Exceptions;
using InsuranceLettersCommons.Model;
using InsuranceLettersCore.Services;
using log4net;
using Newtonsoft.Json.Linq;

namespace InsuranceLetters.CustomServices
{
    public class FileCustomService
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(PDFService));
        private InsuranceLettersEntities db;
        public FileCustomService(InsuranceLettersEntities db)
        {
            this.db = db;
        }

        public void generatePDF(JObject context, string path)
        {
            PDFService pdfService = new PDFService(this.db);
            List<KeyValuePair<string, byte[]>> fileNames;
            try
            {
                // BUILD PDF
                fileNames = pdfService.fetchLettersPDFs(context, context);
            }
            catch (Exception e)
            {
                log.Error(e);
                throw new PdfGenerationException(e);
            }
            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }
            foreach (KeyValuePair<string, byte[]> filename in fileNames)
            {
                string filenamePath = Path.Combine(path, filename.Key);
                File.WriteAllBytes(filenamePath, filename.Value);
            }
        }

        

    }
}