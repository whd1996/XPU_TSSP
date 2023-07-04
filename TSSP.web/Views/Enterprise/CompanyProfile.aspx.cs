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
    public partial class Companyprofile : System.Web.Mvc.ViewPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["enterprise"] = 1;
            //获取登录后传入session的id  
            int enterpriseId = Convert.ToInt32(Session["enterprise"]);

            //根据公司id关联查询出企业基本信息对象 把企业名称 写入页面
            EnterpriseService es = new EnterpriseService();
            Enterprises enterprise = es.selectEnterpriseById(enterpriseId);
            ENamelabel.Text = enterprise.CompanyName;
            //把logo写入页面
            LogoImageButton.ImageUrl = enterprise.LogoImage;

            //根据公司id关联查询出公司简介对象  写入页面
            CompanyProfileService cpfs = new CompanyProfileService();
            CompanyProfiles companyProfile = cpfs.selectCompanyProfileById(enterpriseId);
            if (companyProfile != null)
            {
                CompanyTbx.Text = companyProfile.IntroductionText;
                IntroductionImage.ImageUrl = companyProfile.IntroductionImage;
            }
        }
    }
}