<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEnterprise.aspx.cs" Inherits="TSSP.web.Views.Enterprise.UpdateEnterprise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            企业基本信息<br />
            企业ID=<asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowEditButton="True" />
                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                    <asp:BoundField DataField="UnifiedSocialCreditCode" HeaderText="UnifiedSocialCreditCode" SortExpression="UnifiedSocialCreditCode" />
                    <asp:BoundField DataField="CompanyName" HeaderText="CompanyName" SortExpression="CompanyName" />
                    <asp:BoundField DataField="ContactEmail" HeaderText="ContactEmail" SortExpression="ContactEmail" />
                    <asp:BoundField DataField="ContactPhone" HeaderText="ContactPhone" SortExpression="ContactPhone" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                    <asp:BoundField DataField="LogoImage" HeaderText="LogoImage" SortExpression="LogoImage" />
                </Columns>
            </asp:GridView>
        </div>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" DeleteCommand="DELETE FROM [Enterprises] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Enterprises] ([UnifiedSocialCreditCode], [CompanyName], [ContactEmail], [ContactPhone], [Address], [Password], [LogoImage]) VALUES (@UnifiedSocialCreditCode, @CompanyName, @ContactEmail, @ContactPhone, @Address, @Password, @LogoImage)" SelectCommand="SELECT * FROM [Enterprises] WHERE ([Id] = @Id)" UpdateCommand="UPDATE [Enterprises] SET [UnifiedSocialCreditCode] = @UnifiedSocialCreditCode, [CompanyName] = @CompanyName, [ContactEmail] = @ContactEmail, [ContactPhone] = @ContactPhone, [Address] = @Address, [Password] = @Password, [LogoImage] = @LogoImage WHERE [Id] = @Id">
                <DeleteParameters>
                    <asp:Parameter Name="Id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UnifiedSocialCreditCode" Type="String" />
                    <asp:Parameter Name="CompanyName" Type="String" />
                    <asp:Parameter Name="ContactEmail" Type="String" />
                    <asp:Parameter Name="ContactPhone" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="LogoImage" Type="String" />
                </InsertParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="Label1" Name="Id" PropertyName="Text" Type="Int32" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UnifiedSocialCreditCode" Type="String" />
                    <asp:Parameter Name="CompanyName" Type="String" />
                    <asp:Parameter Name="ContactEmail" Type="String" />
                    <asp:Parameter Name="ContactPhone" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="Password" Type="String" />
                    <asp:Parameter Name="LogoImage" Type="String" />
                    <asp:Parameter Name="Id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </p>
    </form>
</body>
</html>
