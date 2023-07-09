<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Biography.aspx.cs" Inherits="TSSP.web.Views.Student.Biography" %>

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
          <li class="layui-nav-item layui-this"><a href="/pages/Biography">个人简介</a></li>
          <li class="layui-nav-item "><a href="/pages/Project">项目选定</a></li>
       <li class="layui-nav-item"><a href="/pages/ProjectSubm">项目提交</a></li>
          <li class="layui-nav-item"><a href="/pages/Share">就业分享</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- banner部分 -->


  <div class="banner product">
    <div class="title">
      <p>个人简介<p class="en">Biography</p>
    </div>
  </div>


<div class="container">







  <!-- main部分 -->
            <p>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="SELECT * FROM [Students] WHERE ([Id] = @Id)" DeleteCommand="DELETE FROM [Students] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Students] ([FullName], [Nickname], [Gender], [Email], [Phone], [Address], [Password]) VALUES (@FullName, @Nickname, @Gender, @Email, @Phone, @Address, @Password)" UpdateCommand="UPDATE [Students] SET [FullName] = @FullName, [Nickname] = @Nickname, [Gender] = @Gender, [Email] = @Email, [Phone] = @Phone, [Address] = @Address, [Password] = @Password WHERE [Id] = @Id">
                    <DeleteParameters>
                        <asp:Parameter Name="Id" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="FullName" Type="String" />
                        <asp:Parameter Name="Nickname" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:SessionParameter Name="Id" SessionField="student" Type="Int32" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="FullName" Type="String" />
                        <asp:Parameter Name="Nickname" Type="String" />
                        <asp:Parameter Name="Gender" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="Phone" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Password" Type="String" />
                        <asp:Parameter Name="Id" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </p>
         
 
  
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

        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <div>


        </div>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" GridLines="Horizontal" Height="471px" Width="1176px">
            <AlternatingRowStyle BackColor="#F7F7F7" />
            <EditRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="FullName" HeaderText="姓名" SortExpression="FullName" />
                <asp:BoundField DataField="Nickname" HeaderText="昵称" SortExpression="Nickname" />
                <asp:BoundField DataField="Gender" HeaderText="性别" SortExpression="Gender" />
                <asp:BoundField DataField="Email" HeaderText="邮箱" SortExpression="Email" />
                <asp:BoundField DataField="Phone" HeaderText="手机号" SortExpression="Phone" />
                <asp:BoundField DataField="Address" HeaderText="地址" SortExpression="Address" />
                <asp:BoundField DataField="Password" HeaderText="密码" SortExpression="Password" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
            <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
            <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
        </asp:DetailsView>

 </div>
    <p>
        &nbsp;</p>
   
        <div class="container">
        <asp:DetailsView ID="DetailsView2" runat="server" AutoGenerateRows="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Horizontal" Height="220px" Width="1175px" DataKeyNames="Id">
            <EditRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" InsertVisible="False" ReadOnly="True" />
                <asp:BoundField DataField="StudentId" HeaderText="学生编号" SortExpression="StudentId" />
                <asp:BoundField DataField="ResumeText" HeaderText="简历内容" SortExpression="ResumeText" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="SELECT * FROM [PersonalResumes] WHERE ([StudentId] = @StudentId)" DeleteCommand="DELETE FROM [PersonalResumes] WHERE [Id] = @Id" InsertCommand="INSERT INTO [PersonalResumes] ([StudentId], [ResumeText]) VALUES (@StudentId, @ResumeText)" UpdateCommand="UPDATE [PersonalResumes] SET [StudentId] = @StudentId, [ResumeText] = @ResumeText WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="ResumeText" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="StudentId" SessionField="student" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="ResumeText" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    
    <p>
        &nbsp;</p>
        </form>
</body>
</html>