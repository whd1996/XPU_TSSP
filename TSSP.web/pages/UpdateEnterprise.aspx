<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEnterprise.aspx.cs" Inherits="TSSP.web.pages.UpdateEnterprise" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
<title>修改信息</title>
<link rel="stylesheet" type="text/css" href="../../static/Assets/css/reset.css"/>
<script type="text/javascript" src="../../static/Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../../static/Assets/js/js_z.js"></script>
<script type="text/javascript" src="../../static/Assets/js/main.js"></script>
<link rel="stylesheet" type="text/css" href="../../static/Assets/css/thems.css"/>
<link rel="stylesheet" type="text/css" href="../../static/Assets/css/responsive.css"/>
<script language="javascript">
</script>
</head>

<body>
    <form id="form1" runat="server">
<!--头部-->
<div class="header">
    <div class="head clearfix">
        <%-- <div class="logo"><a href=""><img src="../../static/Assets/images/logo.jpg" alt="视维科技"/></a></div>--%>
        <div class="logo">
            <asp:ImageButton ID="LogoImageButton" runat="server"/>
        </div>
        <ul class="nav clearfix">
             <li ><a href="/Enterprise/Index">首页</a></li>
            <li class="now"><a href="/Enterprise/CompanyProfile">企业简介</a></li>
            <li><a href="/Enterprise/JobPostings">企业招聘</a></li>
            <li><a href="product.html">项目发布</a></li>
            <li><a href="service.html">面试邀约</a></li>
        </ul>
        <div class="search">
        	<input name="" type="text" class="text">
            <input name="" type="submit" class="btn" value="">
        </div>
        <div class="nav_m">
        	<span class="n_icon">&nbsp;</span>
            <ul>
            	<li><a href="index.html">首页</a></li>
                <li class="now"><a href="about.html">关于我们</a></li>
                <li><a href="solution.html">解决方案</a></li>
                <li><a href="product.html">产品</a></li>
                <li><a href="service.html">服务</a></li>
                <li><a href="contact.html">联系我们</a></li>
            </ul>
        </div>
    </div>
</div>
<!--头部-->
<!--幻灯片-->
<div class="banner banner_s"><img src="../../static/Assets/upload/banner_a.jpg" alt=""/></div>
<!--幻灯片-->
<div class="scd clearfix">
	<div class="scd_l">
    		<div class="title">
        	<span>修改信息</span>
            <i>&nbsp;</i>    
        </div>
        <ul class="s_nav">
        	<li><a href="/Enterprise/CompanyProfile"">企业简介</a><i>&nbsp;</i></li>
            <li><a href="/pages/UpdateCompanyProfile">修改简介</a><i>&nbsp;</i></li>
            <li><a href="">资质荣誉</a><i>&nbsp;</i></li>
            <li><a href="">合作伙伴</a><i>&nbsp;</i></li>
        </ul>
    </div>
    <div class="scd_r">
    	<div class="head"><asp:Label ID="ENamelabel" runat="server" Text="公司名称"></asp:Label>
            企业信息修改<em>COMPANY INFO</em></div>
        <div class="s_ctn">
        	<div class="about">
            
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" Height="138px" style="margin-left: 0px" Width="1060px">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="UnifiedSocialCreditCode" HeaderText="统一社会信用代码" SortExpression="UnifiedSocialCreditCode" />
                            <asp:BoundField DataField="CompanyName" HeaderText="企业名称" SortExpression="CompanyName" />
                            <asp:BoundField DataField="ContactEmail" HeaderText="企业邮箱" SortExpression="ContactEmail" />
                            <asp:BoundField DataField="ContactPhone" HeaderText="联系人手机" SortExpression="ContactPhone" />
                            <asp:BoundField DataField="Address" HeaderText="地址" SortExpression="Address" />
                            <asp:BoundField DataField="Password" HeaderText="登录密码" SortExpression="Password" />
                            <asp:ImageField DataImageUrlField="LogoImage" HeaderText="企业logo" InsertVisible="False" NullDisplayText="请上传logo" NullImageUrl="请上传logo">
                            </asp:ImageField>
                            <asp:CommandField ShowEditButton="True" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
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
                            <asp:SessionParameter Name="Id" SessionField="enterprise" Type="Int32" />
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
              
                       <h3>上传logo:</h3><input type="file" name="file" id="file" />             
                       <br />
                         <input type="button" name="submit1" id="myUpload" value="上传" onclick="myUpLoad()"/>   
                                 </div>
        </div>
    </div>
</div>
<div class="join">
	<div class="bg bg_a"><img src="../../static/Assets/images/pic2.jpg" alt=""/></div>
    <div class="wen"><a href=""><img src="../../static/Assets/images/pic1.png" alt=""/></a></div>
    <div class="bg bg_b"><img src="../../static/Assets/images/bg_c.png" alt=""/></div>
</div>
<div class="f_bg">
	<div class="f_m clearfix">
    	<div class="f_logo"><a href=""><img src="../../static/Assets/images/logo_b.png" alt=""/></a></div>
       <%-- <div class="code"><img src="../../static/Assets/upload/code.png" alt=""/></div>--%>
        <div class="f_mr">
        	<div class="line">&nbsp;</div>
            <div class="space_hx">&nbsp;</div>
            <span class="tl">联系我们/span>
            <div class="num">
            	<a href=""><img src="../../static/Assets/images/icon9.png" alt=""/></a>
                <a href=""><img src="../../static/Assets/images/icon10.png" alt=""/></a>
                <em></em>
            </div>
            <div class="space_hx">&nbsp;</div>
            <div class="line">&nbsp;</div>
        </div>
    </div>
    <div class="bq_bg">
    	<div class="bq">
        	SOWELL Technology co., Ltd 
            <span>Copyright(c) 2014 ：<a href="http://www.mycodes.net/" target="_blank"></a> </span>
        </div>
    </div>
</div>
    </form>
<script>
    function myUpLoad() {
            //因为控件和上传有冲突 所以写js函数解决
            document.getElementById('myUpload').onclick = function () {
            document.getElementById('form1').setAttribute("action", "/Image/UploadLogo");
            document.getElementById('form1').setAttribute("method", "post");
            document.getElementById('form1').setAttribute("enctype", "multipart/form-data");
            document.getElementById('form1').submit();
        }
    }
   
</script>
</body>
</html>
