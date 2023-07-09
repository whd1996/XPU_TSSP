using System;
using System.Net.Mail;
using System.Web.Mvc;
using TSSP.BLL;
using TSSP.DAL;

namespace TSSP.web.Controllers
{
    public class EmailController : Controller
    {
        public string WEBADRESS = "http://xpu.tssp:8080/";

        [HttpPost]
        public ActionResult GetCode(FormCollection form)
        {
            StudentService ss = new StudentService();
            EnterpriseService es = new EnterpriseService();
            string email = form["email"];

            string role = form["role"];
            if (role.Equals("0"))//0表示企业 1表示大学生
            {
                Enterprises dbEnterprise = es.selectEnterpriseByEmail(email);
                if (dbEnterprise == null)
                    return new HttpStatusCodeResult(401, "该企业邮箱号不存在！");

            }
            else
            {
                Students dbStu = ss.selectStudentByEmail(email);
                if (dbStu == null)
                    return new HttpStatusCodeResult(401, "该学生邮箱号不存在！");
            }
            SmtpClient client = new SmtpClient("smtp.qq.com", 587);
            Random Rdm = new Random();
            //产生0到100000的随机数
            int iRdm = Rdm.Next(0000, 99999);
            Session["code"] = iRdm;
            string str = "欢迎使用人才服务社交平台(" + WEBADRESS + ")，您本次的验证码是" + iRdm + ",3分钟之内有效，请尽快使用! " + DateTime.Now;
            MailMessage msg = new MailMessage("1263969092@qq.com", email, "wbpcmxordjfqhcef", str);
            client.UseDefaultCredentials = false;
            System.Net.NetworkCredential basicAuthenticationInfo =
             new System.Net.NetworkCredential("1263969092@qq.com", "wbpcmxordjfqhcef");
            client.Credentials = basicAuthenticationInfo;
            client.EnableSsl = true;
            client.Send(msg);
            return Content("验证码发送成功,请注意查收!");
        }

    }
}