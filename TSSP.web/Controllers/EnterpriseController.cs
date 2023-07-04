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
            ViewBag.Message = "Your application description page.";
            return View();
        }

        public ActionResult CompanyProfile()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }
    }
}