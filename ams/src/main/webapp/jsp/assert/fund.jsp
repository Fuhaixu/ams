<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core_1_1" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.software.entity.Project" %>
<html>
<head>
    <title>投资</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../css/assert/fund.css">
</head>
<body>
<!-- 导航 -->
<nav class="navbar navbar-default navbar-fixed-top" style="height: 60px;">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/index">首页</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="#show_us">关于我们<span class="sr-only">(current)</span></a></li>
                <li><a href="#">项目投资</a></li>
                <li></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><img src="${sessionScope.user.avatar}" alt="头像" class="img-circle" style="width: 40px;height: 40px;margin-top: -5px;"></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的账户<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">基本信息</a></li>
                        <li><a href="#">历史记录</a></li>
                        <li><a href="#">消息</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="/login">退出登录</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->

</nav>
<div class="main">
    <p>您的测试分数为<span>贪婪:${testPo.greed}</span><span>恐惧:${testPo.feer}</span>
        <span>经验测试:${testPo.exp}</span></p>
    <hr>
    <div class="main-container">
        <div class="main-head">
            <h3>向您推荐</h3>
            <div class="btn-group assert_find">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">选择项目类型
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                    <li>
                        <a href="/assert/fund/1">证券</a>
                    </li>
                    <li>
                        <a href="/assert/fund/2">债券</a>
                    </li>
                    <li>
                        <a href="/assert/fund/3">外汇</a>
                    </li>
                    <li>
                        <a href="/assert/fund/4">期货</a>
                    </li>
                    <li>
                        <a href="/assert/fund/5">基金</a>
                    </li>
                    <li>
                        <a href="/assert/fund/6">期权</a>
                    </li>
                    <li>
                        <a href="/assert/fund/7">股权</a>
                    </li>
                </ul>
            </div>
            <div class="btn-group assert_find_mian">
                <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">推荐项目
                    <span class="caret"></span>
                </button>
                <ul class="dropdown-menu" role="menu">
                    <li>
                        <a href="/assert/fund/recommend">推荐项目</a>
                    </li>
                    <li>
                        <a href="/assert/fund/all">全部</a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="main-projects">
            <c:forEach var="project" items="${projects}">
            <div class="project" id="${project.PID}_${project.pname}">
                <div class="project-head">
                    <span class="remove-icon"></span>
                </div>
                <div class="project-body">
                    <p>项目名称:${project.pname}</p>
                    <p>项目年利率:${project.rate}%</p>
                    <c:choose>
                        <c:when test="${project.ptype==Project.Securities}">
                            <p>类型:证券</p>
                        </c:when>
                        <c:when test="${project.ptype==Project.Bond}">
                            <p>类型:债券</p>
                        </c:when>
                        <c:when test="${project.ptype==Project.Exchange}">
                            <p>类型:外汇</p>
                        </c:when>
                        <c:when test="${project.ptype==Project.Futures}">
                            <p>类型:期货</p>
                        </c:when>
                        <c:when test="${project.ptype==Project.Fund}">
                            <p>类型:基金</p>
                        </c:when>
                        <c:when test="${project.ptype==Project.Option}">
                            <p>类型:期权</p>
                        </c:when>
                        <c:when test="${project.ptype==Project.Equity}">
                            <p>类型:股权</p>
                        </c:when>
                    </c:choose>
                </div>
            </div>
            </c:forEach>
        </div>
    </div>
</div>

<div class="navbar-fixed-bottom bottom">
    <div class="container">
        <form>
            <p><span>您选择的项目是:</span><input type="text" value="项目1" disabled="disabled" id="project_name"><input type="text" name="pid" value="" style="display: none;" id="project_id"><span><button type="submit" class="btn btn-primary btn-submit">提交</button></span></p>
        </form>
    </div>
</div>
</body>
<script type="text/javascript">
    $(".project-head > span").click(function(){
        if($(this).attr("class")=="remove-icon"){
            $(".project-head > span").attr("class","remove-icon");
            var id=$(this).parent().parent().attr("id");
            var pid=parseInt(id.split("_")[0]);
            var pname=id.split("_")[1];
            $("#project_name").val(pname);
            $("#project_id").val(pid);
            $(this).attr("class","ok-icon");
        }else{
            $(this).attr("class","remove-icon");
        }
    });
</script>
</html>
