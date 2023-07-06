<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectSubm.aspx.cs" Inherits="TSSP.web.Views.Student.ProjectSubm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"/>
  <title>项目提交</title>
  <link rel="stylesheet" href="../../static/stuStatic/layui/css/layui.css"/>
  <link rel="stylesheet" href="../../static/stuStatic/static/css/index.css"/>
</head>
<body>
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
          <li class="layui-nav-item"><a href="/Student/Biography">个人简介</a></li>
          <li class="layui-nav-item "><a href="/Student/Project">项目选定</a></li>
       <li class="layui-nav-item layui-this"><a href="/Student/ProjectSubm">项目提交</a></li>
          <li class="layui-nav-item "><a href="/Student/Reviews">企业评价</a></li>
          <li class="layui-nav-item"><a href="/Student/Share">就业分享</a></li>

        </ul>
      </div>
    </div>
  </div>
  <!-- banner部分 -->
  <div class="banner case">
    <div class="title">
      <p>项目提交</p>
      <p class="en">ProjectSubm</p>
    </div>
  </div>
  <!-- main部分 -->
  <div class="main-case">
    <div class="layui-container">
      <div class="layui-row">
        <div class="layui-inline content">
          <div class="layui-inline case-img"><img src="../../static/stuStatic/static/img/case1.jpg"/></div>
          <p class="lable">名牌工厂店</p>
          <p>一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。</p>
        </div>
        <div class="layui-inline content even center">
          <div class="layui-inline case-img"><img src="../../static/stuStatic/static/img/case2.jpg"/></div>
          <p class="lable">名牌工厂店</p>
          <p>一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。</p>
        </div>
      
        <!-- <div class="layui-inline content even">
          <div class="layui-inline case-img"><img src="../../static/stuStatic/static/img/case4.jpg"></div>
          <p class="lable">名牌工厂店</p>
          <p>一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。</p>
        </div>
        <div class="layui-inline content center">
          <div class="layui-inline case-img"><img src="../../static/stuStatic/static/img/case5.jpg"></div>
          <p class="lable">名牌工厂店</p>
          <p>一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。</p>
        </div>
        <div class="layui-inline content even">
          <div class="layui-inline case-img"><img src="../../static/stuStatic/static/img/case6.jpg"></div>
          <p class="lable">名牌工厂店</p>
          <p>一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。</p>
        </div>
        <div class="layui-inline content">
          <div class="layui-inline case-img"><img src="../../static/stuStatic/static/img/case7.jpg"></div>
          <p class="lable">名牌工厂店</p>
          <p>一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。</p>
        </div>
        <div class="layui-inline content even center">
          <div class="layui-inline case-img"><img src="../../static/stuStatic/static/img/case8.jpg"></div>
          <p class="lable">名牌工厂店</p>
          <p>一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。</p>
        </div> -->
        <div class="layui-inline content">
          <div class="layui-inline case-img"><img src="../../static/stuStatic/static/img/case9.jpg"/></div>
          <p class="lable">名牌工厂店</p>
          <p>一家工厂企业的商品展示网站，主要以卖高端服饰为主。主要以卖高端服饰为主。主要以卖高端服饰为主。</p>
        </div>
      </div>
      <div id="casePage"></div>
    </div>
  </div>
  
<!-- <script src="../../static/stuStatic/layui/layui.js"></script> -->
<!--[if lt IE 9]>
  <script src="https://cdn.staticfile.org/html5shiv/r29/html5.min.js"></script>
  <script src="https://cdn.staticfile.org/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="../../static/stuStatic/layui/layui.js"></script>
<script>
    layui.config({
        base: '../../static/stuStatic/static/js/'
    }).use('firm');
</script>
</body>
</html>
