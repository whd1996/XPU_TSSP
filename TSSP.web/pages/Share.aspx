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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="1170px">
            <Fields>
                <asp:BoundField DataField="StudentId" HeaderText="学生id" SortExpression="StudentId" />
                <asp:BoundField DataField="ExperienceText" HeaderText="经验分享" SortExpression="ExperienceText" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString2 %>" DeleteCommand="DELETE FROM [InternshipEmploymentExperiences] WHERE [Id] = @Id" InsertCommand="INSERT INTO [InternshipEmploymentExperiences] ([StudentId], [ExperienceText]) VALUES (@StudentId, @ExperienceText)" SelectCommand="SELECT * FROM [InternshipEmploymentExperiences] WHERE ([StudentId] = @StudentId)" UpdateCommand="UPDATE [InternshipEmploymentExperiences] SET [StudentId] = @StudentId, [ExperienceText] = @ExperienceText WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="ExperienceText" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="StudentId" SessionField="student" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="ExperienceText" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

            </div>

        <div class="container ">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="background-color:#FFF8DC;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ExperienceTextLabel" runat="server" Text='<%# Eval("ExperienceText") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="background-color:#008A8C;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ExperienceTextTextBox" runat="server" Text='<%# Bind("ExperienceText") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                    <tr>
                        <td>未返回数据。</td>
                    </tr>
                </table>
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                    </td>
                    <td>&nbsp;</td>
                    <td>
                        <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ExperienceTextTextBox" runat="server" Text='<%# Bind("ExperienceText") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="background-color: #DCDCDC;color: #000000;width:100px">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ExperienceTextLabel" runat="server" Text='<%# Eval("ExperienceText") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                <tr runat="server" style="background-color:#DCDCDC;color: #000000;">
                                    <th runat="server"></th>
                                    <th runat="server">Id</th>
                                    <th runat="server">StudentId</th>
                                    <th runat="server">ExperienceText</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style="text-align: center;background-color: #CCCCCC;font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000;"></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ExperienceTextLabel" runat="server" Text='<%# Eval("ExperienceText") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString2 %>" DeleteCommand="DELETE FROM [InternshipEmploymentExperiences] WHERE [Id] = @Id" InsertCommand="INSERT INTO [InternshipEmploymentExperiences] ([StudentId], [ExperienceText]) VALUES (@StudentId, @ExperienceText)" SelectCommand="SELECT * FROM [InternshipEmploymentExperiences] WHERE ([StudentId] = @StudentId)" UpdateCommand="UPDATE [InternshipEmploymentExperiences] SET [StudentId] = @StudentId, [ExperienceText] = @ExperienceText WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="ExperienceText" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:SessionParameter Name="StudentId" SessionField="student" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="ExperienceText" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

            </div>
    </form>
</body>
</html>