using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;


namespace TSSP.web
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");
            //主要是MVC模式下 需要控制层跳转来访问aspx页面 但是如果我们用了数据源控件
            //为了解决数据源控件在mvc模式下无法启用自动编辑、删除
            //现在，应该能够通过访问/pages/your-page的URL来访问your-page.aspx页面。
            //确保将your-page.aspx文件放在你的应用程序的pages文件夹下。
            routes.MapPageRoute(
             "PageRoute",                        // 路由名称
             "pages/{*pagePath}",                // 匹配的路径模式
               "~/pages/{pagePath}.aspx"          // 要访问的aspx页面路径
            );
            RouteTable.Routes.RouteExistingFiles = true;
            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Login", id = UrlParameter.Optional }
            );
        }
    }
}
