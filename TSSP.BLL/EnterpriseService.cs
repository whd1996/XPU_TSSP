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
        //根据邮箱号查询企业 
        public Enterprises selectEnterpriseByEmail(string email)
        {
            Enterprises enterprise = (from e in db.Enterprises where e.ContactEmail == email select e).FirstOrDefault();
            return enterprise;
        }
        //根据id查询企业  lambda表达式写法
        public Enterprises selectEnterpriseById(int id)
        {
            return db.Enterprises.Where(e => e.Id == id).FirstOrDefault();
        }

        public void UpdateEnterprise(Enterprises enterprise)
        {
            Enterprises e1 = db.Enterprises.Where(e => e.Id == enterprise.Id).FirstOrDefault();
            if (e1 != null)
            {
                try
                {
                    //用修改后的值给修改前的值赋值
                    e1 = enterprise;
                    db.SubmitChanges();//执行
                }
                catch { }
            }
        }
    }
}
