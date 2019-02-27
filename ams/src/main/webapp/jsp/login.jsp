<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录页</title>
    <meta charset="utf-8">
    <%--<script type="text/javascript" src="../js/vue/vue.js"></script>--%>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/login.css">
</head>
<body>
<div class="main">
    <form action="sign_in" action="post">
        <div class="login">
            <div class="login_title">
                <h4>
                    <a href="login.html">登录</a>
                </h4>
            </div>
            <hr>
            <div class="login_inputs">
                <div class="form-group">
                    <input type="text" class="form-control" name="uid" placeholder="手机号" id="uid" />
                    <!-- <span class="glyphicon glyphicon-user" aria-hidden="true" id="user"></span> -->
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-eye-close eye_pos" aira-hidden="true" id="eye"></span>
                    <input type="password" class="form-control" name="password" placeholder="密码" id="pwd" />
                </div>
                <c:choose>
                    <c:when test="${status=='False'}">
                        <p class="ts"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>密码错误</p>
                    </c:when>
                    <c:when test="${status=='Null'}">
                        <p class="ts"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>用户不存在</p>
                    </c:when>
                </c:choose>
            </div>
            <button class="btn btn-primary sign_in_btn" type="submit">登录</button>
        </div>
        <div class="login_footer">
            <span><a href="/register">注册账号</a></span>
            <span class="login_back_pwd"><a href="/getPwd">找回密码</a></span>
        </div>
    </form>
</div>
<!-- <div class="alert alert-warning alert-dismissible" role="alert" id="ts1">
  <button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
  <strong>Warning!</strong> Better check yourself, you're not looking too good.
</div> -->
</body>
<script type="text/javascript" src="../js/login.js"></script>
</html>
