<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyProfile.aspx.cs" Inherits="TSSP.web.Views.Enterprise.Companyprofile" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
		<title>公司简介</title>
		<link rel="stylesheet" type="text/css" href="../../static/Assets/css/reset.css" />
		<script type="text/javascript" src="../../static/Assets/js/jquery-1.8.3.min.js"></script>
		<script type="text/javascript" src="../../static/Assets/js/js_z.js"></script>
		<script type="text/javascript" src="../../static/Assets/js/main.js"></script>
		<link rel="stylesheet" type="text/css" href="../../static/Assets/css/thems.css" />
		<link rel="stylesheet" type="text/css" href="../../static/Assets/css/responsive.css" />
	
	</head>

	<body>
		<form id="form1" runat="server">
			<!--头部-->
			<div class="header">
				<div class="head clearfix">
					<%-- <div class="logo"><a href=""><img src="../../static/Assets/images/logo.jpg" alt="视维科技"/></a></div>--%>
					<div class="logo">
						<asp:ImageButton ID="LogoImageButton" runat="server" />
					</div>
					<ul class="nav clearfix">
						<li>
							<a href="/Enterprise/Index">首页</a>
						</li>
						<li class="now">
							<a href="/Enterprise/CompanyProfile">企业简介</a>
						</li>
						<li>
							<a href="/Enterprise/JobPostings">企业招聘</a>
						</li>
						<li><a href="/pages/UpdateProject">项目发布</a></li>
						<li><a href="/pages/UpdateResume">面试邀约</a></li>
					</ul>

					<div class="search">
						<input name="" type="text" class="text">
						<input name="" type="submit" class="btn" value="">
					</div>
					<div class="nav_m">
						<span class="n_icon">&nbsp;</span>
						<ul>
							<li>
								<a href="index.html">首页</a>
							</li>
							<li class="now">
								<a href="about.html">关于我们</a>
							</li>
							<li>
								<a href="solution.html">解决方案</a>
							</li>
							<li>
								<a href="product.html">产品</a>
							</li>
							<li>
								<a href="service.html">服务</a>
							</li>
							<li>
								<a href="contact.html">联系我们</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<!--头部-->
			<!--幻灯片-->
			<div class="banner banner_s">
				<img src="../../static/Assets/upload/banner_a.jpg" alt="" />
			</div>
			<!--幻灯片-->
			<div class="scd clearfix">
				<div class="scd_l">
					<div class="title">
						<span>公司简介</span>
						<i>&nbsp;</i>
					</div>

					<ul class="s_nav">
						<li>
							<a href="/pages/UpdateEnterprise">修改信息</a>
							<i>&nbsp;</i>
						</li>
						<li>
							<a href="/pages/UpdateCompanyProfile">修改简介</a>
							<i>&nbsp;</i>
						</li>
						<li>
							<a href="">资质荣誉</a>
							<i>&nbsp;</i>
						</li>
						<li>
							<a href="">合作伙伴</a>
							<i>&nbsp;</i>
						</li>
					</ul>
				</div>
				<div class="scd_r">
					<div class="head">公司简介<em>COMPANY PROFILE</em>
					</div>
					<div class="s_ctn">
						<div class="about">
							<%--	<img src="../../static/Assets/upload/pic5.jpg" alt=""/>--%>
							<asp:Image ID="IntroductionImage" runat="server" Height="167px" Width="932px" />
							<%--<div class="space_hx">&&nbsp;</div>--%>

							<div style="border-top:1px solid #ddd; padding-top:30px; font-size:14px; color:#777;">
								<h1 style="font-size:24px; color:#333333; font-weight:normal;">
									<asp:Label ID="ENamelabel" runat="server" Text="公司名称"></asp:Label>
								</h1>
								<p style="margin-top:50px; text-indent:2em;">
									<asp:TextBox style="overflow:hidden" ID="CompanyTbx" runat="server"
												 BorderStyle="None" ReadOnly="True" TextMode="MultiLine" Height="322px" Width="965px">公司简介
									</asp:TextBox>
								</p>
						</div>
					</div>
				</div>
			</div>
					          
                               <%-- <p style="font-size:24px; color:#333333; font-weight:normal;">
									&nbsp;</p>--%>

								
			</div>
		<hr />
			 <h1 style="font-size:24px; color:#333333; font-weight:normal;">
									&nbsp;</h1>
            <h1 style="font-size:24px; color:#333333; font-weight:normal;">
									学生评价
								</h1>
			<div style="margin-left: 25px; text-align:center">
			<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Width="1607px" Height="145px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3">
									<Columns>
										<asp:BoundField DataField="ReviewText" HeaderText="评价文本" SortExpression="ReviewText" />
										<asp:BoundField DataField="Rating" HeaderText="评分(5分制)" SortExpression="Rating" />
										<asp:BoundField DataField="Nickname" HeaderText="评价人" SortExpression="Nickname" />
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
								<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="
                        SELECT
	                            cr.ReviewText,
	                            cr.EnterpriseId,
	                            cr.Rating,
	                            s.Nickname,
	                            e.CompanyName 
                        FROM
	                        CompanyReviews cr
	                        LEFT JOIN Students s ON s.Id= cr.StudentId
	                        LEFT JOIN Enterprises e ON cr.EnterpriseId= e.Id
                        where e.Id=@id">
									<SelectParameters>
										<asp:SessionParameter Name="id" SessionField="enterprise" />
									</SelectParameters>
								</asp:SqlDataSource>
				</div>
			<div class="f_bg">
				<div class="f_m clearfix">

					<%--<div class="f_logo"><a href=""><img src="../../static/Assets/images/logo_b.png" alt=""/></a></div>
        <div class="code"><img src="../../static/Assets/upload/code.png" alt=""/></div>--%>
					<div class="f_mr">
						<div class="line">&nbsp;</div>
						<div class="space_hx">&nbsp;</div>
						<span class="tl">联系我们</span>
						<div class="num">
							<a>
								<img src="../../static/Assets/images/icon9.png" alt="" />
							</a>
							<a>
								<img src="../../static/Assets/images/icon10.png" alt="" />
							</a>
							<em></em>
						</div>
						<div class="space_hx">&nbsp;</div>
						<div class="line">&nbsp;</div>
					</div>
				</div>

			</div>
		</form>
	</body>
</html>