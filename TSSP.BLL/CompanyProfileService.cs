using System.Linq;
using TSSP.DAL;
namespace TSSP.BLL
{
    public class CompanyProfileService
    {
        XPU_TSSPDataContext db = new XPU_TSSPDataContext();
        //根据公司id关联查询公司介绍
        public CompanyProfiles selectCompanyProfileById(int enterpriseId)
        {
            CompanyProfiles companyProfile = db.CompanyProfiles.Where(e => e.EnterpriseId == enterpriseId).FirstOrDefault();
            return companyProfile;
        }
        //修改公司介绍
        public void UpdateCompanyProfile(CompanyProfiles companyProfile)
        {
            CompanyProfiles e1 = db.CompanyProfiles.Where(e => e.Id == companyProfile.Id).FirstOrDefault();
            if (e1 != null)
            {
                try
                {
                    //用修改后的值给修改前的值赋值
                    e1 = companyProfile;
                    db.SubmitChanges();//执行
                }
                catch { }
            }
        }
    }
}
