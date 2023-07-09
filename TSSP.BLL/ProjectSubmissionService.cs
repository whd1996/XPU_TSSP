using System.Linq;
using TSSP.DAL;

namespace TSSP.BLL
{
    public class ProjectSubmissionService
    {
        XPU_TSSPDataContext db = new XPU_TSSPDataContext();
        public ProjectSubmissions selectProjectSubmissionById(int psid)
        {
            ProjectSubmissions projectSubmission = (from s in db.ProjectSubmissions where s.Id == psid select s).FirstOrDefault();
            return projectSubmission;
        }
        public void UpdateProjectSubmission(ProjectSubmissions ps)
        {
            ProjectSubmissions dbps = db.ProjectSubmissions.Where(e => e.Id == ps.Id).FirstOrDefault();
            if (dbps != null)
            {
                try
                {
                    //用修改后的值给修改前的值赋值
                    dbps = ps;
                    db.SubmitChanges();//执行
                }
                catch { }
            }
        }
    }
}
