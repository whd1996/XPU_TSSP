<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateJobPosting.aspx.cs" Inherits="TSSP.web.pages.UpdateJobPosting" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
	<head runat="server">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
		<title>招聘信息修改</title>
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
						<li class="now">
							<a href="/Enterprise/JobPostings">企业招聘</a>
						</li>
						<li>
							<a href="product.html">项目发布</a>
						</li>
						<li>
							<a href="service.html">面试邀约</a>
						</li>
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
						<span>招聘信息修改</span>
						<i>&nbsp;</i>
					</div>

					<ul class="s_nav">
						<li>
							<a href="/Enterprise/JobPostings">招聘简介</a>
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
					<div class="head">
						<asp:Label ID="ENamelabel" runat="server" Text="公司名称"></asp:Label>
						招聘信息修改<em>COMPANY PROFILE</em>
					</div>
					<div class="s_ctn">
						<div class="about">
							<%--	<img src="../../static/Assets/upload/pic5.jpg" alt=""/>--%>
							<asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="203px" Width="1003px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="EnterpriseId" HeaderText="公司编号" SortExpression="EnterpriseId" />
                                    <asp:BoundField DataField="Position" HeaderText="在招岗位" SortExpression="Position" />
                                    <asp:BoundField DataField="Salary" HeaderText="工资范围" SortExpression="Salary" />
                                    <asp:BoundField DataField="Requirements" HeaderText="岗位需求" SortExpression="Requirements" />
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
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
                            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="Id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Height="50px" Width="1001px">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                                <EditRowStyle BackColor="#999999" />
                                <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                                <Fields>
                                    <asp:BoundField DataField="EnterpriseId" HeaderText="公司编号" SortExpression="EnterpriseId" />
                                    <asp:BoundField DataField="Position" HeaderText="岗位" SortExpression="Position" />
                                    <asp:BoundField DataField="Salary" HeaderText="工资范围" SortExpression="Salary" />
                                    <asp:BoundField DataField="Requirements" HeaderText="岗位需求" SortExpression="Requirements" />
                                    <asp:CommandField ShowInsertButton="True" />
                                </Fields>
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            </asp:DetailsView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:XPU-TSSPConnectionString1 %>" DeleteCommand="DELETE FROM [JobPostings] WHERE [Id] = @Id" InsertCommand="INSERT INTO [JobPostings] ([EnterpriseId], [Position], [Salary], [Requirements]) VALUES (@EnterpriseId, @Position, @Salary, @Requirements)" SelectCommand="SELECT * FROM [JobPostings] WHERE ([EnterpriseId] = @EnterpriseId)" UpdateCommand="UPDATE [JobPostings] SET [EnterpriseId] = @EnterpriseId, [Position] = @Position, [Salary] = @Salary, [Requirements] = @Requirements WHERE [Id] = @Id">
                                <DeleteParameters>
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="EnterpriseId" Type="Int32" />
                                    <asp:Parameter Name="Position" Type="String" />
                                    <asp:Parameter Name="Salary" Type="String" />
                                    <asp:Parameter Name="Requirements" Type="String" />
                                </InsertParameters>
                                <SelectParameters>
                                    <asp:SessionParameter Name="EnterpriseId" SessionField="enterprise" Type="Int32" />
                                </SelectParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="EnterpriseId" Type="Int32" />
                                    <asp:Parameter Name="Position" Type="String" />
                                    <asp:Parameter Name="Salary" Type="String" />
                                    <asp:Parameter Name="Requirements" Type="String" />
                                    <asp:Parameter Name="Id" Type="Int32" />
                                </UpdateParameters>
                            </asp:SqlDataSource>

<%--							<div class="space_hx"></div>

							<div style="border-top:1px solid #ddd; padding-top:30px; font-size:14px; color:#777;">
								
								<p style="margin-top:50px; text-indent:2em;">
								
								</p>--%>
						</div>
					</div>
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
