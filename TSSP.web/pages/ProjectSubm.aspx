<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectSubm.aspx.cs" Inherits="TSSP.web.Views.Student.ProjectSubm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <meta name="viewport" content="width=device-width,user-scalable=no,initial-scale=1.0,maximum-scale=1.0,minimum-scale=1.0"/>
  <title>项目提交</title>
  <link rel="stylesheet" href="../../static/stuStatic/layui/css/layui.css"/>
  <link rel="stylesheet" href="../../static/stuStatic/static/css/index.css"/>

       <style>
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
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
               <li class="layui-nav-item"><a href="/Student/Index">首页</a></li>
          <li class="layui-nav-item"><a href="/pages/Biography">个人简介</a></li>
          <li class="layui-nav-item "><a href="/pages/Project">项目选定</a></li>
       <li class="layui-nav-item layui-this"><a href="/pages/ProjectSubm">项目提交</a></li>

          <li class="layui-nav-item"><a href="/pages/Share">就业分享</a></li>
        </ul>
      </div>
    </div>
  </div>
  <!-- banner部分 -->
  <div class="banner case">
    <div class="title">
      <p>项目提交</p>
      <p class="en">ProjectSubmit</p>
    </div>
  </div>
  <!-- main部分 -->
  <div class="main-case ">
    <div class="layui-container">
      <div class="layui-row ">
        <div class="layui-inline content">
            <a href="/pages/StudentSubmitProjectSubmission">
          <div class="layui-inline case-img"><img src="../../static/stuStatic/static/img/case1.jpg"/>
          </div>
              <p class="lable">提交成果图</p>
          </a>
        </div>
        <div class="layui-inline content even center">
            <a href="/pages/StudentSubmitProjectSubmission">
          <div class="layui-inline case-img"><img src="../../static/stuStatic/static/img/case2.jpg"/> </div>
          <p class="lable">提交成果附件</p>
            </a>
        </div>
        <div class="layui-inline content">
            <a href="/pages/CompanyReviews">
          <div class="layui-inline case-img"><img src="../../static/stuStatic/static/img/case9.jpg"/></div>
          <p class="lable">评价企业</p>
         </a>





        </div>
      </div>
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
          </form>
</body>
</html>
