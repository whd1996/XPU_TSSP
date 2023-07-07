<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPwd.aspx.cs" Inherits="TSSP.web.Views.Home.ForgetPwd" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>忘记密码</title>
    <link href="../../static/css/login.css" rel="stylesheet" />
    <script type="text/javascript" src="../../static/lib/jquery/1.9.1/jquery.min.js"></script>
    <script src="../../static/js/verificationNumbers.js" tppabs="static/js/verificationNumbers.js"></script>
    <style>
        .J_codeimg {
            z-index: -1;
            position: absolute;
        }
    </style>
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
                <p>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;重置密码</p>
            </div>
            <form id="registForm" method="post">
                <p class="p user_icon">
                    <input type="text" placeholder="邮箱号" id="email" name="email" autocomplete="off" class="login_txtbx" required>
                </p>                 
                   <p style="color: white" class="">
                    <input type="radio" name="role" class="login_txtbx" value="0" />企业
                    <input type="radio" name="role" class="login_txtbx" value="1" checked />大学生
                </p>
                <div class="p val_icon">
                    <div class="checkcode">
                        <input type="text" id="J_codetext" placeholder="验证码" name="code"  autocomplete="off" maxlength="5" class="login_txtbx">
                    </div>
                    <a style="border-right-width: 199px;margin-right: 35px;margin-top: 15px;" id="code" class="ver_btn" onclick="getCode()">点击获取验证码</a>
                </div>
                     <div id="tishi" ><span></span></div>
                <div class="signup">
                    <a id="submit" style="margin-left: 0px; margin-right: 44px;" class="gv" href="#" onclick="forgetPwdSubmit()">
                        确定重置</a>
                    <a style="margin-left: 35px; margin-right: 0px;" class="gv" href="/Home/Login">前去登录</a>
                </div>
            </form>
        </div>
        <div class="canvaszz"></div>
        <canvas id="canvas"></canvas>
    </div>
    <%-- 宇宙特效--%>
    <script src="../../static/js/myTeXiao.js"></script>

</body>
</html>
