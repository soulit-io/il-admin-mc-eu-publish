using Quartz;
using Quartz.Impl;
using System;
using System.Configuration;

namespace ScheduledTaskExample.ScheduledTasks
{
    public class JobScheduler
    {
        public static void Start()
        {
            IScheduler scheduler = StdSchedulerFactory.GetDefaultScheduler();
            scheduler.Start();

            IJobDetail jobDueEmail = JobBuilder.Create<TicketDueDateEmailJob>().Build();

            ITrigger triggerDueEmail = TriggerBuilder.Create()
               .WithCronSchedule(ConfigurationManager.AppSettings["QUARTZ_CRON_DUE"] ?? "0 0 0 * * ? 2060")
               .Build();

            scheduler.ScheduleJob(jobDueEmail, triggerDueEmail);

        }
    }
}