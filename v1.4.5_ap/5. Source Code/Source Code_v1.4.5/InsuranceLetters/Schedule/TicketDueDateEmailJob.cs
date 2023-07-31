using InsuranceLettersCommons.Model;
using Quartz;

namespace ScheduledTaskExample.ScheduledTasks
{
    public class TicketDueDateEmailJob : IJob
    {

        protected InsuranceLettersEntities db = new InsuranceLettersEntities();

        public void Execute(IJobExecutionContext context)
        {
            InsuranceLettersCore.Services.EmailDueService service = new InsuranceLettersCore.Services.EmailDueService(this.db);
            service.processDueMails();

        }
    }
}