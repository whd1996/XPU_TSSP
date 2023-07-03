using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSSP.web.Views.Student
{
    public partial class Index : System.Web.Mvc.ViewPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["student"] = 1;
            string  username = Convert.ToString(Session["username"]);       
            Label1.Text = Convert.ToString(username);
            //SqlDataSource1.SelectParameters["Id"].DefaultValue = Convert.ToString(id);
        }
    }
}