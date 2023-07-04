using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TSSP.web.Controllers
{
    public class EnterpriseController :Controller
    {

        public ActionResult Index()
        {           
            return View();
        }

        public ActionResult CompanyProfile()
        {
            ViewBag.Message = "公司简介页";
            return View();
        }
        public ActionResult UpdateEnterprise()
        {
            ViewBag.Message = "企业基本信息修改";
            return View();
        }
    }
}