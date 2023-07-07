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
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="293px" Width="1290px">
            <Fields>
                <asp:BoundField DataField="EnterpriseId" HeaderText="企业id" SortExpression="EnterpriseId" />
                <asp:BoundField DataField="StudentId" HeaderText="学生id" SortExpression="StudentId" />
                <asp:BoundField DataField="ReviewText" HeaderText="评语" SortExpression="ReviewText" />
                <asp:BoundField DataField="Rating" HeaderText="评分" SortExpression="Rating" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString2 %>" DeleteCommand="DELETE FROM [CompanyReviews] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CompanyReviews] ([EnterpriseId], [StudentId], [ReviewText], [Rating]) VALUES (@EnterpriseId, @StudentId, @ReviewText, @Rating)" SelectCommand="SELECT * FROM [CompanyReviews] WHERE ([StudentId] = @StudentId)" UpdateCommand="UPDATE [CompanyReviews] SET [EnterpriseId] = @EnterpriseId, [StudentId] = @StudentId, [ReviewText] = @ReviewText, [Rating] = @Rating WHERE [Id] = @Id">
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

           </div>
        <p>
            &nbsp;</p>
       


        <div class="myListView">
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource2" InsertItemPosition="LastItem" >
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EnterpriseIdLabel" runat="server" Text='<%# Eval("EnterpriseId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ReviewTextLabel" runat="server" Text='<%# Eval("ReviewText") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                    </td>
                </tr>
            </AlternatingItemTemplate>
            <EditItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                        <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="EnterpriseIdTextBox" runat="server" Text='<%# Bind("EnterpriseId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ReviewTextTextBox" runat="server" Text='<%# Bind("ReviewText") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
                    </td>
                </tr>
            </EditItemTemplate>
            <EmptyDataTemplate>
                <table runat="server" style="">
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
                        <asp:TextBox ID="EnterpriseIdTextBox" runat="server" Text='<%# Bind("EnterpriseId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="StudentIdTextBox" runat="server" Text='<%# Bind("StudentId") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ReviewTextTextBox" runat="server" Text='<%# Bind("ReviewText") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="RatingTextBox" runat="server" Text='<%# Bind("Rating") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EnterpriseIdLabel" runat="server" Text='<%# Eval("EnterpriseId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ReviewTextLabel" runat="server" Text='<%# Eval("ReviewText") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server"></th>
                                    <th runat="server">Id</th>
                                    <th runat="server">EnterpriseId</th>
                                    <th runat="server">StudentId</th>
                                    <th runat="server">ReviewText</th>
                                    <th runat="server">Rating</th>
                                </tr>
                                <tr id="itemPlaceholder" runat="server">
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr runat="server">
                        <td runat="server" style=""></td>
                    </tr>
                </table>
            </LayoutTemplate>
            <SelectedItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="删除" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="编辑" />
                    </td>
                    <td>
                        <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                    </td>
                    <td>
                        <asp:Label ID="EnterpriseIdLabel" runat="server" Text='<%# Eval("EnterpriseId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ReviewTextLabel" runat="server" Text='<%# Eval("ReviewText") %>' />
                    </td>
                    <td>
                        <asp:Label ID="RatingLabel" runat="server" Text='<%# Eval("Rating") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString2 %>" DeleteCommand="DELETE FROM [CompanyReviews] WHERE [Id] = @Id" InsertCommand="INSERT INTO [CompanyReviews] ([EnterpriseId], [StudentId], [ReviewText], [Rating]) VALUES (@EnterpriseId, @StudentId, @ReviewText, @Rating)" SelectCommand="SELECT * FROM [CompanyReviews] WHERE ([StudentId] = @StudentId)" UpdateCommand="UPDATE [CompanyReviews] SET [EnterpriseId] = @EnterpriseId, [StudentId] = @StudentId, [ReviewText] = @ReviewText, [Rating] = @Rating WHERE [Id] = @Id">
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
            </div >
        </form>
</body>
</html>
