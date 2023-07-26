using InsuranceLettersCommons.Exceptions;
using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.StaticTranslation;
using InsuranceLettersCore.Services;
using log4net;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Web;
using InsuranceLetters.CustomTO;
using InsuranceLetters.CustomZip;
using System.Net;

namespace InsuranceLetters.CustomServices
{
    public class CTAProcessHelper
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(CTAProcessHelper));
        private InsuranceLettersEntities db;

        public CTAProcessHelper(InsuranceLettersEntities db)
        {
            this.db = db;
        }
        public string checkCTAFile(JObject ctaContext, HttpPostedFileBase file)
        {
            return "a";
        }

        public string processCTA(JObject ctaContext, HttpPostedFileBase file)
        {
            StaticTranslator translator = StaticTranslator.getInstance(this.db);
            TrackingService trackingService = new TrackingService(this.db);
            InputParserService inputParserService = new InputParserService();
            ExcelParserService excelParserService = new ExcelParserService();
            ApplicationService applicationService = new ApplicationService(this.db);
            PDFService pdfService = new PDFService(this.db);

            EmailService emailService = new EmailService(this.db);

            JObject result = new JObject();

            int line = 0;

            JArray detail = new JArray();

            bool hasBatchId = inputParserService.getInputValueByName(ctaContext, "BATCH_ID")!=null && !string.IsNullOrEmpty(inputParserService.getInputValueByName(ctaContext, "BATCH_ID"));
            string fileName = WebUtility.HtmlDecode(inputParserService.getInputValueByName(ctaContext, "file"));
            
            string formFile = inputParserService.getInputValueByName(ctaContext, "FormFileRadio");
            String batch_id = hasBatchId? inputParserService.getInputValueByName(ctaContext, "BATCH_ID") : trackingService.buildSlug();
            string uploadFolder = ConfigurationManager.AppSettings["CTA_MASSIVE_UPLOAD_PATH"] + batch_id;

            try
            {
                JObject context = new JObject();

                JArray trackingFields = null;
                trackingFields = applicationService.getTrackingFields(ctaContext);

                ctaContext["system"]["error"] = "";
                ctaContext["system"]["error_trace"] = "";

                tracking batchTrack = trackingService.merge(ctaContext, trackingFields);

                context = (JObject)ctaContext.DeepClone();
                context["system"]["slug"] = trackingService.buildSlug();
                context["system"]["batch_id"] = batch_id;
                context["system"]["batch_number"] = batchTrack.id;
                var slug = ctaContext["system"]["slug"];
                String companyName = inputParserService.getInputValueByName(context, "CompanyName");
                if(string.IsNullOrEmpty(companyName))companyName = inputParserService.getInputValueByName(context, "AgencyName");
                bool onCopy = inputParserService.getInputValueByName(context, "chkOnCopy")!=null;
                string copyEmail = inputParserService.getInputValueByName(context, "EmailCopy");
                string ctaApplication = inputParserService.getInputValueByName(context, "cta_application");

                if (hasBatchId)
                {
                    if (!Directory.Exists(uploadFolder))
                    {
                        DirectoryInfo di = Directory.CreateDirectory(uploadFolder);
                    }
                    var path = Path.Combine(uploadFolder, fileName);
                    
                    List<List<string>> excelContent = excelParserService.processExcel(path, companyName);

                    excelContent = addDates(excelContent);

                    result.Add("total_rows", excelContent.Count() - 1);
                    result.Add("status", "generating_reports");
                    ctaContext["system"]["cta_process"] = result;
                    context["system"]["cta_process"] = result;                    

                    //List<JObject> contexts = new List<JObject>();
                    List<string> excelHeader = excelContent[0];
                    excelContent.RemoveAt(0);

                    
                    long parentId = trackingService.findBySlug((string)ctaContext["system"]["slug"]).id;
                    
                    foreach (List<string> excelLine in excelContent)
                    {
                        JObject rowContext = (JObject)context.DeepClone();
                        line += 1;
                        rowContext["system"]["application"] = ctaApplication;
                        rowContext["system"]["slug"] = trackingService.buildSlug();
                        rowContext["system"]["status"] = "letter_emailed";
                        rowContext["system"]["batch_id"] = batch_id;
                        rowContext["system"]["ticket_id"] = "";
                        rowContext["system"]["parent_id"] = parentId.ToString();
                        inputParserService.mergeInputField(rowContext, excelHeader, excelLine);
                        detail.Add(generateCTALetters(rowContext, line, onCopy,copyEmail));
                    }

                    result.Remove("status");
                    result.Add("status", "finished");
                    result.Add("detail", detail);

                }
                
                else
                {
                    long parentId = trackingService.findBySlug((string)ctaContext["system"]["slug"]).id;
                    int travellersNumber = 0;
                    Int32.TryParse(inputParserService.getInputValueByName(context, "travelersNumber"),out travellersNumber);

                    var inputs = ctaContext["input"]["fields"];
                    foreach(var input in inputs)
                    {
                        string inputName = input["name"].ToString();
                        if (inputName == "FirstName")
                        {
                            travellersNumber = input["values"].Count();
                        }
                        
                    }

                    for (int i = 0; i < travellersNumber; i++)
                    {
                        JObject rowContext = (JObject)context.DeepClone();
                        rowContext["system"]["application"] = ctaApplication;
                        rowContext["system"]["slug"] = trackingService.buildSlug();
                        rowContext["system"]["status"] = "letter_emailed";
                        rowContext["system"]["batch_id"] = batch_id;
                        rowContext["system"]["ticket_id"] = "";
                        rowContext["system"]["parent_id"] = parentId.ToString();
                        if (travellersNumber>1) rowContext = setUniqueInputValues(rowContext,i);
                        
                        generateCTALetters(rowContext, line, onCopy, copyEmail, true);
                    }
                    
                }
                ctaContext["system"]["cta_process"] = result;
                sendEmailFinishedProcess(slug.ToString());

            }
            catch (CustomException e)
            {
                log.Error(e.Message, e);
                ctaContext["system"]["error"] = e.Message;
                ctaContext["system"]["error_trace"] = e.StackTrace;
                emailService.sendErrorMail(e);
                result.Remove("status");
                result.Add("status", "error");
                result.Add("error_message", e.Message);
                ctaContext["system"]["cta_process"] = result;
                Directory.Delete(uploadFolder, true);
            }
            catch (Exception e)
            {
                log.Error(e.Message, e);
                ctaContext["system"]["error"] = "ERR_CTA_INVALID_FILE";
                ctaContext["system"]["error_trace"] = e.StackTrace;

                result.Remove("status");
                result.Add("status", "error");
                result.Add("error_message", "ERR_CTA_INVALID_FILE");
                ctaContext["system"]["cta_process"] = result;
                Directory.Delete(uploadFolder, true);
            }            

            return ctaContext.ToString();
        }

        public string uploadCtaFile(JObject ctaContext, HttpPostedFileBase file)
        {
            StaticTranslator translator = StaticTranslator.getInstance(this.db);
            TrackingService trackingService = new TrackingService(this.db);
            InputParserService inputParserService = new InputParserService();
            ExcelParserService excelParserService = new ExcelParserService();
            ApplicationService applicationService = new ApplicationService(this.db);
            PDFService pdfService = new PDFService(this.db);

            EmailService emailService = new EmailService(this.db);

            JObject result = new JObject();

            int line = 0;

            JArray detail = new JArray();

            bool hasBatchId = ctaContext["system"]["batch_id"] != null;
            String batch_id = trackingService.buildSlug();
            string uploadFolder = ConfigurationManager.AppSettings["CTA_MASSIVE_UPLOAD_PATH"] + batch_id;
            string slug = (string)ctaContext["system"]["slug"];
            var trackingBySlug = trackingService.findBySlug(slug);
            var trackingBySlugID = trackingBySlug.id;

            try
            {
                JObject context = new JObject();

                JArray trackingFields = null;
                trackingFields = applicationService.getTrackingFields(ctaContext);

                ctaContext["system"]["error"] = "";
                ctaContext["system"]["error_trace"] = "";

                tracking batchTrack = trackingService.merge(ctaContext, trackingFields);

                context = (JObject)ctaContext.DeepClone();
                context["system"]["slug"] = trackingService.buildSlug();
                context["system"]["batch_id"] = batch_id;
                context["system"]["batch_track"] = trackingBySlugID;
                context["system"]["batch_number"] = batchTrack.id;
                String companyName = inputParserService.getInputValueByName(context, "CompanyName");
                if (string.IsNullOrEmpty(companyName)) companyName = inputParserService.getInputValueByName(context, "AgencyName");
                bool onCopy = inputParserService.getInputValueByName(context, "chkOnCopy") != null;
                string copyEmail = inputParserService.getInputValueByName(context, "EmailCopy");

                if (file != null && file.ContentLength > 0)
                {
                    if (!Directory.Exists(uploadFolder))
                    {
                        DirectoryInfo di = Directory.CreateDirectory(uploadFolder);
                    }
                    var fileName = Path.GetFileName(file.FileName);
                    var path = Path.Combine(uploadFolder, fileName);
                    file.SaveAs(path);

                    List<List<string>> excelContent = excelParserService.processExcel(path, companyName);

                    excelContent = addDates(excelContent);

                    result.Add("total_rows", excelContent.Count() - 1);
                    result.Add("status", "generating_reports");
                    result.Add("batch_id", batch_id);
                    result.Add("batch_track", trackingBySlugID);
                    
                    ctaContext["system"]["cta_process"] = result;                   

                    List<string> excelHeader = excelContent[0];
                    excelContent.RemoveAt(0);

                    JObject rowContext = (JObject)context.DeepClone();
                    long parentId = trackingService.findBySlug((string)ctaContext["system"]["slug"]).id;
                    foreach (List<string> excelLine in excelContent)
                    {
                        line += 1;
                        rowContext["system"]["application"] = "travel_insurance_annual";
                        rowContext["system"]["slug"] = trackingService.buildSlug();
                        rowContext["system"]["status"] = "letter_emailed";
                        rowContext["system"]["batch_id"] = batch_id;
                        rowContext["system"]["ticket_id"] = "";
                        rowContext["system"]["parent_id"] = parentId.ToString();
                        inputParserService.mergeInputField(rowContext, excelHeader, excelLine);

                        //detail.Add(generateCTALetters(rowContext, line, onCopy, copyEmail));
                    }

                    result.Remove("status");
                    result.Add("status", "finished");
                    result.Add("detail", detail);

                }                
                ctaContext["system"]["cta_process"] = result;
                
            }
            catch (CustomException e)
            {
                log.Error(e.Message, e);
                ctaContext["system"]["error"] = e.Message;
                ctaContext["system"]["error_trace"] = e.StackTrace;
                emailService.sendErrorMail(e);
                result.Remove("status");
                result.Add("status", "error");
                result.Add("error_message", e.Message);
                ctaContext["system"]["cta_process"] = result;
                Directory.Delete(uploadFolder, true);
            }
            catch (Exception e)
            {
                log.Error(e.Message, e);
                ctaContext["system"]["error"] = "ERR_CTA_INVALID_FILE";
                ctaContext["system"]["error_trace"] = e.StackTrace;

                result.Remove("status");
                result.Add("status", "error");
                result.Add("error_message", "ERR_CTA_INVALID_FILE");
                ctaContext["system"]["cta_process"] = result;
                Directory.Delete(uploadFolder, true);
            }

            return ctaContext.ToString();
        }

        private JObject setUniqueInputValues(JObject rowContext, int index)
        {
            int inputOrder = 0;
            foreach (var input in rowContext["input"]["fields"])
            {
                int valuesCount = input["values"].Count();
                string inputName = input["name"].ToString();
                if (valuesCount > 1)
                {
                    var valueOnIndex = input["values"][index];

                    rowContext["input"]["fields"][inputOrder]["values"][0] = valueOnIndex;
                }
                inputOrder++;
            }
            return rowContext;
        }
        private List<List<string>> addDates(List<List<string>> excelContent)
        {

            string dateShortFormat = "dd/MM/yyyy";
            string dateTimeFormat = "dd/MM/yyyy HH:mm:ss";
            string inputsDateFormat = "yyyy-MM-dd";
            string[] dateFormats = { "yyyy-MM-dd HH:mm:ss", "yyyy-MM-dd", "MM/dd/yyyy" };

            DateTime transactionDateDate = DateTime.Now;
            string issuanceDate = transactionDateDate.ToString(dateTimeFormat);
            string effectiveDate = transactionDateDate.ToString(dateShortFormat);
            //Expire Date
            DateTime dtExpire = transactionDateDate;
            dtExpire = dtExpire.AddYears(1);
            dtExpire = dtExpire.AddDays(-1);
            string expireDate = dtExpire.ToString(dateShortFormat);
            string expireDateTP = dtExpire.ToString(inputsDateFormat);


            bool first = true;
            foreach (List<string> linea in excelContent)
            {
                if (first)
                {
                    first = false;
                    linea.Add("IssuanceDate");
                    linea.Add("EffectiveDate");
                    linea.Add("ExpireDate");
                    linea.Add("ExpireDateTP");
                }
                else
                {
                    linea.Add(issuanceDate);
                    linea.Add(effectiveDate);
                    linea.Add(expireDate);
                    linea.Add(expireDateTP);
                }
            }

            return excelContent;

        }

        private JObject generateCTALetters(JObject printContext, int line ,bool onCopy,string copyEmail, bool isFormBased = false)
        {

            PDFService pdfService = new PDFService(this.db);
            TrackingService trackingService = new TrackingService(this.db);
            ApplicationService applicationService = new ApplicationService(this.db);
            InputParserService inputParserService = new InputParserService();
            EmailService emailService = new EmailService(this.db);

            string passport = ""; string error = ""; string toEmail = ""; string toName = ""; string ticketId = "";
            JArray trackingFields;

            JObject cta_line_result = new JObject();
            try
            {
                if (!isFormBased)
                {
                    passport = inputParserService.getInputValueByName(printContext, "Passport");
                    cta_line_result.Add("passport", passport);
                    error = inputParserService.getInputValueByName(printContext, "ERR_INVALID_LINE");
                }
                
                if (!string.IsNullOrEmpty(error))
                {
                    cta_line_result.Add("status", "error");
                    cta_line_result.Add("error_message", error);
                    cta_line_result.Add("error_line", line);

                }
                else
                {
                    trackingFields = null;
                    // SET TICKET ID
                    ticketId = (string)printContext["system"]["ticket_id"];

                    if (ticketId == null || ticketId.Trim().Length < 1)
                    {
                        trackingService.setTicketNumber(printContext);
                    }
                    //rgfcta001

                    trackingFields = applicationService.getTrackingFields(printContext);
                    if (isFormBased)
                    {
                        string ctaApplication = inputParserService.getInputValueByName(printContext, "cta_application");
                        printContext["system"]["application"] = ctaApplication;
                    }                    
                    toEmail = (string)printContext.SelectToken("$.input.fields[?(@.name == 'Email')].values[0].value");
                    toName = toEmail;
                    printContext["system"]["email_to"] = toEmail;
                    printContext["system"]["email_to_name"] = toName;
                    trackingService.merge(printContext, trackingFields);
                    emailService.sendLetterEmail(printContext);
                    if (onCopy)
                    {
                        printContext["system"]["email_to"] = copyEmail;
                        printContext["system"]["email_to_name"] = copyEmail;
                        emailService.sendLetterEmail(printContext);
                    }
                    cta_line_result.Add("status", "ok");
                }
            }
            catch (SendEmailException e)
            {
                //si ocurre un error al enviar el mail se registra como ok
                log.Error(e);
                cta_line_result.Add("status", "ok_no_mail");
                trackingService.merge(printContext);
                emailService.sendErrorMail(e);
            }
            catch (PdfGenerationException e)
            {
                log.Error(e);
                cta_line_result.Add("status", "error");
                cta_line_result.Add("error_message", "ERR_GENERIC_CTA_PROCESS");
                cta_line_result.Add("error_line", line);
                printContext["system"]["ticket_id"] = "";
                printContext["system"]["error"] = "ERR_BUILDING_PDF";
                printContext["system"]["error_trace"] = e.StackTrace;
                printContext["system"]["status"] = "error";
                trackingService.merge(printContext);
                emailService.sendErrorMail(e);
            }
            catch (Exception e)
            {
                log.Error(e);
                cta_line_result.Add("status", "error");
                cta_line_result.Add("error_message", e.Message);
                cta_line_result.Add("error_line", line);
                printContext["system"]["ticket_id"] = "";
                printContext["system"]["error"] = "ERR_BUILDING_PDF";
                printContext["system"]["error_trace"] = e.StackTrace;
                printContext["system"]["status"] = "error";
                trackingService.merge(printContext);
                emailService.sendErrorMail(e);
            }
            return cta_line_result;

        }


        private void sendCtaEmail(JObject context)
        {
            try
            {
                EmailService emailService = new EmailService(this.db);
                LinksService linksService = new LinksService(this.db);
                linksService.buildLinks(context);
                emailService.sendTextEmail(context);
            }
            catch (Exception e)
            {
                log.Error("Error sending email: " + e.Message);
            }
        }


        public List<CTAResponseTO> getChildContexts(JObject originalContext)
        {
            CTACustomService trackingService = new CTACustomService(this.db);
            string email = (string)originalContext.SelectToken("$.input.fields[?(@.name == 'LoginEmail')].values[0].value");
            string passport = (string)originalContext.SelectToken("$.input.fields[?(@.name == 'LoginPassport')].values[0].value");
            string icaCountry = (string)originalContext.SelectToken("$.benefit_info.GetBenefitInformationResult.ICACountry");
            string application = "travel_cta";

            if (icaCountry != "BRA")
            {
                application = "schengen_cta";
            }
            List<tracking> parents = trackingService.findByEmail(email,passport, application);
            List<CTAResponseTO> ret = new List<CTAResponseTO>();
            string agency = "";
            string bin = "";
            foreach (tracking parent in parents)
            {
                List<tracking> children = trackingService.findChilds(parent);
                if (children.Count > 0)
                {
                    CTATackingTO parentTackingTo = new CTATackingTO(parent);
                    List<CTATackingTO> childrenTracking = new List<CTATackingTO>();
                    var inputFields = JObject.Parse(parent.CryptoData)["input"]["fields"];
                    foreach(var field in inputFields)
                    {
                        string fieldName = field["name"].ToString();
                        if (fieldName.ToString().Equals("AgencyName"))
                        {
                            agency = field["values"][0]["value"].ToString();
                            parentTackingTo.agency = field["values"][0]["value"].ToString();
                        }
                        if (fieldName.ToString().Equals("CODE_CARD"))
                        {
                            bin = field["values"][0]["value"].ToString();
                            parentTackingTo.agency = field["values"][0]["value"].ToString();
                        }
                    }
                    foreach (tracking child in children)
                    {
                        CTATackingTO childTrackingTO = new CTATackingTO(child);
                        childTrackingTO.email = (string)JObject.Parse(child.CryptoData)["system"]["email_to"];
                        childrenTracking.Add(childTrackingTO);
                        
                    }
                    
                    ret.Add(new CTAResponseTO(parentTackingTo, childrenTracking,agency,bin));
                }
            }
            return ret;
        }

        public void resendTicket(string slug)
        {
            TrackingService trackingService = new TrackingService(this.db);
            EmailService emailService = new EmailService(this.db);
            tracking tracking = trackingService.findBySlug(slug);
            JObject context = JObject.Parse(tracking.CryptoData);
            emailService.sendLetterEmail(context);
        }

        internal void getCTAMassive(string slug, Stream output)
        {
            string generatedPath = ConfigurationManager.AppSettings["CTA_MASSIVE_GENERATED_PATH"];
            string zipName = "tickets.zip";
            CTACustomService ctaService = new CTACustomService(this.db);
            TrackingService trackingService = new TrackingService(this.db);
            FileCustomService fileService = new FileCustomService(this.db);
            tracking parent = trackingService.findBySlug(slug);
            List<tracking> children = ctaService.findChilds(parent);
            
            Directory.CreateDirectory(generatedPath);            
            
            foreach (tracking child in children)
            {
                JObject context = JObject.Parse(child.CryptoData);
                fileService.generatePDF(context, generatedPath);
            }

            ZipHelper.createZipFromPath(generatedPath, output);
            try
            {
                Directory.Delete(generatedPath, true);
            }
            catch (Exception)
            {
                log.Warn("UnauthorizedAccessException - Trying to delete folder: " + generatedPath);
            }
        }

        internal void sendEmailMassive(string slug)
        {
            EmailService emailService = new EmailService(this.db);
            TrackingService trackingService = new TrackingService(this.db);
            JObject context = JObject.Parse(trackingService.findBySlug(slug).CryptoData);
            var inputFields = context["input"]["fields"];
            var trackingBySlug = trackingService.findBySlug(slug);
            var trackingBySlugID = trackingBySlug.id;
            foreach (var field in inputFields)
            {
                string fieldName = field["name"].ToString();
                if (fieldName.ToString().Equals("EmailCopy"))
                {
                    context["system"]["bulk_id"] = trackingBySlugID.ToString();
                    context["system"]["email_to"] = field["values"][0]["value"].ToString();
                    break;
                }
            }

            context["email_type"] = "link_massive";
            emailService.sendTextEmail(context);
        }

        internal void sendEmailFinishedProcess(string slug)
        {
            EmailService emailService = new EmailService(this.db);
            TrackingService trackingService = new TrackingService(this.db);
            JObject context = JObject.Parse(trackingService.findBySlug(slug).CryptoData);
            var inputFields = context["input"]["fields"];
            var trackingBySlug = trackingService.findBySlug(slug);
            var trackingBySlugID = trackingBySlug.id;
            foreach (var field in inputFields)
            {
                string fieldName = field["name"].ToString();
                if (fieldName.ToString().Equals("EmailCopy"))
                {
                    context["system"]["bulk_id"] = trackingBySlugID.ToString();
                    context["system"]["email_to"] = field["values"][0]["value"].ToString();
                    break;
                }
            }

            context["email_type"] = "finished_process";
            emailService.sendTextEmail(context);
        }
    }
}