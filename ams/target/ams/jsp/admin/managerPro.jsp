<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1"%>
<!DOCTYPE html>
<html>
<head>
    <title>管理项目</title>
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
    <form action="/admin/manager/update">
        <table class="table table-bordered table-hover" style="width: 700px">
            <tbody>
            <tr>
                <td>订单号</td>
                <td>${managerPro.oID}</td>
            </tr>
            <tr>
                <td>用户名</td>
                <td>${managerPro.name}</td>
            </tr>
            <tr>
                <td>花费</td>
                <td><div class="input-group">
                    <input type="text" class="form-control" name="cost" placeholder="花费" value="${managerPro.cost}">
                    <span class="input-group-addon">
				        		W
				        	</span>
                </div></td>
            </tr>
            <tr>
                <td>是否保本</td>
                <td>
                    <c:if test="${managerPro.break_even==0}">
                    否
                </c:if>
                    <c:if test="${managerPro.break_even==1}">
                        是
                    </c:if>
                </td>
            </tr>
            <tr>
                <td>更改保本</td>
                <td><input type="radio" name="break_even" value="1">是<input type="radio" name="break_even" value="0">否</td>
            </tr>
            <tr>
                <td>持续时间</td>
                <td>
                    <div class="input-group">
                        <input type="text" class="form-control" name="interval" placeholder="天数" value="${managerPro.interval}">
                        <span class="input-group-addon">
				        		天数
				        	</span>
                    </div>
                </td>
            </tr>
            <tr>
                <td>当前状态</td>
                <td>
                    <c:choose>
                        <c:when test="${managerPro.res==0}">
                            <span style="color: grey">未启动</span>
                        </c:when>
                        <c:when test="${managerPro.res==1}">
                            <span style="color: red">进行中</span>
                        </c:when>
                        <c:otherwise>
                            <span style="color: green">已完成</span>
                        </c:otherwise>
                    </c:choose>
                </td>
            </tr>
            <tr>
                <td>更改状态</td>
                <td><select name="res">
                    <option value="0" style="color: grey">未启动</option>
                    <option value="1" style="color: red">进行中</option>
                    <option value="2" style="color: green">已完成</option>
                </select></td>
            </tr>
            </tbody>
        </table>
        <button type="submit" class="btn btn-primary" id="save">保存</button>
    </form>

</div>
</body>
</html>