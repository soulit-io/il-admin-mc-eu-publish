using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace InsuranceLetters
{
	public class RouteConfig
	{
		public static void RegisterRoutes(RouteCollection routes)
		{
			routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

			Route defRegional = routes.MapRoute(
				name: "DefaultRegional",
				url: "{landing}/{language}/{controller}/{action}/{id}",
				defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
				constraints: new { language = "[a-z]{2}" }
			);
			defRegional.DataTokens.Add("RouteName", "DefaultRegional");

			Route hsbc = routes.MapRoute(
				name: "HSBCRegional",
				url: "hsbc/{landing}/{language}/{controller}/{action}/{id}",
				defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
				constraints: new { language = "[a-z]{2}" }
			);
			hsbc.DataTokens.Add("RouteName", "HSBCRegional");

			Route def = routes.MapRoute(
				name: "Default",
				url: "{controller}/{action}/{id}",
				defaults: new { controller = "Default", action = "Index", id = UrlParameter.Optional }
			);
			def.DataTokens.Add("RouteName", "Default");
		}
	}
}