<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Share.aspx.cs" Inherits="TSSP.web.Views.Student.Share" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"/>
  <title>就业分享</title>
  <link rel="stylesheet" href="../../static/stuStatic/layui/css/layui.css"/>
  <link rel="stylesheet" href="../../static/stuStatic/static/css/index.css"/>
       <style>
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
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
            <li class="layui-nav-item"><a href="/Student/Index">首页</a></li>
          <li class="layui-nav-item"><a href="/pages/Biography">个人简介</a></li>
          <li class="layui-nav-item "><a href="/pages/Project">项目选定</a></li>
       <li class="layui-nav-item"><a href="/pages/ProjectSubm">项目提交</a></li>
          <li class="layui-nav-item layui-this"><a href="/pages/Share">就业分享</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- banner部分 -->
  <div class="banner share">
    <div class="title">
      <p style="color:white">就业分享</p>
      <p class="en" style="color:white">Experience Sh</p>
    </div>
  </div>
  <!-- main部分 -->
 






<script src="../../static/stuStatic/layui/layui.js"></script>
<!--[if lt IE 9]>
  <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
  <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script>
    layui.config({
        base: '../../static/stuStatic/static/js/'
    }).use('firm');
</script>
        <div class="container ">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="SELECT * FROM [InternshipEmploymentExperiences] WHERE ([StudentId] = @StudentId)">
            <SelectParameters>
                <asp:SessionParameter Name="StudentId" SessionField="student" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="1403px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="StudentId" HeaderText="学生编号" SortExpression="StudentId" />
                    <asp:BoundField DataField="ExperienceText" HeaderText="经验分享" SortExpression="ExperienceText" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
            </asp:GridView>

            </div>

        <div class="container ">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="SELECT * FROM [InternshipEmploymentExperiences] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [InternshipEmploymentExperiences] WHERE [Id] = @Id" InsertCommand="INSERT INTO [InternshipEmploymentExperiences] ([StudentId], [ExperienceText]) VALUES (@StudentId, @ExperienceText)" UpdateCommand="UPDATE [InternshipEmploymentExperiences] SET [StudentId] = @StudentId, [ExperienceText] = @ExperienceText WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="ExperienceText" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="ExperienceText" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

            <br />
            <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource2" Height="50px" Width="1395px">
                <Fields>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="StudentId" HeaderText="学生编号" SortExpression="StudentId" />
                    <asp:BoundField DataField="ExperienceText" HeaderText="经验分享" SortExpression="ExperienceText" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>

            </div>
    </form>
</body>
</html>