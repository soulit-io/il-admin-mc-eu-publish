using InsuranceLettersCommons.Model;
using InsuranceLettersCommons.StepHandler;
using InsuranceLettersCore.Services;
using log4net;
using Newtonsoft.Json.Linq;

namespace InsuranceLetters.WebStepHandlers
{
    public class RenewHandler : StepHandler
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(RenewHandler));

        public override JObject handleStep(JObject context)
        {
            // Entra si corresponde copiar los datos para la renovación
            if (! string.IsNullOrEmpty((string)context["system"]["renew_slug"]) )
            {
                TrackingService service = new TrackingService(this.db);
                ApplicationService applicationService = new ApplicationService(this.db);

                tracking ticketTrack = service.findBySlug((string)context["system"]["renew_slug"]);
                JObject originalContext = JObject.Parse(ticketTrack.CryptoData);

                context["input"] = originalContext["input"];

                context["system"]["renew_slug"] = "";

            }


            return context;


            /*
            JObject ticketContext = null;
            tracking ticketTrack = null;
            JObject currentContext = null;
            tracking currentTrack = null;

            ticketTrack = 
            currentTrack = service.buildNewTracking(this.Request, this.Landing, this.Language, currentSlug, step);
            ticketContext = JObject.Parse(ticketTrack.CryptoData);

            try
            {
                currentContext = JObject.Parse(currentTrack.CryptoData);
            }
            catch (Exception)
            {

                currentContext = JObject.Parse(currentTrack.data);
            }


            currentContext["input"] = ticketContext["input"];
            currentContext["links"] = ticketContext["links"];
            currentTrack.CryptoData = currentContext.ToString();
            JArray trackingFields = applicationService.getTrackingFields(ticketContext);
            currentTrack = service.save(currentTrack, currentContext, trackingFields);
            */

        }

        public override bool breakChain()
        {
            return false;
        }
    }
}