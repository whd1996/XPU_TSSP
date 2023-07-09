
var code;
function createCode() {//验证码生成
    code = "";
    var codeLength = 4;
    var selectChar = new Array(1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'j', 'k', 'l', 'm', 'n', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');
    for (var i = 0; i < codeLength; i++) {
        var charIndex = Math.floor(Math.random() * 60);
        code += selectChar[charIndex];
    }
    if (code.length != codeLength) {
        createCode();
    }
    showCheck(code);
}
function showCheck(a) {//验证码展示
    var c = document.getElementById("myCanvas");
    var ctx = c.getContext("2d");
    ctx.clearRect(0, 0, 1000, 1000);
    ctx.font = "80px 'Microsoft Yahei'";
    ctx.fillText(a, 0, 100);
    ctx.fillStyle = "rgba(255,255,255,.9)";
}
//验证验证码是否一致        
function validate() {
    var inputCode = document.getElementById("J_codetext").value.toUpperCase();
    var codeToUp = code.toUpperCase();
    if (inputCode.length <= 0) {
        document.getElementById("J_codetext").setAttribute("placeholder", "输入验证码");
        createCode();
        return false;
    }
    else if (inputCode != codeToUp) {
        document.getElementById("J_codetext").value = "";
        document.getElementById("J_codetext").setAttribute("placeholder", "验证码错误");
        createCode();
        return false;
    }
    else {
        var loginForm = document.getElementById("loginForm");
        loginForm.submit();
        return true;
    }
}
function pwdValidate() {//密码一致性校验
    var pwd1 = document.getElementById("pwd1").value;
    var pwd2 = document.getElementById("pwd2").value;
    /* 对比两次输入的密码  */
    if (pwd1 == pwd2) {
        document.getElementById("tishi").innerHTML = "<font color='green'>密码输入一致</font>";
        $("#submit").attr("disabled", false).css("pointer-events", "auto");
    }
    else {
        $("#submit").attr("disabled", true).css("pointer-events", "none");
        document.getElementById("tishi").innerHTML = "<font color='red'>两次密码输入不一致</font>";
    }
}
function loginValidate() {//登录校验
    var pwd = $("#pwd").val();
    var email = $("#email").val();
    if (email == null || email === "") {
        document.getElementById("tishi").innerHTML = "<font color='red'>邮箱号不能为空</font>";
        return false;
    } else
        document.getElementById("tishi").innerHTML = "";
    if (pwd == null || pwd === "") {
        document.getElementById("tishi").innerHTML = "<font color='red'>密码不能为空</font>";
        return false;
    } else
        document.getElementById("tishi").innerHTML = "";
}
function infoSubmit() {//用户注册校验
    var inputCode = document.getElementById("J_codetext").value.toUpperCase();
    var codeToUp = code.toUpperCase();
    var email = $("#email").val();
    var pwd1 = document.getElementById("pwd1").value;
    if (email == null || email === "") {
        document.getElementById("tishi").innerHTML = "<font color='red'>邮箱号不能为空</font>";
        return false;
    } else
        document.getElementById("tishi").innerHTML = "";
    if (pwd1 == null || pwd1 === "") {
        document.getElementById("tishi").innerHTML = "<font color='red'>密码不能为空</font>";
        return false;
    } else
        document.getElementById("tishi").innerHTML = "";
    if (inputCode.length <= 0) {
        document.getElementById("J_codetext").setAttribute("placeholder", "输入验证码");
        createCode();
        return false;
    }
    else if (inputCode != codeToUp) {
        document.getElementById("J_codetext").value = "";
        document.getElementById("J_codetext").setAttribute("placeholder", "验证码错误");
        createCode();
        return false;
    }
    else {
        var registForm = document.getElementById("registForm");
        registForm.submit();
        return true;
    }
}



function getCode() {//发送邮件

    //因为控件和上传有冲突 所以写js函数解决
     document.getElementById('registForm').setAttribute("action", "/Email/getCode");
     document.getElementById('registForm').setAttribute("method", "post");
     document.getElementById('registForm').submit();
 
}
function forgetPwdSubmit() {//找回密码
    var inputCode = document.getElementById("J_codetext").value.toUpperCase();
    var email = $("#email").val();
    if (email == null || email === "") {
        document.getElementById("tishi").innerHTML = "<font color='red'>邮箱号不能为空</font>";
        return false;
    }
    if (inputCode.length <= 0) {
        document.getElementById("J_codetext").setAttribute("placeholder", "输入验证码");
        return false;
    }
    else {
        var registForm = document.getElementById("registForm");
        document.getElementById('registForm').setAttribute("action", "/Login/ForgetPwd");
        document.getElementById('registForm').setAttribute("method", "post");
        registForm.submit();
        return true;
    }
}