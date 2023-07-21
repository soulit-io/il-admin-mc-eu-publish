using Common.Logging;
using InsuranceLettersCommons.Exceptions;
using InsuranceLettersCommons.TO;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Configuration;
using System.IO;
using System.Net;

namespace InsuranceLetters.CustomServices
{
    public class AccessStageData
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(FeeBasedProcessHelper));
        private const string accessStageContentNotFoundException = "ACCESS_STAGE_CONTENT_NOT_FOUND";
        public AccessStageData()
        {
        }


        public JObject getAccessStagePayData(string transactionId, string email, string identity)
        {
            
            try
            {
                string rt;
                string url =
                    ConfigurationManager.AppSettings["AccessPayWebServiceURL"]
                    + "?gateway=" + ConfigurationManager.AppSettings["AccessPayWebServiceGateway"] + "&orderId="
                    + transactionId;

                WebRequest request = WebRequest.Create(url);
                request.Method = "GET";
                string API = ConfigurationManager.AppSettings["AccessPayWebServiceAPI"];
                string APIKey = ConfigurationManager.AppSettings[
                    "AccessPayWebServiceAPIKey"
                ];
                request.Headers.Add("API", API);
                request.Headers.Add("APIKey", APIKey);

                request.ContentType = "application/json";

                WebResponse response = request.GetResponse();

                Stream dataStream = response.GetResponseStream();

                StreamReader reader = new StreamReader(dataStream);

                rt = reader.ReadToEnd();
                
                reader.Close();
                response.Close();

                var content = Newtonsoft.Json.JsonConvert.DeserializeObject<dynamic>(rt);
                int contentCount = 0;
                foreach(var con in content["content"])
                {
                    var customer = con["customer"];
                    var customerEmail = (string)customer["email"];
                    var customerIdentity = (string)customer["identity"];
                    if (identity == customerIdentity)
                    {
                        return content["content"][contentCount];
                    }
                    else { contentCount++; }
                }

                throw new CustomException (accessStageContentNotFoundException);
            }
            catch (Exception ex)
            {
                log.Debug(ex.Message);
                return new JObject();
            }
        }
    }
}