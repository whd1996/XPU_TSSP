using System.Linq;
using TSSP.DAL;
namespace TSSP.BLL
{
    public class LoginServices
    {

        XPU_TSSPDataContext db = new XPU_TSSPDataContext();

        public int CheckLogin(string email, string password)
        {
            Enterprises enterprises = (from e in db.Enterprises where e.ContactEmail == email && e.Password == password select e).FirstOrDefault();
            if (enterprises != null)  //用户名和密码正确
            {
                return enterprises.Id;
            }
            else  //用户名或密码错误
            {
                return 0;
            }
        }




    }



}