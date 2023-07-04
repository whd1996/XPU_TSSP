using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TSSP.web.Views.Enterprise
{
    public partial class UpdateEnterprise : System.Web.Mvc.ViewPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["enterprise"] = 1;
            string enterpriseId = Convert.ToString(Session["enterprise"]);
            Label1.Text = enterpriseId;
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {//激活编辑button的事件
            this.GridView1.EditIndex = e.NewEditIndex;

   
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {//取消编辑状态的事件
            GridView1.EditIndex = -1;      
        }
    }
}