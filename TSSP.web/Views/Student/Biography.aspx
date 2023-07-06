<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Biography.aspx.cs" Inherits="TSSP.web.Views.Student.Biography" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 <meta charset="UTF-8"/>
   <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"/>
  <title>个人简介</title>
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
          <li class="layui-nav-item layui-this"><a href="/Student/Biography">个人简介</a></li>
          <li class="layui-nav-item "><a href="/Student/Project">项目选定</a></li>
       <li class="layui-nav-item"><a href="/Student/ProjectSubm">项目提交</a></li>
          <li class="layui-nav-item "><a href="/Student/Reviews">企业评价</a></li>
          <li class="layui-nav-item"><a href="/Student/Share">就业分享</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- banner部分 -->
  <div class="banner product">
    <div class="title">
      <p>个人简介</p>
      <p class="en">Biography</p>
    </div>
  </div>
  <!-- main部分 -->
  <div class="main product">
    <div class="layui-container">
      <div class="content layui-row">
        <div class="layui-col-xs12 layui-col-sm6 layui-col-md7 layui-col-lg6 content-img"><img src="../../static/stuStatic/static/img/Product_img1.jpg"/></div>
        <div class="layui-col-xs12 layui-col-sm6 layui-col-md5 layui-col-lg6 right">
          <p class="label">JS基础库</p>
          <p class="detail">从小屏逐步扩展到大屏，最终实现所有屏幕适配，最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。</p>
         
        </div>
      </div>
      <div class="content layui-row">
        <div class="layui-col-xs12 layui-col-sm6 layui-col-md7 layui-col-lg6 content-img"><img src="../../static/stuStatic/static/img/Product_img2.jpg"/></div>
        <div class="layui-col-xs12 layui-col-sm6 layui-col-md5 layui-col-lg6 right">
          <p class="label">CSS处理</p>
          <p class="detail">从小屏逐步扩展到大屏，最终实现所有屏幕适配，最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。</p>
         
        </div>
      </div>
      <div class="content layui-row">
        <div class="layui-col-xs12 layui-col-sm6 layui-col-md7 layui-col-lg6 content-img"><img src="../../static/stuStatic/static/img/Product_img3.jpg"/></div>
        <div class="layui-col-xs12 layui-col-sm6 layui-col-md5 layui-col-lg6 right">
          <p class="label">兼容性</p>
          <p class="detail">从小屏逐步扩展到大屏，最终实现所有屏幕适配，最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。</p>
       
        </div>
      </div>
      <div class="content layui-row">
        <div class="layui-col-xs12 layui-col-sm6 layui-col-md7 layui-col-lg6 content-img"><img src="../../static/stuStatic/static/img/Product_img4.jpg"/></div>
        <div class="layui-col-xs12 layui-col-sm6 layui-col-md5 layui-col-lg6 right">
          <p class="label">响应式</p>
          <p class="detail">从小屏逐步扩展到大屏，最终实现所有屏幕适配，最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。最终实现所有屏幕适配，适应移动互联潮流。</p>
          <!-- <div><a href="javascript:;">查看产品 ></a></div> -->
        </div>
      </div>      
    </div>
  </div>
  
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