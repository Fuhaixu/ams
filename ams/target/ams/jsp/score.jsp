<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>首页</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/question.css">
</head>
<body>
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
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li><a href="#">恐惧指数测评<span class="sr-only">(current)</span></a></li>
                <li><a href="#">贪婪指数测评</a></li>
                <li><a href="#">金融基本常识</a></li>
                <li><a href="#">投资经验测评</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">退出答题<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">否</a></li>
                        <li><a href="/login">确认退出</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</nav>
<!--导航栏结束，面板部分-->
<div class="well well-main">
    <p><h3>您的最终成绩为</h3></p>
    <p><span style="color: #47a447">贪婪</span>:${sessionScope.test.greed}</p>
    <p><span style="color: #000000">恐惧</span>:${sessionScope.test.feer}</p>
    <p><span>投资经验</span>:${sessionScope.test.exp}</p>
    <p>解释：</p>
    <c:choose>
        <c:when test="${sessionScope.test.feer>75&&sessionScope.test.greed<25}">
        <p>投资类型:风险厌恶型</p>
        <p>您对风险避而远之，投资风格相当稳健，追求稳定利润。</p>
        <p>适合投资品种：货币基金，债券，长线外汇投资，价值型股票投资</p>
        <p>公司配置：首席经济学家准确把握大趋势，为您锁定利润</p>
        <p>管理费：2%</p>
        <p>目标年化收益：15%</p>
        </c:when>
        <c:when test="${sessionScope.test.feer<25&&sessionScope.test.greed>75}">
            <p>投资类型:风险偏好型</p>
            <p>您热衷于风险带来的巨额利润，投资风格激进，不放过每一个机会，追求超高回报。</p>
            <p>适合投资品种：股票短线交易，超短线外汇投机交易，短线期货交易，期权交易，股权投资。</p>
            <p>公司配置：百余名职业操盘手全天24小时，在国际外汇市场，全球股市，期市等为您寻找机会，精准狙击，以获得超高利润</p>
            <p>管理费：20%</p>
            <p>目标年化收益：无上限</p>
        </c:when>
        <c:otherwise>
            <p>投资类型:风险中立型</p>
            <p>您对风险的态度中立，可适度参与高风险性投资，以博取超高利润，追求较高的稳定利润。</p>
            <p>适合投资品种：非货币型基金，中长线外汇交易，波段股票交易，中长线期货交易。</p>
            <p>公司配置：公司首席经济学家把握宏观趋势，百余名职业操盘手为您精准操作，锁定利润。</p>
            <p>管理费：10%</p>
            <p>目标年化收益：50%</p>
        </c:otherwise>
    </c:choose>
    <hr>
    <p>您的金融知识面:</p>
    <c:choose>
        <c:when test="${sessionScope.test.exp<60}">
            <p>您的金融知识有待提高，进一步学习有助于提高您的交易胜率</p>
        </c:when>
        <c:when test="${sessionScope.test.exp>60&&sessionScope.test.exp<80}">
            <p>您的金融知识基本合格，了解面较广，可尝试多种投资品种</p>
        </c:when>
        <c:when test="${sessionScope.test.exp>80&&sessionScope.test.exp<100}">
            <p>您的金融知识丰富，可进一步学习一些投资策略，形成自身的交易系统</p>
        </c:when>
        <c:when test="${sessionScope.test.exp==100}">
            <p>您的知识水平堪比职业投资人，可加入我们哦，收入超高</p>
        </c:when>
    </c:choose>
</div>
<p style="width: 400px;margin-left: calc(50% - 200px)"><a href="/index"><button class="btn btn-primary btn-back">返回</button></a></p>
</body>
</html>
