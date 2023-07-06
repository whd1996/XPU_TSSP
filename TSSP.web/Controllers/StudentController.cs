using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TSSP.web.Controllers
{
    public class StudentController : Controller
    {
        public ActionResult Index()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }
        public ActionResult Biography()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        } 
        public ActionResult Project()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }
            public ActionResult ProjectSubm()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }
       
        public ActionResult Share()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }
        public ActionResult CompanyReviews()
        {
            ViewBag.Message = "Your application description page.";
            return View();
        }
    }
}