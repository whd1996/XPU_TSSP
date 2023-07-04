using System;
using System.Linq;
using TSSP.DAL;

namespace TSSP.BLL
{
    public class EnterpriseService
    {
        XPU_TSSPDataContext db = new XPU_TSSPDataContext();
        public void addEnterprise(Enterprises enterprise)
        {
            db.Enterprises.InsertOnSubmit(enterprise);
            db.SubmitChanges();
        }
        public Enterprises selectEnterpriseByEmail(string email)
        {
            Enterprises enterprise = (from e in db.Enterprises where e.ContactEmail == email select e).FirstOrDefault();
            return enterprise;
        }
    }
}
