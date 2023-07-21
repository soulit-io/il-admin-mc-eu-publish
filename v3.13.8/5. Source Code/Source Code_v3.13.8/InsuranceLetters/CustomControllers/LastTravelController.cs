using InsuranceLettersCore.Controllers.Base;
using InsuranceLettersCore.Services;
using InsuranceLettersCommons.Exceptions;
using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.StaticTranslation;
using InsuranceLettersCommons.TO;
using log4net;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using InsuranceLetters.CustomServices;
using Antlr.Runtime;

namespace InsuranceLetters.CustomControllers
{
    public class LastTravelController : BaseViewController
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(LastTravelController));
        private TrackingService trackingService;
        [HttpPost]

        public ActionResult PostFindLastTravel([Bind] TicketFinderTO to)
        {
            trackingService = new TrackingService(this.db);

            LastTravelService service = new LastTravelService(null, null, null, null, null, this.db);
            ApplicationService applicationService = new ApplicationService(this.db);
            StaticTranslator translator = StaticTranslator.getInstance(this.db);
            List<List<KeyValuePair<string, List<string>>>> responseFieldsList = new List<List<KeyValuePair<string, List<string>>>>();
            HashSet<string> apps = new HashSet<string>();
            JObject currentContext;

            try
            {
                currentContext = this.getCurrentContext(null);
            }
            catch (Exception e)
            {
                log.Error(e);
                return new HttpStatusCodeResult(HttpStatusCode.InternalServerError, MissingSlugException.KEY);
            }
            try
            {
                var request = service.getLastTravel(currentContext);

                trackingService.merge(currentContext);
                return Content(request.ToString(), "application/json");

            }
            catch (Exception e)
            {
                log.Error(e);
                return new HttpStatusCodeResult(HttpStatusCode.InternalServerError, e.Message);
            }

        }

    }
}
