using InsuranceLettersCommons.FieldValidation;
using ScheduledTaskExample.ScheduledTasks;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Http;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace InsuranceLetters
{
	// Nota: para obtener instrucciones sobre cómo habilitar el modo clásico de IIS6 o IIS7, 
	// visite http://go.microsoft.com/?LinkId=9394801

	public class WebApiApplication : System.Web.HttpApplication
	{
		protected void Application_Start()
		{

            ServicePointManager.SecurityProtocol = (SecurityProtocolType)3072; //TLS 1.2s
            AreaRegistration.RegisterAllAreas();

			string l4net = Server.MapPath("~/Resources/log4net.config");
			log4net.Config.XmlConfigurator.ConfigureAndWatch(new System.IO.FileInfo(l4net));

			WebApiConfig.Register(GlobalConfiguration.Configuration);
			FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
			RouteConfig.RegisterRoutes(RouteTable.Routes);
			BundleConfig.RegisterBundles(BundleTable.Bundles);
			JobScheduler.Start();
		}

		protected void Application_BeginRequest(object sender, EventArgs e)
		{

            if (Request.Cookies["__RequestVerificationToken"] == null)
            {
                Response.Cookies.Add(new HttpCookie("__RequestVerificationToken", "x"));

            }
		}
	}
}