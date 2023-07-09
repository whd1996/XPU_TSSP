using System;
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
                    // System.Web.HttpContext.Current.Session["enterprise"] = enterprise.Id;
                    Session["enterprise"] = enterprise.Id;
                    Session["isLogin"] = true;
                    return Redirect("/Enterprise/Index");
                }
            }
            else
            {
                Students stu = ls.StudentCheckLogin(email, password);
                if (stu != null)
                {
                    //HttpContext.Current.Session[key] = value;
                    //System.Web.HttpContext.Current.Session["student"] = stu.Id;
                    Session["student"] = stu.Id;
                    Session["isLogin"] = true;
                    return Redirect("/Student/Index");
                }
                return new HttpStatusCodeResult(401, "大学生邮箱号或密码错误");
            }

        }
        [HttpPost]
        public ActionResult Register(FormCollection form)
        {
            LoginServices ls = new LoginServices();
            StudentService ss = new StudentService();
            EnterpriseService es = new EnterpriseService();
            string email = form["email"];
            string password = form["password"];
            String role = form["role"];
            if (role.Equals("0"))//0表示企业 1表示大学生
            {
                Enterprises dbEnterprise = es.selectEnterpriseByEmail(email);
                if (dbEnterprise != null)
                    return new HttpStatusCodeResult(401, "该企业邮箱号已被使用！");
                Enterprises enterprise = new Enterprises();
                enterprise.Password = password;
                enterprise.ContactEmail = email;
                //添加企业
                es.addEnterprise(enterprise);
                //跳转到登录页面
                return Redirect("/Home/Login");
            }
            else
            {
                Students dbStu = ss.selectStudentByEmail(email);
                if (dbStu != null)
                    return new HttpStatusCodeResult(401, "该学生邮箱号已被使用！");
                Students stu = new Students();
                stu.Email = email;
                stu.Password = password;
                ss.addStudent(stu);
                return Redirect("/Home/Login");
            }

        }
        [HttpPost]
        public ActionResult ForgetPwd(FormCollection form)
        {
            LoginServices ls = new LoginServices();
            StudentService ss = new StudentService();
            EnterpriseService es = new EnterpriseService();
            string email = form["email"];
            String role = form["role"];
            String code = form["code"];
            if (Convert.ToString(Session["code"]) != code)
                return new HttpStatusCodeResult(401, "验证码错误，请重试！");
            if (role.Equals("0"))//0表示企业 1表示大学生
            {
                Enterprises dbEnterprise = es.selectEnterpriseByEmail(email);
                if (dbEnterprise == null)
                    return new HttpStatusCodeResult(401, "该企业邮箱号不存在！");
                dbEnterprise.Password = "123456";
                es.UpdateEnterprise(dbEnterprise);
                //重置密码              
                return Content("学生邮箱密码重置为123456成功！返回登录");
            }
            else
            {
                Students dbStu = ss.selectStudentByEmail(email);
                if (dbStu == null)
                    return new HttpStatusCodeResult(401, "该学生邮箱号不存在！");
                dbStu.Password = "123456";
                ss.UpdateStudent(dbStu);
                return Content("企业邮箱密码重置为123456成功！返回登录");
            }

        }
    }
}