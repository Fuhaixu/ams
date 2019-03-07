<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>投资</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../css/assert/manager.css">
</head>
<body>
<!-- 导航 -->
<nav class="navbar navbar-default navbar-fixed-top" style="height: 60px;">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/admin/index">首页</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">

        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->

</nav>
<div class="main">
    <div class="main-head">
        <div class="btn-group">
            <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">选择项目类型
                <span class="caret"></span>
            </button>
            <ul class="dropdown-menu" role="menu">
                <li>
                    <a href="/admin/index">全部</a>
                </li>
                <li>
                    <a href="/admin/manager/1">进行中</a>
                </li>
                <li>
                    <a href="/admin/manager/0">未启动</a>
                </li>
                <li>
                    <a href="/admin/manager/2">完成</a>
                </li>
            </ul>
        </div>
        <div style="position: relative;margin-left: 200px;margin-top: -40px;">
            <form class="navbar-form navbar-left" action="/admin/query">
                <div class="form-group">
                    <input type="text" class="form-control" name="kw" placeholder="用户姓名/项目名称">
                </div>
                <button type="submit" class="btn btn-default">查找</button>
            </form>
        </div>
    </div>
    <table class="table table-bordered table-hovered">
        <caption>项目管理</caption>
        <thead>
        <tr>
            <td></td>
            <td>项目名</td>
            <td>投入资金</td>
            <td>目标年利率</td>
            <td>用户</td>
            <td>项目状态</td>
            <td></td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${managerPros}" var="mp">
            <tr>
                <td>${managerPros.indexOf(mp)}</td>
                <td>${mp.pname}</td>
                <td>${mp.cost}W</td>
                <td>${mp.rate}%</td>
                <td>${mp.name}</td>
                <c:choose>
                    <c:when test="${mp.res==0}">
                        <td style="color: grey">未启动</td>
                    </c:when>
                    <c:when test="${mp.res==1}">
                        <td style="color: red">进行中</td>
                    </c:when>
                    <c:when test="${mp.res==2}">
                        <td style="color: green">完成</td>
                    </c:when>
                </c:choose>
                <td><a href="/admin/managerPro?oID=${mp.oID}">查看详情</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
