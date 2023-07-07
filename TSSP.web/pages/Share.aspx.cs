using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSSP.web.Views.Student
{
    public partial class Share : System.Web.Mvc.ViewPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session["student"] = 1;
        }
        protected void DetailsView2_ItemCreated(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void DetailsView2_ItemDeleted(object sender, DetailsViewDeletedEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void DetailsView2_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
        {
            GridView1.DataBind();
        }
    }
}