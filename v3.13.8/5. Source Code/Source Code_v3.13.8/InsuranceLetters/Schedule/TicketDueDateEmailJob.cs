using InsuranceLettersCommons.Model;
using Quartz;
using log4net;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Diagnostics;


namespace ScheduledTask.ScheduledTasks
{
    public class TicketDueDateEmailJob : IJob
    {

        protected InsuranceLettersEntities db = new InsuranceLettersEntities();
        private static readonly ILog log = LogManager.GetLogger(typeof(TicketDueDateEmailJob));
        public void Execute(IJobExecutionContext context)
        {
            log.Debug(">>>> GC.MEM - Start: " + GC.GetTotalMemory(false).ToString());
            InsuranceLettersCore.Services.EmailDueService service = new InsuranceLettersCore.Services.EmailDueService(this.db);
            service.processDueMails();
            log.Debug(">>>> GC.MEM - End__: " + GC.GetTotalMemory(false).ToString());
        }
    }
}