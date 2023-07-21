using InsuranceLettersCommons.Exceptions;
using InsuranceLettersCommons.StepHandler;
using log4net;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Xml;

namespace MastercardInsuranceLetters.CustomStepHandlers
{
	class XMLBenefitsStepHandler : StepHandler
	{
		private static readonly ILog log = LogManager.GetLogger(typeof(XMLBenefitsStepHandler));

		private const string ERR_MC_EMPTY = "ERR_MC_EMPTY";
		private const string ERR_MC_REMOTE = "ERR_MC_REMOTE";

		//private const string BENEFITS_JSONPATH = "$.input.fields[?(@.name=='CODE_BENEFITS')].values[0]";

		public override JObject handleStep(JObject context)
		{
			string xsdPath = ConfigurationManager.AppSettings["MASTERCARD_XSD_PATH"];

			JObject data = JObject.Parse(this.dbHandler.data);
			string BENEFITS_JSONPATH = (string)data["BENEFITS_JSONPATH"];

			JToken benefitsValue = context.SelectToken(BENEFITS_JSONPATH);
			string benefitsXML = (string)benefitsValue["value"];
			//log.Info("BenefitsXML --> " + benefitsXML);

			// CONFIGURATION ATTRIBUTES
			string rootPath = (string) data["BenefitResponseRoot"];
			string xmlnihil = (string)data["BenefitResponseNihil"];
			string decodeBase64 = (string)data["DecodeBase64"];

			// DECODE FROM BASE 64
			if (decodeBase64 == "true") {
				byte[] bytes = Convert.FromBase64String(benefitsXML);
				benefitsXML = Encoding.UTF8.GetString(bytes);
			}

			// CLEAR XML STRING
			string filter = @"xmlns(:\w+)?=""([^""]+)""|xsi(:\w+)?=""([^""]+)"""; // remove namespaces
			benefitsXML = Regex.Replace(benefitsXML, filter, "");
			string filter2 = @"(</?)(\w+:)"; // remove prefixes
			benefitsXML = Regex.Replace(benefitsXML, filter2, "$1");
			benefitsXML = benefitsXML.Replace(xmlnihil.Replace("'", "\""), "");
			
			// NULL RESPONSE
			if (benefitsXML.Trim().Length < 1)
			{
				throw new XMLBenefitStepException(ERR_MC_EMPTY);
			}

			// BUILD XML IN MEMORY
			/*MemoryStream stream = new MemoryStream();
			byte[] xmlData = Encoding.Default.GetBytes(benefitsXML);
			stream.Write(xmlData, 0, xmlData.Length);
			stream.Position = 0;

			XmlReaderSettings settings = new XmlReaderSettings();
			settings.DtdProcessing = DtdProcessing.Prohibit;
			settings.XmlResolver = null;
			XmlReader reader = XmlReader.Create(stream, settings);*/

			XmlDocument doc = new XmlDocument();

			XmlReaderSettings settings = new XmlReaderSettings();
			settings.DtdProcessing = DtdProcessing.Prohibit;
			settings.XmlResolver = null;
			settings.Schemas.Add("", xsdPath);
			settings.ValidationType = ValidationType.Schema;
			StringReader sr = new StringReader(benefitsXML);
			XmlReader reader = XmlReader.Create(sr, settings);

			doc.Load(reader);
			XmlNode root = doc.DocumentElement.SelectSingleNode(rootPath);

			// TRANSLATE INTO CONTEXT
			string json = JsonConvert.SerializeXmlNode(root);
			JObject jsonObj = JObject.Parse(json);
			context["benefit_info"] = jsonObj;

			// HANDLE ERROR RESPONSES
			string response_code = root.SelectSingleNode("Responses/Response/ResponseCode").InnerText;
			if (response_code != "0")
			{
				if (response_code == "BENEFITINFO_VAL_010" || response_code == "BENEFITINFO_VAL_006")
				{
					throw new XMLBenefitStepException(response_code);
				}
				else
				{
					throw new XMLBenefitStepException(ERR_MC_REMOTE);
				}
			}

			benefitsValue["value"] = "-parsed-";
			return context;
		}

		public override bool breakChain()
		{
			return false;
		}
	}
}
