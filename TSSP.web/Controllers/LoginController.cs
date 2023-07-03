using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TSSP.BLL;
using TSSP.DAL;

namespace TSSP.web.Controllers
{
    public class LoginController : Controller
    {

        [HttpPost]
        public ActionResult CheckLogin(FormCollection form)
        {
            LoginServices ls = new LoginServices();
            string email = form["email"];
            string password = form["password"];
            String role = form["role"];
            if (role.Equals("0"))//0表示企业 1表示大学生
            {
                Enterprises enterprise = ls.EnterpriseCheckLogin(email, password);
                if (enterprise == null)
                    return new HttpStatusCodeResult(401, "企业邮箱或密码错误");          
                else
                {
                    System.Web.HttpContext.Current.Session["enterprise"] = enterprise.Id;
                    return RedirectToAction("../Enterprise/Index");
                }
            }
            else {
                 Students stu = ls.StudentCheckLogin(email, password);
                if (stu != null) {
                    //HttpContext.Current.Session[key] = value;
                    //System.Web.HttpContext.Current.Session["student"] = stu.Id;
                    Session["student"]= stu.Id;
                    Session["username"] = stu.Nickname;
                    return RedirectToAction("../Student/Index");
                }
                return new HttpStatusCodeResult(401, "大学生邮箱号或密码错误");
            }

        }
    }
}