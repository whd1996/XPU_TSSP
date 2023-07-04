using System;
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
            CompanyProfiles companyProfile = db.CompanyProfiles.Where(e => e.EnterpriseId== enterpriseId).FirstOrDefault();
            return companyProfile;
        }
    }
}
