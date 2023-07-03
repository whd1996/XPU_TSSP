<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="TSSP.web.Views.Student.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    欢迎你，<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
    <form id="form1" runat="server">
        个人信息CRUD<br />
        
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                <asp:BoundField DataField="ResumeText" HeaderText="ResumeText" SortExpression="ResumeText" />
            </Columns>
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:GridView>
        <br />
        <br />
        个人简历<br />
        <asp:DataList ID="DataList1" runat="server" DataKeyField="Id" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                Id:
                <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                <br />
                StudentId:
                <asp:Label ID="StudentIdLabel" runat="server" Text='<%# Eval("StudentId") %>' />
                <br />
                ResumeText:
                <asp:Label ID="ResumeTextLabel" runat="server" Text='<%# Eval("ResumeText") %>' />
                <br />
<br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="SELECT * FROM [PersonalResumes] WHERE ([StudentId] = @StudentId)">
            <SelectParameters>
                <asp:SessionParameter Name="StudentId" SessionField="student" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
        项目选定<br />
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="StudentId" HeaderText="StudentId" SortExpression="StudentId" />
                <asp:BoundField DataField="ResumeText" HeaderText="ResumeText" SortExpression="ResumeText" />
            </Fields>
        </asp:DetailsView>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        项目成果提交</form>
</body>
</html>
