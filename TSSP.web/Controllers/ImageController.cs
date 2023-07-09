using System;
using System.Web;
using System.Web.Mvc;
using TSSP.BLL;
using TSSP.DAL;

namespace TSSP.web.Controllers
{
    public class ImageController : Controller
    {
        //图片上传demo

        public ActionResult Upload()
        {
            return View();
        }
        [HttpPost]//表单的提交为Post方式，必须加上
        public ActionResult UploadLogo(HttpPostedFileBase file)
        {
            if (file != null)//如果文件不为空进入判断
            {
                if (file.ContentLength == 0)//如果文件长度是0,也就是没有文件的话
                {
                    return new HttpStatusCodeResult(404, "未选择文件！");
                }
                else
                {
                    int eid = Convert.ToInt32(Session["enterprise"]);
                    EnterpriseService es = new EnterpriseService();
                    Enterprises enterprise = es.selectEnterpriseById(eid);
                    //否则就保存已经上传成功的文件到目标文件夹里
                    file.SaveAs(Server.MapPath("~/static/Assets/upload/logo" + eid + file.FileName));
                    string imgPath = "/static/Assets/upload/logo" + eid + file.FileName;//拼接 图片url 
                    enterprise.LogoImage = imgPath;
                    es.UpdateEnterprise(enterprise);
                    return Redirect("/pages/UpdateEnterprise");
                }
            }
            return new HttpStatusCodeResult(501, "出错啦");
        }
        [HttpPost]
        public ActionResult UploadBgi(HttpPostedFileBase file)
        {
            if (file != null)//如果文件不为空进入判断
            {
                if (file.ContentLength == 0)//如果文件长度是0,也就是没有文件的话
                {
                    return new HttpStatusCodeResult(404, "未选择文件！");
                }
                else
                {
                    int eid = Convert.ToInt32(Session["enterprise"]);
                    CompanyProfileService cps = new CompanyProfileService();
                    CompanyProfiles companyProfile = cps.selectCompanyProfileById(eid);
                    //否则就保存已经上传成功的文件到目标文件夹里
                    file.SaveAs(Server.MapPath("~/static/Assets/upload/bgi" + eid + file.FileName));
                    string imgPath = "/static/Assets/upload/bgi" + eid + file.FileName;//拼接 图片url 
                    companyProfile.IntroductionImage = imgPath;
                    cps.UpdateCompanyProfile(companyProfile);

                    return Redirect("/pages/UpdateCompanyProfile");
                }
            }
            return new HttpStatusCodeResult(501, "出错啦");
        }

    }
}