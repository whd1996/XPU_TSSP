<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateProjectSubmission.aspx.cs" Inherits="TSSP.web.pages.UpdateProjectSubmission" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
		<title>项目成果展示</title>
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
						<li>
							<a href="/Enterprise/CompanyProfile">企业简介</a>
						</li>
						<li>
							<a href="/Enterprise/JobPostings">企业招聘</a>
						</li>
						<li class="now"><a href="/pages/UpdateProject">项目发布</a></li>
						<li>
							<a href="/pages/UpdateResume">面试邀约</a>
						</li>
					</ul>

					<div class="search">
						<input name="" type="text" class="text"/>
						<input name="" type="submit" class="btn" value=""/>
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
					<ul class="s_nav">
						<li>
							<a href="/pages/UpdateProject">项目信息</a>
							<i>&nbsp;</i>
						</li>					
					</ul>
					<div class="title">
						<span>项目完成情况</span>
						<i>&nbsp;</i>
					</div>

					<ul class="s_nav">					
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
					<div class="head">
						<asp:Label ID="ENamelabel" runat="server" Text="公司名称"></asp:Label>
						成果展示<em>COMPANY PROFILE</em>
					</div>
					<div class="s_ctn">
						<div class="about">

							<%--	<img src="../../static/Assets/upload/pic5.jpg" alt=""/>--%>
                            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" Width="983px" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" GridLines="None" ForeColor="#333333">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="pid" HeaderText="项目编号" InsertVisible="False" ReadOnly="True" SortExpression="pid" />
                                    <asp:BoundField DataField="Name" HeaderText="项目名称" SortExpression="Name" />
                                    <asp:BoundField DataField="Id1" HeaderText="学生id" SortExpression="Id1" InsertVisible="False" ReadOnly="True" />
                                    <asp:BoundField DataField="FullName" HeaderText="完成学生" SortExpression="FullName" />
                                    <asp:BoundField DataField="Email" HeaderText="学生邮箱" SortExpression="Email" />
                                    <asp:BoundField DataField="SubmissionText" HeaderText="成果描述" SortExpression="SubmissionText" />
                                    <asp:ImageField DataImageUrlField="SubmissionImage" HeaderText="成果图" NullDisplayText="无" NullImageUrl="~/static/img/yes.png">
                                    </asp:ImageField>
                                    <asp:HyperLinkField DataNavigateUrlFields="SubmissionAttachment" Text="成果附件" />
                                </Columns>
                                <EditRowStyle BackColor="#999999" />
                                <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" SelectCommand="SELECT
	ps.id,
	ps.SubmissionAttachment,
	ps.SubmissionImage,
	ps.SubmissionText,
	p.Id pid,
	e.CompanyName,
	p.Name,
	s.Id,
	s.FullName,
	s.Email 
FROM
	ProjectSubmissions ps
	LEFT JOIN Projects p ON ps.ProjectId= p.Id
	LEFT JOIN Students s ON s.Id= ps.Id
	LEFT JOIN Enterprises e ON e.Id=p.EnterpriseId
	where e.Id=@id">
                                <SelectParameters>
                                    <asp:SessionParameter DefaultValue="" Name="id" SessionField="enterprise" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <br />

						</div>
					</div>
						
                            <br />
							 <br />
				</div>
			</div>
					          
                               <%-- <p style="font-size:24px; color:#333333; font-weight:normal;">
									&nbsp;</p>--%>

								
			    <br />

								
			</div>
		<hr />
			 <h1 style="font-size:24px; color:#333333; font-weight:normal;">
									&nbsp;</h1>
           
			<div style="margin-left: 25px; text-align:center">
								<br />
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



