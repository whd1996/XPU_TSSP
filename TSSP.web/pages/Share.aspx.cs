using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TSSP.BLL;
using TSSP.DAL;

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

        protected void InsertButton_Click(object sender, EventArgs e)
        {
            if (GridView2.SelectedRow != null)
            {
                string parentId = GridView2.SelectedRow.Cells[0].Text;
                SqlDataSource4.InsertParameters[0].DefaultValue = parentId;
                SqlDataSource4.InsertParameters[1].DefaultValue = "评论";
                SqlDataSource4.InsertParameters[2].DefaultValue = parentId;
                SqlDataSource4.InsertParameters[3].DefaultValue = Convert.ToString(Session["student"]);
                GridView2.DataBind();
                GridView1.DataBind();
            }
        }
        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            GridView2.DataBind();
            GridView1.DataBind();
        }

        protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
        {
            GridView2.DataBind();
            GridView1.DataBind();
        }

        protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            GridView2.DataBind();
            GridView1.DataBind();
        }

        protected void InsertButton_Click1(object sender, EventArgs e)
        {
            SqlDataSource2.InsertParameters[0].DefaultValue = Convert.ToString(Session["student"]);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label1.Text = GridView1.SelectedRow.Cells[0].Text;
        }
        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label2.Text = GridView2.SelectedRow.Cells[0].Text;
        }
        protected void InsertButton_Click2(object sender, EventArgs e)
        {
            SqlDataSource5.InsertParameters[0].DefaultValue=GridView1.SelectedRow.Cells[0].Text;
            SqlDataSource5.InsertParameters[1].DefaultValue = Convert.ToString(Session["student"]);
            SqlDataSource5.InsertParameters[2].DefaultValue = "分享";
            GridView2.DataBind();
            GridView1.DataBind();
        }
    }
}