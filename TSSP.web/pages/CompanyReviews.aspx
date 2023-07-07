<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyReviews.aspx.cs" Inherits="TSSP.web.pages.CompanyReviews" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta charset="UTF-8"/>
   <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"/>
  <title>个人简介</title>
 <link rel="stylesheet" href="../../static/stuStatic/layui/css/layui.css"/>
  <link rel="stylesheet" href="../../static/stuStatic/static/css/index.css"/>
   <style>
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
    }
    .myListView {
        /* 添加你的样式属性 */
        display: flex;
        justify-content: center;
        align-items: center;
        width:1289.25px
    }
</style>
</head>
<body>
    <form id="form1" runat="server">

           
  <!-- nav部分 -->
  <div class="nav">
    <div class="layui-container">
      <!-- 公司logo -->
      <div class="nav-logo">
        <a href="index.html">
          <img src="../../static/stuStatic/static/img/logo.png" alt="类友网络"/>
        </a>
      </div>
      <div class="nav-list">
        <button>
          <span></span><span></span><span></span>
        </button>
        <ul class="layui-nav" lay-filter="">
       <li class="layui-nav-item layui-this"><a href="/pages/ProjectSubm">返回提交界面</a></li>
    
        </ul>
      </div>
    </div>
  </div>
          <!-- banner部分 -->
  <div class="banner about">
    <div class="title">
      <p>企业评价</p>
      <p class="en">Reviews</p>
    </div>
  </div>







        <p>
            &nbsp;</p>

        
<script src="../../static/stuStatic/layui/layui.js"></script>
<script>
    layui.config({
        base: '../../static/stuStatic/static/js/'
    }).use('firm');
</script>

        <div class="container">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" DeleteCommand="DELETE FROM [CompanyReviews] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CompanyReviews] ([EnterpriseId], [StudentId], [ReviewText], [Rating]) VALUES (@EnterpriseId, @StudentId, @ReviewText, @Rating)" SelectCommand="SELECT * FROM [CompanyReviews] WHERE ([StudentId] = @StudentId)" UpdateCommand="UPDATE [CompanyReviews] SET [EnterpriseId] = @EnterpriseId, [StudentId] = @StudentId, [ReviewText] = @ReviewText, [Rating] = @Rating WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EnterpriseId" Type="Int32" />
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="ReviewText" Type="String" />
                <asp:Parameter Name="Rating" Type="Int32" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="StudentId" SessionField="student" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="EnterpriseId" Type="Int32" />
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="ReviewText" Type="String" />
                <asp:Parameter Name="Rating" Type="Int32" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

            <br />

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="1408px">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="EnterpriseId" HeaderText="企业编号" SortExpression="EnterpriseId" />
                    <asp:BoundField DataField="StudentId" HeaderText="学生编号" SortExpression="StudentId" />
                    <asp:BoundField DataField="ReviewText" HeaderText="评价文本" SortExpression="ReviewText" />
                    <asp:BoundField DataField="Rating" HeaderText="评分" SortExpression="Rating" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <br />
           </div>
      
        
          <div class="container">
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Height="50px" Width="1407px">
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="EnterpriseId" HeaderText="企业编号" SortExpression="EnterpriseId" />
                    <asp:BoundField DataField="StudentId" HeaderText="学生编号" SortExpression="StudentId" />
                    <asp:BoundField DataField="ReviewText" HeaderText="评价文本" SortExpression="ReviewText" />
                    <asp:BoundField DataField="Rating" HeaderText="评分(5分制)" SortExpression="Rating" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
                    </div>
       
      
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="SELECT * FROM [CompanyReviews] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [CompanyReviews] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CompanyReviews] ([EnterpriseId], [StudentId], [ReviewText], [Rating]) VALUES (@EnterpriseId, @StudentId, @ReviewText, @Rating)" UpdateCommand="UPDATE [CompanyReviews] SET [EnterpriseId] = @EnterpriseId, [StudentId] = @StudentId, [ReviewText] = @ReviewText, [Rating] = @Rating WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="EnterpriseId" Type="Int32" />
                    <asp:Parameter Name="StudentId" Type="Int32" />
                    <asp:Parameter Name="ReviewText" Type="String" />
                    <asp:Parameter Name="Rating" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="EnterpriseId" Type="Int32" />
                    <asp:Parameter Name="StudentId" Type="Int32" />
                    <asp:Parameter Name="ReviewText" Type="String" />
                    <asp:Parameter Name="Rating" Type="Int32" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
          
        </form>
</body>
</html>
