<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>找回密码</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/getPwd.css">
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
            <a class="navbar-brand" href="index.html">主页</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <form class="navbar-form navbar-left">
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="Search">
                </div>
                <button type="submit" class="btn btn-default">Submit</button>
            </form>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="login.html">登录</a></li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!-- 面包屑导航 -->
<ol class="breadcrumb">
    <li><a href="#">找回密码</a></li>
    <!-- <li class="active">基本信息</li> -->
</ol>

<div class="main">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title">找回密码</h3>
        </div>
        <div class="panel-body">
            <form action="sign_in">
                <div class="inputs">
                    <div class="input-group">
                        <span class="input-group-addon"><span class="glyphicon glyphicon-user" aria-hidden="true"></span></span>
                        <input class="form-control" type="text" placeholder="要找回的手机号" id="uid">
                    </div>
                    <div class="input-group">
                        <input class="form-control" type="text" placeholder="真实姓名" id="uid">
                    </div>
                    <div class="input-group">
                        <input class="form-control" type="text" placeholder="身份证" id="uid">
                    </div>
                </div>
                <p><span class="glyphicon glyphicon-info-sign" aria-hidden="true">输入的信息确认无误后,会重置密码</span></p>
                <p><span class="glyphicon glyphicon-info-sign" aria-hidden="true">重置密码后请牢记密码</span></p>
                <button type="submit" class="btn btn-primary submit_btn">提交</button>
            </form>
        </div>
    </div>
</div>

</body>
</html>