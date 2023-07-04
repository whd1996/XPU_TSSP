using System;
using System.Linq;
using TSSP.DAL;
namespace TSSP.BLL
{
    public class LoginServices
    {

        XPU_TSSPDataContext db = new XPU_TSSPDataContext();

        public Enterprises EnterpriseCheckLogin(string email, string password)
        {
            Enterprises enterprise = (from e in db.Enterprises where e.ContactEmail == email && e.Password == password select e).FirstOrDefault();
            return enterprise;
        }
        public Students StudentCheckLogin(string email, string password)
        {
            Students student = (from s in db.Students where s.Email == email && s.Password == password select s).FirstOrDefault();
            return student;
        }
    
    }
}