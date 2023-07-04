﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace TSSP.web.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult Login()
        {
            ViewBag.Message = "跳转登录页";
            return View();
        }
        public ActionResult CompanyRegister()
        {
            ViewBag.Message = "跳转公司注册页";
            return View();
        }
        public ActionResult Register()
        {
            ViewBag.Message = "跳转注册页";
            return View();
        }
    }
}