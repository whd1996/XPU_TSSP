<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project.aspx.cs" Inherits="TSSP.web.Views.Student.Project" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"/>
  <title>项目选择</title>
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
          <li class="layui-nav-item layui-this"><a href="/pages/Project">项目选定</a></li>
       <li class="layui-nav-item"><a href="/pages/ProjectSubm">项目提交</a></li>

           <li class="layui-nav-item"><a href="/pages/Share">就业分享</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- banner部分 -->
  <div class="banner news">
    <div class="title">
      <p>项目选定</p>
      <p class="en">Project</p>
    </div>
  </div>
<!--[if lt IE 9]>
  <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
  <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<script src="../../static/stuStatic/layui/layui.js"></script>
<script>
  layui.config({
    base: '../../static/stuStatic/static/js/' 
  }).use('firm'); 
</script>
          <div class="container">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="130px" Width="1422px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="EnterpriseId" HeaderText="企业编号" SortExpression="EnterpriseId" />
                <asp:BoundField DataField="Name" HeaderText="项目名称" SortExpression="Name" />
                <asp:BoundField DataField="Category" HeaderText="项目分类" SortExpression="Category" />
                <asp:BoundField DataField="Requirements" HeaderText="项目要求" SortExpression="Requirements" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView></div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="SELECT * FROM [Projects]"></asp:SqlDataSource>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" DeleteCommand="DELETE FROM [ProjectSubmissions] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ProjectSubmissions] ([ProjectId], [StudentId], [SubmissionText], [SubmissionImage], [SubmissionAttachment]) VALUES (@ProjectId, @StudentId, @SubmissionText, @SubmissionImage, @SubmissionAttachment)" SelectCommand="SELECT * FROM [ProjectSubmissions] WHERE ([ProjectId] = @ProjectId)" UpdateCommand="UPDATE [ProjectSubmissions] SET [ProjectId] = @ProjectId, [StudentId] = @StudentId, [SubmissionText] = @SubmissionText, [SubmissionImage] = @SubmissionImage, [SubmissionAttachment] = @SubmissionAttachment WHERE [Id] = @Id">
                  <DeleteParameters>
                      <asp:Parameter Name="Id" Type="Int32" />
                  </DeleteParameters>
                  <InsertParameters>
                      <asp:Parameter Name="ProjectId" Type="Int32" />
                      <asp:Parameter Name="StudentId" Type="Int32" />
                      <asp:Parameter Name="SubmissionText" Type="String" />
                      <asp:Parameter Name="SubmissionImage" Type="String" />
                      <asp:Parameter Name="SubmissionAttachment" Type="String" />
                  </InsertParameters>
                  <SelectParameters>
                      <asp:ControlParameter ControlID="GridView1" Name="ProjectId" PropertyName="SelectedValue" Type="Int32" />
                  </SelectParameters>
                  <UpdateParameters>
                      <asp:Parameter Name="ProjectId" Type="Int32" />
                      <asp:Parameter Name="StudentId" Type="Int32" />
                      <asp:Parameter Name="SubmissionText" Type="String" />
                      <asp:Parameter Name="SubmissionImage" Type="String" />
                      <asp:Parameter Name="SubmissionAttachment" Type="String" />
                      <asp:Parameter Name="Id" Type="Int32" />
                  </UpdateParameters>
        </asp:SqlDataSource>
        <br />
        <div class="container">
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="1414px">
            <AlternatingRowStyle BackColor="White" />
            <CommandRowStyle BackColor="#D1DDF1" Font-Bold="True" />
            <EditRowStyle BackColor="#2461BF" />
            <FieldHeaderStyle BackColor="#DEE8F5" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="ProjectId" HeaderText="ProjectId" SortExpression="ProjectId" />
                <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                <asp:BoundField DataField="SubmissionText" HeaderText="项目描述" SortExpression="SubmissionText" />
                <asp:BoundField DataField="SubmissionImage" HeaderText="成果图路径" SortExpression="SubmissionImage" />
                <asp:BoundField DataField="SubmissionAttachment" HeaderText="成果附件" SortExpression="SubmissionAttachment" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:DetailsView>
   </div>
              </form>
</body>
</html>