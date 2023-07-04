<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyProfile.aspx.cs" Inherits="TSSP.web.Views.Enterprise.Companyprofile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;"/>
<title>公司简介</title>
<link rel="stylesheet" type="text/css" href="../../static/Assets/css/reset.css"/>
<script type="text/javascript" src="../../static/Assets/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../../static/Assets/js/js_z.js"></script>
<script type="text/javascript" src="../../static/Assets/js/main.js"></script>
<link rel="stylesheet" type="text/css" href="../../static/Assets/css/thems.css"/>
<link rel="stylesheet" type="text/css" href="../../static/Assets/css/responsive.css"/>
<script language="javascript">
$(window).load(function() {
  $('.flexslider').flexslider({
	animation: "slide"
  });
});
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
            <li><a href="solution.html">企业招聘</a></li>
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
        	<span>公司简介</span>
            <i>&nbsp;</i>
        </div>
      
        <ul class="s_nav">
        	<li><a href="/pages/UpdateEnterprise">修改信息</a><i>&nbsp;</i></li>
            <li><a href="">修改简介</a><i>&nbsp;</i></li>
            <li><a href="">资质荣誉</a><i>&nbsp;</i></li>
            <li><a href="">合作伙伴</a><i>&nbsp;</i></li>
        </ul>
    </div>
    <div class="scd_r">
    	<div class="head">公司简介<em>COMPANY PROFILE</em></div>
        <div class="s_ctn">
        	<div class="about">
            <%--	<img src="../../static/Assets/upload/pic5.jpg" alt=""/>--%>
                 <asp:Image ID="IntroductionImage" runat="server" />
                <div class="space_hx">&&nbsp;</div>
            
                <div style="border-top:1px solid #ddd; padding-top:30px; font-size:14px; color:#777;">
                	<h1 style="font-size:24px; color:#333333; font-weight:normal;">
                        <asp:Label ID="ENamelabel" runat="server" Text="公司名称"></asp:Label>
                    </h1>
               <p style="margin-top:50px; text-indent:2em;">
                   <asp:TextBox style="overflow:hidden" ID="CompanyTbx" runat="server" 
                       BorderStyle="None" ReadOnly="True" TextMode="MultiLine" Height="339px" Width="938px">公司简介


                   </asp:TextBox>
               </p>

                </div>
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
        <div class="code"><img src="../../static/Assets/upload/code.png" alt=""/></div>
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
</body>
</html>
