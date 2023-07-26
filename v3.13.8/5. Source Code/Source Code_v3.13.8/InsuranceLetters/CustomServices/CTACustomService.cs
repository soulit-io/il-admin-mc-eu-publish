using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using InsuranceLettersCommons.DataAccessObjects;
using InsuranceLettersCommons.Model;
using log4net;

namespace InsuranceLetters.CustomServices
{
    public class CTACustomService
    {
        private static readonly ILog log = LogManager.GetLogger(typeof(CTACustomService));

        private InsuranceLettersEntities db;

        public CTACustomService(InsuranceLettersEntities db)
        {
            this.db = db;
        }

        public List<tracking> findByEmail(string email, string passport, string application)
        {
            BaseDAO<tracking> dao = new BaseDAO<tracking>(this.db);
            List<Expression<Func<tracking, bool>>> terms = new List<Expression<Func<tracking, bool>>>();
            terms.Add(t => 
                      t.tracking_property.Any(tp => 
                                              tp.name == "email" && 
                                              tp.value == email));
            terms.Add(t =>
                      t.tracking_property.Any(tp =>
                                              tp.name == "PassportCTA" &&
                                              tp.value == passport));
            terms.Add(t => t.application == application);
            return dao.findBy(terms);
        }
        public List<tracking> findChilds(tracking parentTracking)
        {
            BaseDAO<tracking> dao = new BaseDAO<tracking>(this.db);
            List<Expression<Func<tracking, bool>>> terms = new List<Expression<Func<tracking, bool>>>();
            terms = new List<Expression<Func<tracking, bool>>>();
            terms.Add(t =>
                        t.tracking_property.Any(tp =>
                                                tp.name == "parentId" &&
                                                tp.value == parentTracking.id.ToString()));
            return dao.findBy(terms);
        }
    }
}