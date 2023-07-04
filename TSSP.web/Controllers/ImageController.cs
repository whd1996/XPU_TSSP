using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

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
        public ActionResult FileUpload(HttpPostedFileBase file)
        {
            if (file != null)//如果文件不为空进入判断
            {
                if (file.ContentLength == 0)//如果文件长度是0,也就是没有文件的话
                {
                    return View("../Image/Upload"); ;//返回视图
                }
                else
                {
                    //否则就保存已经上传成功的文件到目标文件夹里
                    file.SaveAs(Server.MapPath("~/static/Assets/upload/" + file.FileName));
                    return Redirect("/static/Assets/upload/"+file.FileName);
                }
            }
            return View("../Image/Upload");
        }

    }
}