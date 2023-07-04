using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TSSP.BLL;
using TSSP.DAL;
namespace TSSP.web.Views.Enterprise
{
    public partial class index : System.Web.Mvc.ViewPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //获取登录后传入session的图片路径  写入页面
            //Session["logo"] = "~/static/Assets/images/logo.jpg";
            String logoPath = Convert.ToString(Session["logo"]);
            LogoImageButton.ImageUrl = logoPath;
            int enterpriseId = Convert.ToInt32(Session["enterprise"]);
            //根据公司id关联查询出公司简介对象 写入页面
            /* Session["enterprise"] = 1;*/
            CompanyProfileService cpfs = new CompanyProfileService();
            CompanyProfiles companyProfile = cpfs.selectCompanyProfileById(enterpriseId);
            //IntroductionImage.ImageUrl = "~/static/Assets/upload/banner.jpg";
            IntroductionImage.ImageUrl = companyProfile.IntroductionImage;

        }
    }
}