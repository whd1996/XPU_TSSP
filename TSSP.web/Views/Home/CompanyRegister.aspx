<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyRegister.aspx.cs" Inherits="TSSP.web.CompanyRegister" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>人才服务社交平台注册</title>
    <link href="static/css/login.css" rel="stylesheet" type="text/css">
    <script type="text/javascript" src="static/lib/jquery/1.9.1/jquery.min.js"></script>
    <script src="static/js/verificationNumbers.js" tppabs="static/js/verificationNumbers.js"></script>
    <style>
        .J_codeimg {
            z-index: -1;
            position: absolute;
        }
    </style>
    <script>
        $(document).ready(function () {
            //验证码
            createCode();
        });
    </script>
</head>
<body>
    <div class="login-box" id="demo">
        <div class="input-content">
            <div class="login_tit">
                <div>
                    <i class="tit-bg left"></i>
                    人才服务社交平台
            <i class="tit-bg right"></i>
                </div>
                <p>&emsp;&emsp;&emsp;&emsp;&emsp;大学生注册</p>
            </div>
            <form id="login">
                <p class="p user_icon">
                    <input type="text" placeholder="邮箱号" name="email" autocomplete="off" class="login_txtbx">
                </p>
                <p class="p pwd_icon">
                    <input type="password" placeholder="密码" name="password" autocomplete="off" class="login_txtbx">
                </p>
              
                <div class="p val_icon">
                    <div class="checkcode">
                        <input type="text" id="J_codetext" placeholder="验证码" autocomplete="off" maxlength="4" class="login_txtbx">
                        <canvas class="J_codeimg" id="myCanvas" onclick="createCode()" onselectstart="return false">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
                    </div>
                    <a class="ver_btn" onclick="createCode();" onselectstart="return false">看不清，换一张</a>
                </div>
                <div class="signup">
                    <a style="margin-left: 0px; margin-right: 44px;" class="gv" href="#" onclick="validate()">确&nbsp;&nbsp;定</a>
                    <a style="margin-left: 35px; margin-right: 0px;" class="gv" href="Register.aspx">大学生注册</a>
                </div>
            </form>
        </div>
        <div class="canvaszz"></div>
        <canvas id="canvas"></canvas>
    </div>
    <%-- 宇宙特效--%>
    <script src="static/js/myTeXiao.js"></script>

</body>
</html>
