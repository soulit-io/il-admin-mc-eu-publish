using System;
using InsuranceLetters.CustomServices;
using InsuranceLettersCommons.Exceptions;
using InsuranceLettersCore.Controllers.Base;
using log4net;
using Newtonsoft.Json.Linq;
using System.Configuration;
using System.IO;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;
using InsuranceLettersCommons.StaticTranslation;

namespace InsuranceLetters.CustomControllers
{

    public class CTAController : BaseViewController
    {


        private static readonly ILog log = LogManager.GetLogger(typeof(FeeBasedController));
        /*
        private TrackingService trackingService;
        private ApplicationService applicationService;
        private FeeBasedProcessHelper fbProcessHelper;
        private EmailService emailService;
        private LinksService linksService;
        private InputParserService inputParserService;
        private WebServiceService wsService;
        */
        public CTAController()
        {/*
            trackingService = new TrackingService(this.db);
            applicationService = new ApplicationService(this.db);
            emailService = new EmailService(this.db);
            linksService = new LinksService(this.db);
            inputParserService = new InputParserService();
            wsService = new WebServiceService(); 
            fbProcessHelper = new FeeBasedProcessHelper(applicationService, trackingService, emailService, linksService, inputParserService, this.db);
        */
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult CtaMassive(HttpPostedFileBase file =null)
        {
            StaticTranslator translator = StaticTranslator.getInstance(this.db);
            string ctaResult = "";
            CTAProcessHelper ctaProcessService = new CTAProcessHelper(this.db);
            JObject originalContext = this.getCurrentContext(null);
            try
            {
                
                ctaResult = ctaProcessService.processCTA(originalContext, file);
                originalContext["system"]["cta_process"] = ctaResult;
            }
            catch (MissingSlugException e)
            {
                //log.Error(e);
                this.Session["redirect_error"] = "ERR_MISSING_SLUG";
            }
            originalContext["system"]["flash"] = translator.translate(this.Language, "INFO_CANCEL_TICKET_SUCCESS_FB");
            return Content(JsonConvert.SerializeObject(originalContext), "application/json");
        }

        [HttpPost]
        [ValidateInput(false)]
        public ActionResult uploadCtaFile(HttpPostedFileBase file)
        {
            string ctaResult = "";
            try
            {
                CTAProcessHelper ctaProcessService = new CTAProcessHelper(this.db);
                JObject originalContext = this.getCurrentContext(null);
                ctaResult = ctaProcessService.uploadCtaFile(originalContext, file);
                originalContext["system"]["cta_process"] = ctaResult;
            }
            catch (MissingSlugException e)
            {
                //log.Error(e);
                this.Session["redirect_error"] = "ERR_MISSING_SLUG";
            }
            return Content(ctaResult.ToString(), "application/json");
        }

        [HttpGet]
        public virtual ActionResult DownloadTemplate()
        {
            string templateFile = ConfigurationManager.AppSettings["CTA_MASSIVE_TEMPLATE_PATH"];
            return File(templateFile, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", Path.GetFileName(templateFile));
        }

        [HttpGet]
        public ActionResult GetChildContext()
        {
            try
            { 
                CTAProcessHelper ctaProcessService = new CTAProcessHelper(this.db);
                JObject originalContext = this.getCurrentContext(null);
                var result = ctaProcessService.getChildContexts(originalContext);
                return Content(JsonConvert.SerializeObject(result), "application/json");
            }
            catch (Exception e)
            {
                return null;
            }
            
        }

        [HttpPost]
        public ActionResult PostResend(string childSlug)
        {
            CTAProcessHelper ctaProcessService = new CTAProcessHelper(this.db);
            ctaProcessService.resendTicket(childSlug);
            return Content(childSlug);
        }

        [HttpGet]
        public ActionResult GetCTAMassiveTickets(string slug)
        {
            CTAProcessHelper ctaProcessService = new CTAProcessHelper(this.db);
            MemoryStream fileStream = new MemoryStream();
            string filename = "tickets.zip";
            ctaProcessService.getCTAMassive(slug, fileStream);
            HttpContext.Response.AddHeader("content-disposition", "attachment; filename=" + filename);
            return File(fileStream, filename);
        }

        [HttpPost]
        public ActionResult PostSendEmailMassive(string parentSlug)
        {
            CTAProcessHelper ctaProcessService = new CTAProcessHelper(this.db);
            HttpStatusCode statusCode = HttpStatusCode.OK;
            try
            {
                ctaProcessService.sendEmailMassive(parentSlug);
            }
            catch (Exception)
            {
                statusCode = HttpStatusCode.InternalServerError;
            }
            return new HttpStatusCodeResult(statusCode);
        }

    }
}
