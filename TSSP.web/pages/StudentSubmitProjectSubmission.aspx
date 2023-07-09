<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentSubmitProjectSubmission.aspx.cs" Inherits="TSSP.web.pages.SubmitProjectImage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0" />
    <title>个人简介</title>
    <link rel="stylesheet" href="../../static/stuStatic/layui/css/layui.css" />
    <link rel="stylesheet" href="../../static/stuStatic/static/css/index.css" />
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
            width: 1289.25px
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
                        <img src="../../static/stuStatic/static/img/logo.png" alt="类友网络" />
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
                <p>项目成果</p>
                <p class="en">Reviews</p>
            </div>
        </div>
        <p>
            &nbsp;
        </p>
        <script src="../../static/stuStatic/layui/layui.js"></script>
        <script>
            layui.config({
                base: '../../static/stuStatic/static/js/'
            }).use('firm');
        </script>

        <div class="container">
            <h3>
              <p>项目列表-请先选择一个项目</p>
                <hr />
                <asp:GridView ID="GridView1" DataKeyName="Id" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="1038px">
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="EnterpriseId" HeaderText="企业编号" SortExpression="EnterpriseId" />
                        <asp:BoundField DataField="Name" HeaderText="项目名称" SortExpression="Name" />
                        <asp:BoundField DataField="Category" HeaderText="项目分类" SortExpression="Category" />
                        <asp:BoundField DataField="Requirements" HeaderText="项目需求" SortExpression="Requirements" />
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
                </asp:GridView>
                <br />
            成果列表-请选择一个项目成果
                <hr />
                <asp:GridView ID="GridView3" runat="server" DatakeyName="Id" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource2" Width="1033px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <Columns>
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="ProjectId" HeaderText="项目编号" SortExpression="ProjectId" />
                    <asp:BoundField DataField="SubmissionText" HeaderText="项目描述" SortExpression="SubmissionText" />
                    <asp:ImageField DataImageUrlField="SubmissionImage" HeaderText="项目成果图">
                    </asp:ImageField>
                    <asp:HyperLinkField DataNavigateUrlFields="SubmissionAttachment" HeaderText="项目成果附件" DataTextField="SubmissionAttachment" />
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
            </asp:GridView>
            <br />
            操作  <hr />
            <asp:FormView ID="FormView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource3" GridLines="Both" Width="1029px" OnItemDeleted="FormView1_ItemDeleted" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
                <EditItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    项目编号:
                    <asp:TextBox ID="ProjectIdTextBox" runat="server"  Text='<%# Bind("ProjectId") %>' Readonly="true"/>
                    <br />
                    学生编号:
                    <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>' Readonly="true"/>
                    <br />
                    项目描述:
                    <asp:TextBox ID="SubmissionTextTextBox" runat="server" Text='<%# Bind("SubmissionText") %>' />
                    <br />
                    项目成果图相对路径:
                    <asp:TextBox ID="SubmissionImageTextBox" runat="server" Text='<%# Bind("SubmissionImage") %>' Readonly="true"/>
                    <br />
                    项目附件相对路径:
                    <asp:TextBox ID="SubmissionAttachmentTextBox" runat="server" Text='<%# Bind("SubmissionAttachment") %>' Readonly="true"/>
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </EditItemTemplate>
                <EditRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <EmptyDataTemplate>
                    <asp:LinkButton ID="NewButton" runat="server" BackColor="Yellow" CausesValidation="False" CommandName="New" Text="发布一个新成果" />
                </EmptyDataTemplate>
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <InsertItemTemplate>
                    成果描述:
                    <asp:TextBox ID="SubmissionTextTextBox" runat="server" Text='<%# Bind("SubmissionText") %>' Height="48px" Width="1003px" />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="添加" OnClick="InsertButton_Click" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Id:
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" BackColor="green" Text="编辑" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" BackColor="red" CommandName="Delete" Text="删除" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" BackColor="Yellow" Text="发布一个新成果" />
                </ItemTemplate>
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
            </asp:FormView>
            <hr />
            <hr />
            修改/添加一个项目成果图<hr />
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                <br />
                <asp:Button ID="Button1" runat="server" Text="提 交" Height="29px" OnClick="Button1_Click" Width="67px" />
            <br />
            <hr />
           修改/添加一个项目成果附件<hr />
                    <asp:FileUpload ID="FileUpload2" runat="server" />
                <br />
                <asp:Button ID="Button2" runat="server" Text="提 交" Height="29px" OnClick="Button2_Click" Width="67px" />
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="SELECT * FROM [Projects]"></asp:SqlDataSource>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" DeleteCommand="DELETE FROM [ProjectSubmissions] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ProjectSubmissions] ([ProjectId], [StudentId], [SubmissionText], [SubmissionImage], [SubmissionAttachment]) VALUES (@ProjectId, @StudentId, @SubmissionText, @SubmissionImage, @SubmissionAttachment)" SelectCommand="SELECT * FROM [ProjectSubmissions] WHERE (([ProjectId] = @ProjectId) AND ([StudentId] = @StudentId))" UpdateCommand="UPDATE [ProjectSubmissions] SET [ProjectId] = @ProjectId, [StudentId] = @StudentId, [SubmissionText] = @SubmissionText, [SubmissionImage] = @SubmissionImage, [SubmissionAttachment] = @SubmissionAttachment WHERE [Id] = @Id">
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
                    <asp:SessionParameter Name="StudentId" SessionField="student" Type="Int32" />
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" DeleteCommand="DELETE FROM [ProjectSubmissions] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ProjectSubmissions] ([ProjectId], [StudentId], [SubmissionText], [SubmissionImage], [SubmissionAttachment]) VALUES (@ProjectId, @StudentId, @SubmissionText, @SubmissionImage, @SubmissionAttachment)" SelectCommand="SELECT * FROM [ProjectSubmissions] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [ProjectSubmissions] SET [ProjectId] = @ProjectId, [StudentId] = @StudentId, [SubmissionText] = @SubmissionText, [SubmissionImage] = @SubmissionImage, [SubmissionAttachment] = @SubmissionAttachment WHERE [Id] = @Id">
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
                    <asp:ControlParameter ControlID="GridView3" Name="Id" PropertyName="SelectedValue" Type="Int32" />
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
                </h3>
            <p>
            </p>
            <br />
        </div>    

    </form>
</body>
</html>
