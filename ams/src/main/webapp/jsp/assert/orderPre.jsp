<%@ page import="com.software.entity.Order" %>
<%@ page import="com.software.util.DateUtil" %>
<%@ page import="com.software.entity.Project" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %><%--
  Created by IntelliJ IDEA.
  User: FHX
  Date: 2019/3/6
  Time: 13:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>资产证明</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../../css/assert/orderPre.css">
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
                <li><a href="/index#show_us">关于我们<span class="sr-only">(current)</span></a></li>
                <li><a href="#">项目投资</a></li>
                <li></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><img src="${sessionScope.user.avatar}" alt="头像" class="img-circle" style="width: 40px;height: 40px;margin-top: -5px"></a></li>
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
<div class="head">
    <ol class="breadcrumb">
        <li><a href="/assert/fund/recommend">返回</a></li>
        <li class="active">生成证明</li>
    </ol>
</div>
<div class="main">
    <h3>资产管理计划合同书</h3>
    <hr>
    <div class="main-body">
        <p>甲方： 盛天资本（法人）                 <span style="margin-left: 80px">乙方：${sessionScope.user.name}</span></p>
        　　<p>身份证号码：130726199602047116          身份证号码：${sessionScope.user.cid}</p>
        　　<p>手机： 15195957332                      <span style="margin-left: 100px">手机：${sessionScope.user.uid}</span></p>
        　　<p>地址：南京市江宁区弘景大道b一号          地址：${sessionScope.user.loc}</p>
        <div>
            <%Order order=(Order)session.getAttribute("order");
                Project project=(Project)session.getAttribute("project");
                Date sd=new Date();
                Date ed=DateUtil.afterDate(sd,order.getInterval());
                SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
            %>
            &nbsp;&nbsp;&nbsp;&nbsp;乙方委托甲方为其进行进行资产管理，起初资金为___${sessionScope.order.cost}__万元_ 。经过双方协商约定在 <%=df.format(sd)%>到 <%=df.format(ed)%>期间按照以下条款规定对以上帐户进行资产管理
        </div>
        <p>一  利润的分配：</p>
        <div>
            　　甲方坚持持续稳健获利的资金管理原则，所以乙方的资金可能有时候会保持不变，有时候会获得较大的收益，当然也不排除亏损的可能。利润分配的具体事项如下：
            　　甲方操盘。合约到期日如果有盈利且达到目标收益_<%=Double.toString(project.getRate())%>%则全部目标收益归乙方所有，超过目标收益的部分甲乙双方分配比例为__5:5__;对于不保本型，若到期亏损超过约定最大亏损（50%），甲方负责补偿至约定最大亏损。对于保本型，若到期收益低于目标收益50%，公司负责补偿至目标收益的50%</div>
        <p>二 亏损及责任：</p>
        <div>&nbsp;&nbsp;&nbsp;&nbsp;甲方承担超过约定亏损之外的亏损，且甲方承诺在亏损达到约定亏损时__25%_，立即通知甲方。由甲方决定是否终止本协议执行。</div>
        <p>三协议的终止</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;1、本协议期满后自动终止。</p>
        <div>&nbsp;&nbsp;&nbsp;&nbsp;2、在合约未到期时乙方单方面提前停止委托则乙方违约。因本协议终止由乙方单方面引起，盈利部分按50%分配给乙方，若出现亏损，不论亏损比例是多少，甲方均不承担任何责任。无论是否产生盈利，全额缴纳给甲方__5%__管理费
        </div>
        <p>四、双方配合：</p>
        <div>&nbsp;&nbsp;&nbsp;&nbsp;甲方希望乙方完全信任甲方，并且在本协议执行期间乙方不得干预甲方任何操作，以免干扰甲方的投资策略及交易计划。乙方只需要随时查看并监控自己的资金情况即可。
        </div>
        　　<p>五、本协议一式两份，甲乙双方各执一份。</p>
        　　<p>甲方:__盛天资本____<span style="margin-left: 20px">乙方___${sessionScope.user.name}__</span></p>
        　　<p>签字：__李磊___________ 　<span style="margin-left: 20px">签字：_${sessionScope.user.name}__</span></p>
        <p>日期：____<%=df.format(sd)%>___ 　　<span style="margin-left: 20px">日期：_<%=df.format(sd)%>_</span></p>
    </div>
</div>
<div class="main-bottom">
    <form action="/assert/order/confirm">
        <button type="submit" class="btn btn-primary" style="margin-left: 30px;">提交</button>
        <a href=""><button class="btn" style="margin-left: 100px;">取消</button></a>
    </form>
</div>
</body>
</html>
