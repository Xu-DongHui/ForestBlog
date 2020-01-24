<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if IE 8]>
<html xmlns="http://www.w3.org/1999/xhtml" class="ie8" lang="zh-CN">
<![endif]-->
<!--[if !(IE 8) ]><!-->
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<!--<![endif]-->
<html xmlns="http://www.w3.org/1999/xhtml" lang="zh-CN">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <title>${options.optionSiteTitle} &lsaquo; 登录</title>
    <link rel="stylesheet" href="/plugin/font-awesome/css/font-awesome.min.css">
    <link rel="shortcut icon" href="/img/logo.png">
    <link rel='stylesheet' id='dashicons-css'  href='/plugin/login/dashicons.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='buttons-css'  href='/plugin/login/buttons.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='forms-css'  href='/plugin/login/forms.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='l10n-css'  href='/plugin/login/l10n.min.css' type='text/css' media='all' />
    <link rel='stylesheet' id='login-css'  href='/plugin/login/login.min.css' type='text/css' media='all' />
    <style type="text/css">
        body{
            font-family: "Microsoft YaHei", Helvetica, Arial, Lucida Grande, Tahoma, sans-serif;
            width:100%;
            height:100%;
        }
        .login h1 a {
            background-size: 220px 50px;
            width: 220px;
            height: 50px;
            padding: 0;
            margin: 0 auto 1em;
        }
        .login form {
            background: #fff;
            background: rgba(255, 255, 255, 0.6);
            border-radius: 2px;
            border: 1px solid #fff;
        }
        .login label {
            color: #000;
            font-weight: bold;
        }

        #backtoblog a, #nav a {
            color: #fff !important;
        }

    </style><meta name='robots' content='noindex,follow' />
    <meta name="viewport" content="width=device-width" />
    <style>
        body {
            background-repeat: no-repeat;
            background-size: 100% 100%;
            background-attachment: fixed;
        }
    </style>
</head>
<body class="login login-action-login wp-core-ui  locale-zh-cn">
<div id="login">
    <form name="loginForm" id="loginForm"  method="post">
        <p>
            <label class="layui-form-label">用户名</label>
            <input type="text" name="userName" id="userName" class="input" required>
        </p>
        <p>
            <label class="layui-form-label">密码</label>
            <input type="password" name="password" id="password" class="input" required>
        </p>
        <p>
            <label class="layui-form-label">确认密码</label>
            <input type="password" name="certainPassword" id="certainPassword" class="input" required>
        </p>
        <p>
            <label class="layui-form-label">验证码</label>
            <div class="col-sm-8">
                <input type="text" id="code" name="code" class="input" style="width:250px;"/>
                <img id="imgObj" alt="验证码" src="/validateCode" onclick="changeImg()"/>
                <a href="#" onclick="changeImg()">换一张</a>
            </div>
        </p>
        <p class="submit">
            <input type="button" name="wp-submit" id="submit-btn" class="button button-primary button-large" value="注册" />
        </p>
    </form>

</div>


<div class="clear"></div>

<script src="/js/jquery.min.js"></script>
<script type="text/javascript">

    // 刷新图片
    function changeImg() {
        var imgSrc = $("#imgObj");
        var src = imgSrc.attr("src");
        imgSrc.attr("src", changeUrl(src));
    }
    //为了使每次生成图片不一致，即不让浏览器读缓存，所以需要加上时间戳
    function changeUrl(url) {
        var timestamp = (new Date()).valueOf();
        var index = url.indexOf(url, "?");
        if (index > 0) {
            url = url.substring(0, url.indexOf(url, "?"));
        }
        url = url + "?timestamp=" + timestamp;
        return url;
    }

    <%--登录验证--%>
    $("#submit-btn").click(function () {
        var user = $("#userName").val();
        var password = $("#password").val();
        var certainPassword = $("#certainPassword").val();
        if(user=="") {
            alert("用户名不可为空!");
        } else if(password==""){
            alert("密码不可为空!");
        } else if (certainPassword=="") {
            alert("请确认密码!");
        } else if (password!=certainPassword) {
            alert("两次密码输入不一致");
        } else {
            $.ajax({
                async: false,//同步，待请求完毕后再执行后面的代码
                type: "POST",
                url: '/register/login',
                contentType: "application/x-www-form-urlencoded; charset=utf-8",
                data: $("#loginForm").serialize(),
                dataType: "json",
                success: function (data) {
                    if(data.code==0) {
                        alert(data.msg);
                    } else if (data.code == 1) {
                        alert(data.msg);
                        changeImg();
                    } else {
                            window.location.href="/admin";
                    }
                },
                error: function () {
                    alert("数据获取失败")
                }
            })
        }
    })
</script>
</body>
</html>

