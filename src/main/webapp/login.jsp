<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<header>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Bootstrap -->
    <link href="<%=basePath %>bootstrap-3.3.5-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="<%=basePath %>css/ityks.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script src="<%=basePath %>bootstrap-3.3.5-dist/js/jquery-1.11.3.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="<%=basePath %>bootstrap-3.3.5-dist/js/bootstrap.min.js"></script>
</header>

<style type="text/css">
    html,body {
        height: 100%;
    }
    .box {
        filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#6699FF', endColorstr='#6699FF'); /*  IE */
        background-image:linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
        background-image:-o-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
        background-image:-moz-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
        background-image:-webkit-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);
        background-image:-ms-linear-gradient(bottom, #6699FF 0%, #6699FF 100%);

        margin: 0 auto;
        position: relative;
        width: 100%;
        height: 100%;
    }
    .login-box {
        width: 100%;
        max-width:500px;
        height: 400px;
        position: absolute;
        top: 50%;

        margin-top: -200px;
        /*设置负值，为要定位子盒子的一半高度*/

    }
    @media screen and (min-width:500px){
        .login-box {
            left: 50%;
            /*设置负值，为要定位子盒子的一半宽度*/
            margin-left: -250px;
        }
    }

    .form {
        width: 100%;
        max-width:500px;
        height: 275px;
        margin: 25px auto 0px auto;
        padding-top: 25px;
    }
    .login-content {
        height: 300px;
        width: 100%;
        max-width:500px;
        background-color: rgba(255, 250, 2550, .6);
        float: left;
        text-align: center;
    }


    .input-group {
        margin: 0px 0px 30px 0px !important;
    }
    .form-control {
        length: 300px;
        height: 40px;
        text-align: center;
    }
    .input-group {
        height: 40px;
    }

    .form-group {
        margin-bottom: 0px !important;
    }
    .login-title {
        padding: 20px 10px;
        background-color: rgba(0, 0, 0, .6);
    }
    .login-title h1 {
        margin-top: 10px !important;
    }
    .login-title small {
        color: #fff;
    }

    .link p {
        line-height: 20px;
        margin-top: 30px;
    }
    .btn-sm {
        padding: 8px 24px !important;
        font-size: 16px !important;
    }
</style>


<body>

<div class="box">
<div class="login-box">
    <div class="login-title text-center">
        <h1><small>SSM CAS测试系统-用户登录</small></h1>
    </div>
    <div class="login-content ">
        <div class="form">
            <form id="loginform" action="<%=basePath %>login" method="post"> <!--这里用login和login.do 是一样的 -->

                <div class="form-group">
                    <div class="col-xs-12  ">
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span></span>
                            <input type="text" name="username" class="form-control" placeholder="用户名">
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-xs-12  ">
                        <div class="input-group">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-lock"></span></span>
                            <input type="password" name="password" class="form-control" placeholder="密码">
                        </div>
                    </div>
                </div>
                <div class="form-group form-actions">
                    <div class="col-xs-4 col-xs-offset-4 ">
                        <button type="submit" class="btn btn-sm btn-info"><span class="glyphicon glyphicon-off"></span> 登录</button>

                    </div>
                </div>

            </form>
        </div>
    </div>
</div>
</div>





</body>
</html>
