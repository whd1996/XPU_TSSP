using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TSSP.BLL;
using TSSP.DAL;

namespace TSSP.web.pages
{
    public partial class SubmitProjectImage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           //Session["student"] = 1;
        }
        //图片上传
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (GridView3.SelectedRow != null)
            {//成果选中不为空时 才能上传/修改图片
                string psid = GridView3.SelectedRow.Cells[0].Text;//获取成果id 当作图片唯一标识        
                //根据上传图片的ID来获取文件file
                HttpPostedFile file = this.FileUpload1.PostedFile;
                //进入判断，判断文件不是空的，并且长度大于0
                if (file != null && file.ContentLength > 0)
                {
                                            
                    //filepath是文件要保存在数据库中的路径
                    string filePath = "/static/upload/submitProjectImage/" + psid + file.FileName;
                    //存在服务器中的路径
                    file.SaveAs(Server.MapPath("~/static/upload/submitProjectImage/" + psid + file.FileName));                               
                    //图片路径存数据库
                    ProjectSubmissionService pss = new ProjectSubmissionService();
                    ProjectSubmissions ps = new ProjectSubmissions();
                    ps = pss.selectProjectSubmissionById(Convert.ToInt32(psid));
                    ps.SubmissionImage = filePath;
                    pss.UpdateProjectSubmission(ps);
                    //刷新数据
                    GridView3.DataBind();
                    GridView1.DataBind();
                }
            }

        }
        //插入时根据选择的项目和登录的学生自动填充数据  
        protected void InsertButton_Click(object sender, EventArgs e)
        {
            if (GridView1.SelectedRow != null)
            {
                string pid = GridView1.SelectedRow.Cells[0].Text;
                SqlDataSource3.InsertParameters[0].DefaultValue = pid;
                SqlDataSource3.InsertParameters[1].DefaultValue = Convert.ToString(Session["student"]);
            }
        }

        protected void FormView1_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            GridView3.DataBind();
            GridView1.DataBind();
        }

        protected void FormView1_ItemDeleted(object sender, FormViewDeletedEventArgs e)
        {
            GridView3.DataBind();
            GridView1.DataBind();
        }

        protected void FormView1_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            GridView3.DataBind();
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (GridView3.SelectedRow != null)
            {   //成果选中不为空时 才能上传/修改文件
                string psid = GridView3.SelectedRow.Cells[0].Text;//获取成果id 当作文件唯一标识        
                //根据上传文件的ID来获取文件file
                HttpPostedFile file = this.FileUpload2.PostedFile;
                //进入判断，判断文件不是空的，并且长度大于0
                if (file != null && file.ContentLength > 0)
                {

                    //filepath是文件要保存在数据库中的路径
                    string filePath = "/static/upload/submitProjectFile/" + psid + file.FileName;
                    //存在服务器中的路径
                    file.SaveAs(Server.MapPath("~/static/upload/submitProjectFile/" + psid + file.FileName));
                    //文件路径存数据库
                    ProjectSubmissionService pss = new ProjectSubmissionService();
                    ProjectSubmissions ps = new ProjectSubmissions();
                    ps = pss.selectProjectSubmissionById(Convert.ToInt32(psid));
                    ps.SubmissionAttachment = filePath;
                    pss.UpdateProjectSubmission(ps);
                    //刷新数据
                    GridView3.DataBind();
                    GridView1.DataBind();
                }
            }
        }
    }
}