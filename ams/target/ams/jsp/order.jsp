<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>投资</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/assert.css">
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
            <a class="navbar-brand" href="index.html">主页</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <!--  <li><a href="#">Link</a></li> -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">帮助<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">联系我们</a></li>
                        <li><a href="login.html">项目详情</a></li>
                        <!-- <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">退出</a></li> -->
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->

</nav>
<div class="main">
    <div class="panel panel-primary">
        <div class="panel-heading">
            <h3 class="panel-title panel-head">投资订单页面</h3>
        </div>
        <form action="" method="post">
            <div class="input-group" style="margin-top: 10px;width: 280px">
                <span class="input-group-addon">订单号</span>
                <input type="text" name="ono" value="" class="uneditable-input" disabled>
            </div>
            <table class="pro_table table-bordered">
                <thead>
                <tr>
                    <td>项目类型</td>
                    <td>项目名称</td>
                    <td>目标收益</td>
                    <td>投资占比</td>
                </tr>
                </thead>
                <tbody>

                </tbody>
            </table>
            <table class="assert_table">
                <tr>
                    <td>天数</td>
                    <td><div class="input-group"><input type="text" name="time" class="form-control"><span class="input-group-addon">天</span></div></td>
                </tr>
                <tr>
                    <td>花费</td>
                    <td><div class="input-group"><input type="text" name="cost" class="form-control"><span class="input-group-addon">万元</span></div></td>
                </tr>
                <tr><td>是否保本</td><td><input type="radio" name="break_even" value="1"></td></tr>
                <tr id="ts1"><td colspan="2" style="text-align:left;color:#F05A23;"><p>起投不能低于100万元</p></td></tr>
                <tr id="ts2"><td colspan="2" style="text-align: left;color:#F05A23;"><p>投资花费越多优惠越多</p></td></tr>
            </table>
            <table class="table table-hover" id="mytable" style="width: 600px;display: none;font-size: 10px">
                <thead style="text-align: center;">
                <tr>
                    <td>金额</td>
                    <td>级别</td>
                    <td>管理优惠</td>
                    <td>投资增值日刊</td>
                    <td>财富大户室</td>
                    <td>其他</td>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>300W</td>
                    <td>白银会员</td>
                    <td>八折</td>
                    <td>√</td>
                    <td>×</td>
                    <td>暂无</td>
                </tr>
                <tr>
                    <td>600W</td>
                    <td>黄金会员</td>
                    <td>六折</td>
                    <td>√</td>
                    <td>√</td>
                    <td>暂无</td>
                </tr>
                <tr>
                    <td>1000W</td>
                    <td>白金会员</td>
                    <td>四折</td>
                    <td>√</td>
                    <td>√</td>
                    <td>首席分析师指导，量能追踪器</td>
                </tr>
                <tr>
                    <td>3000W</td>
                    <td>钻石会员</td>
                    <td>二折</td>
                    <td>√</td>
                    <td>√</td>
                    <td>首席分析师电话指导，量能追踪器，大数据内部研究报告，资产配置报告，研究部名师私人订制</td>
                </tr>
                </tbody>
            </table>
            <button type="submit" class="btn btn-primary" style="margin-left: 240px;width: 150px">提交订单</button>

        </form>
    </div>
</div>
<script>
    $("#ts2").click(function() {
        var display=$("#mytable").css("display");
        if(display=="none")
            $("#mytable").css({"display":"block"});
        else
            $("#mytable").css({"display":"none"});
    })
</script>
</body>
</html>
