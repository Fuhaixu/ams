<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>登录页</title>
    <meta charset="utf-8">
    <script type="text/javascript" src="../js/vue/vue.js"></script>
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../css/login.css">
</head>
<body>
<div class="main">
    <form action="/admin/sign_in" action="post">
        <div class="login">
            <div class="login_title">
                <h4>
                    <a href="/admin/login">登录</a>
                </h4>
            </div>
            <hr>
            <div class="login_inputs">
                <div class="form-group">
                    <input type="text" class="form-control" name="sta_ID" placeholder="手机号" id="uid" />
                    <!-- <span class="glyphicon glyphicon-user" aria-hidden="true" id="user"></span> -->
                </div>
                <div class="form-group">
                    <span class="glyphicon glyphicon-eye-close eye_pos" aira-hidden="true" id="eye"></span>
                    <input type="password" class="form-control" name="pwd" placeholder="密码" id="pwd" />
                </div>
                <%--<p class="ts"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>密码错误</p>--%>
            </div>
            <button class="btn btn-primary sign_in_btn" type="submit">登录</button>
        </div>
        <!-- <div class="login_footer">
            <span><a href="register.html">注册账号</a></span>
            <span class="login_back_pwd"><a href="getPwd.html">找回密码</a></span>
        </div> -->
    </form>
    <c:if test="${error}">
        <script>alert("${error}");</script>
    </c:if>
</div>
<div class="bottom">
    <p>软嵌152©版权所有</p>
</div>
</body>
<script src="../../js/login.js"></script>
</html>
