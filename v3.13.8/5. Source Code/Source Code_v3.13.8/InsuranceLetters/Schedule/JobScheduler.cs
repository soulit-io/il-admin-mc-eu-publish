using Quartz;
using Quartz.Impl;
using System.Configuration;

namespace ScheduledTask.ScheduledTasks
{
    public class JobScheduler
    {

        public static void Start()
        {
            IScheduler scheduler = StdSchedulerFactory.GetDefaultScheduler();
            scheduler.Start();

            IJobDetail jobDueEmail = JobBuilder.Create<TicketDueDateEmailJob>().Build();
            IJobDetail jobPendingFeebased = JobBuilder.Create<FeeBasedProcessPendingJob>().Build();
            IJobDetail jobNotificationErrorCancellation = JobBuilder.Create<NotificationErrorCancellationJob>().Build();


            ITrigger triggerDueEmail = TriggerBuilder.Create()
               .WithCronSchedule(ConfigurationManager.AppSettings["QUARTZ_CRON_DUE"] ?? "0 0 0 * * ? 2060")
               .Build();

            ITrigger triggerPendingFeebased = TriggerBuilder.Create()
              .WithCronSchedule(ConfigurationManager.AppSettings["QUARTZ_CRON_FBPENDING"] ?? "0 15 0 * * ? 2060")
              .Build();

            ITrigger triggerNotificationErrorCancellation = TriggerBuilder.Create()
              .WithCronSchedule(ConfigurationManager.AppSettings["QUARTZ_CRON_FBPENDING"] ?? "0 15 0 * * ? 2060")
              .Build();

            scheduler.ScheduleJob(jobDueEmail, triggerDueEmail);
            scheduler.ScheduleJob(jobPendingFeebased, triggerPendingFeebased);
            scheduler.ScheduleJob(jobNotificationErrorCancellation, triggerNotificationErrorCancellation);

            //int QUARTZ_HOUR = Int32.Parse(ConfigurationManager.AppSettings["QUARTZ_TICKET_DUE_HOUR"]);
            //int QUARTZ_MINUTE = Int32.Parse(ConfigurationManager.AppSettings["QUARTZ_TICKET_DUE_MINUTE"]);

            /*
            ITrigger trigger = TriggerBuilder.Create()
                .WithDailyTimeIntervalSchedule
                  (s =>
                     s.WithIntervalInHours(24)
                    .OnEveryDay()
                    .StartingDailyAt(TimeOfDay.HourAndMinuteOfDay(QUARTZ_HOUR, QUARTZ_MINUTE))
                  )
                .Build();
            */
            /*
            ITrigger trigger = TriggerBuilder.Create()
                .WithCronSchedule("0 0/5 * * * ?")
                .Build();
            */

        }
    }
}