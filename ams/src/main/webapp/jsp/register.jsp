<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/register.css">

</head>
<body>
<!-- nav -->
<!-- 导航 -->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/index">主页</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

            <%--<form class="navbar-form navbar-left">--%>
                <%--<div class="form-group">--%>
                    <%--<input type="text" class="form-control" placeholder="Search">--%>
                <%--</div>--%>
                <%--<button type="submit" class="btn btn-default">Submit</button>--%>
            <%--</form>--%>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/login">登录</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->

</nav>

<!-- 面包屑导航 -->
<ol class="breadcrumb">
    <li><a href="#">注册</a></li>
    <li class="active">基本信息</li>
</ol>
<div class="main">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">注册页面</h3>
        </div>
        <div class="panel-body">
            <form action="sign_up" method="post" id="sign_up">
                <div class="inputs">
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
                        <input class="form-control" type="text" placeholder="手机号" id="uid" name="uid"/>
                        <!-- <span class="glyphicon glyphicon-remove" aria-hidden="true"></span> -->
                    </div>
                    <c:if test="${msg!=null}">
                        <p style="display: block"><span class="glyphicon glyphicon-remove" aria-hidden="true" ></span>手机号已经存在,请更换</p>
                    </c:if>
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="密码" id="pwd1" name="password">
                    </div>
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="确认密码" id="pwd2">
                    </div>
                    <p><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>两次密码输入不一致</p>
                    <!-- <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span></span>
                        <input type="text" class="form-control" placeholder="电话">
                    </div> -->
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="真实姓名" name="name">
                    </div>
                    <div class="input-group">
                        <input type="text" class="form-control" placeholder="身份证" id="cid" name="cid">
                    </div>
                    <p><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>请输入有效身份证</p>
                    <div class="input-group">
			        	<span class="input-group-addon">
			        		<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
			        	</span>
                        <input type="text" class="form-control" placeholder="家庭住址" name="loc">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span></span>
                        <input type="text" class="form-control" placeholder="电子邮箱" id="email" name="email">
                    </div>
                    <p><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>请输入正确电子邮箱</p>
                </div>
                <button class="btn btn-primary sign_up_btn" type="submit">注册</button>

        <!-- <img src="../img/download.png" class="img-circle"> -->
        </form>
        </div>
    </div>
</div>
</div>
</div>
</body>
<script type="text/javascript" src="../js/register.js"></script>
</html>
