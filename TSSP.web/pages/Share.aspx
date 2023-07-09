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
        <hr/>
        <div class="container ">
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="SELECT * FROM [InternshipEmploymentExperiences]">
        </asp:SqlDataSource>

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="1403px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CellPadding="4" ForeColor="#333333" GridLines="None">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="StudentId" HeaderText="学生编号" SortExpression="StudentId" />
                    <asp:BoundField DataField="ExperienceText" HeaderText="经验分享" SortExpression="ExperienceText" />
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>

            </div>

        <div class="container ">
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="SELECT * FROM [InternshipEmploymentExperiences] WHERE (([Id] = @Id) AND ([StudentId] = @StudentId))" DeleteCommand="DELETE FROM [InternshipEmploymentExperiences] WHERE [Id] = @Id" InsertCommand="INSERT INTO [InternshipEmploymentExperiences] ([StudentId], [ExperienceText]) VALUES (@StudentId, @ExperienceText)" UpdateCommand="UPDATE [InternshipEmploymentExperiences] SET [StudentId] = @StudentId, [ExperienceText] = @ExperienceText WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="ExperienceText" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView1" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                <asp:SessionParameter Name="StudentId" SessionField="student" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="ExperienceText" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

            <asp:FormView ID="FormView2" runat="server" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource2" ForeColor="#333333" Width="1401px" OnItemDeleted="FormView1_ItemDeleted" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    StudentId:
                    <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>' />
                    <br />
                    ExperienceText:
                    <asp:TextBox ID="ExperienceTextTextBox" runat="server" Text='<%# Bind("ExperienceText") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <asp:LinkButton ID="NewButton" runat="server" BackColor="Yellow" CausesValidation="False" CommandName="New" Text="新的分享" />
                </EmptyDataTemplate>
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <InsertItemTemplate>
                    经验分享:
                    <asp:TextBox ID="ExperienceTextTextBox" runat="server" Text='<%# Bind("ExperienceText") %>' Height="118px" Width="1402px" />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" BackColor="yellow" Text="确认分享" OnClick="InsertButton_Click1" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    StudentId:
                    <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Bind("StudentId") %>' />
                    <br />
                    ExperienceText:
                    <asp:Label ID="ExperienceTextLabel" runat="server" Text='<%# Bind("ExperienceText") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" BackColor="green" CommandName="Edit" Text="编辑" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="删除" BackColor="red"/>
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" BackColor="Yellow" Text="新的分享" />
                </ItemTemplate>
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
            </asp:FormView>
           
             </div>
     
            
            <hr />
             <p>
             &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;选中了id=
             <asp:Label ID="Label1" runat="server"></asp:Label>的实习经验分享
            </p>
        <div class="container">          
            <asp:FormView ID="FormView3" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource5" Width="1399px" Height="90px" OnItemDeleted="FormView1_ItemDeleted" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>'/>
                <br />
                ParentId:
                <asp:TextBox ID="ParentIdTextBox" runat="server" Text='<%# Bind("ParentId") %>'/>
                <br />
                EntityType:
                <asp:TextBox ID="EntityTypeTextBox" runat="server" Text='<%# Bind("EntityType") %>'/>
                <br />
                EntityId:
                <asp:TextBox ID="EntityIdTextBox" runat="server" Text='<%# Bind("EntityId") %>'/>
                <br />
                StudentId:
                <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>'/>
                <br />
                CommentText:
                <asp:TextBox ID="CommentTextTextBox" runat="server" Text='<%# Bind("CommentText") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <EmptyDataTemplate>
                <asp:LinkButton ID="NewButton" runat="server" BackColor="Yellow" CausesValidation="False" CommandName="New" Text="写个评论吧！" />
            </EmptyDataTemplate>
            <InsertItemTemplate>
                <br />
                请评论:
                <asp:TextBox ID="CommentTextTextBox" runat="server" Text='<%# Bind("CommentText") %>' Height="76px" Width="1382px" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" BackColor="Yellow" Text="确认" OnClick="InsertButton_Click2" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                请评论:
                <asp:Label ID="CommentTextLabel" runat="server" Text='<%# Bind("CommentText") %>' />
                <br />
                <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Backcolor="yellow" Text="确认" />
            </ItemTemplate>
        </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" 
                InsertCommand="INSERT INTO Comments(EntityId, StudentId, EntityType, CommentText) VALUES (@a, @b, @c, @CommentText )" >
                <InsertParameters>
                    <asp:Parameter Name="a" />
                    <asp:Parameter Name="b" />
                    <asp:Parameter Name="c" />
                    <asp:Parameter Name="CommentText" Type="String"/>
                </InsertParameters>             
            </asp:SqlDataSource>
            <br />

        </div>
    <div class="container">
        <h1>评论展示</h1>
        </div>
        <hr />
         <div class="container">
     <asp:GridView ID="GridView2" runat="server" DataKeyNames="id"  AutoGenerateColumns="False" DataSourceID="SqlDataSource3" Width="1400px" CellPadding="4" ForeColor="#333333" GridLines="None" Height="185px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="EntityType" HeaderText="回复类型" SortExpression="EntityType" />
                <asp:BoundField DataField="ExperienceText" HeaderText="被回复分享内容" SortExpression="ExperienceText" />
                <asp:BoundField DataField="ExperienceText2" HeaderText="被回复评论内容" SortExpression="ExperienceText2" />
                <asp:BoundField DataField="CommentText" HeaderText="评论内容" SortExpression="CommentText" />
                <asp:BoundField DataField="sname" HeaderText="发言人" SortExpression="sname" ReadOnly="True" />
                <asp:BoundField DataField="Nickname" HeaderText="评论人" SortExpression="Nickname" />
                <asp:CommandField ShowSelectButton="True" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" Font-Bold="True" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="SELECT
	c.id id,
	c.ParentId pid,
	c.EntityType,
	c.EntityId,
	ie.ExperienceText,
  (SELECT  CommentText from  Comments where id=c.ParentId) ExperienceText2,
	ie.StudentId,
	c.CommentText,
	(SELECT Nickname from Students where Students.Id=ie.StudentId) sname,
	s.Nickname
FROM
	Comments c
	LEFT JOIN Students s ON s.Id= c.StudentId
	LEFT JOIN InternshipEmploymentExperiences ie on ie.Id=c.EntityId">
        </asp:SqlDataSource>
        </div>
          
  
         <p>
             &emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;选中了id=
             <asp:Label ID="Label2" runat="server"></asp:Label>的评论
            </p>
        <div class="container">
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource4" Width="1421px" Height="90px" OnItemDeleted="FormView1_ItemDeleted" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
            <EditItemTemplate>
                Id:
                <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>'  Readonly="true"/>
                <br />
                ParentId:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="ParentIdTextBox" runat="server" Text='<%# Bind("ParentId") %>'  Readonly="true"/>
                <br />
                EntityType:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="EntityTypeTextBox" runat="server" Text='<%# Bind("EntityType") %>'  Readonly="true"/>
                <br />
                EntityId:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="EntityIdTextBox" runat="server" Text='<%# Bind("EntityId") %>'  Readonly="true"/>
                <br />
                StudentId:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>'  Readonly="true"/>
                <br />
                CommentText:
                <asp:TextBox ID="CommentTextTextBox" runat="server" Text='<%# Bind("CommentText") %>' Height="112px" Width="536px" />
                <br />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </EditItemTemplate>
            <EmptyDataTemplate>
                <asp:LinkButton ID="NewButton" runat="server" BackColor="Yellow" CausesValidation="False" CommandName="New" Text="回复评论" />
            </EmptyDataTemplate>
            <InsertItemTemplate>
                请评论:
                <asp:TextBox ID="CommentTextTextBox" runat="server" Text='<%# Bind("CommentText") %>' Height="68px" Width="1309px" />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="确认" OnClick="InsertButton_Click" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
            </InsertItemTemplate>
            <ItemTemplate>
                父评论ID:
                <asp:Label ID="ParentIdLabel" runat="server" Text='<%# Bind("ParentId") %>' />
                <br />
                评论内容:
                <asp:Label ID="CommentTextLabel" runat="server" Text='<%# Bind("CommentText") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" BackColor="green" Text="修改评论" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" BackColor="red" Text="删除评论" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" BackColor="Yellow" Text="回复评论" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" DeleteCommand="DELETE FROM [Comments] WHERE [Id] = @Id" 
            InsertCommand="INSERT INTO [Comments] ([ParentId], [EntityType], [EntityId], [StudentId], [CommentText]) VALUES (@ParentId, @EntityType, @EntityId, @StudentId, @CommentText)" SelectCommand="SELECT * FROM [Comments] WHERE (([Id] = @Id) AND ([StudentId] = @StudentId))" UpdateCommand="UPDATE [Comments] SET [ParentId] = @ParentId, [EntityType] = @EntityType, [EntityId] = @EntityId, [StudentId] = @StudentId, [CommentText] = @CommentText WHERE [Id] = @Id">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="ParentId" Type="Int32" />
                <asp:Parameter Name="EntityType" Type="String" />
                <asp:Parameter Name="EntityId" Type="Int32" />
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="CommentText" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:ControlParameter ControlID="GridView2" Name="Id" PropertyName="SelectedValue" Type="Int32" />
                <asp:SessionParameter Name="StudentId" SessionField="student" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="ParentId" Type="Int32" />
                <asp:Parameter Name="EntityType" Type="String" />
                <asp:Parameter Name="EntityId" Type="Int32" />
                <asp:Parameter Name="StudentId" Type="Int32" />
                <asp:Parameter Name="CommentText" Type="String" />
                <asp:Parameter Name="Id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        </div>
    </form>
        <br/><br/><br/><br/><br/><br/>
    </body>
</html>