<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/face.css">
</head>
<body>
<!-- 导航 -->
<nav class="navbar navbar-default" style="height: 60px;">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html">主页</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="#"><img src="${sessionScope.user.avatar}" alt="头像" class="img-circle" style="width: 40px;height: 40px;margin-top: -5px"></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的账户<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">基本信息</a></li>
                        <li><a href="#">历史记录</a></li>
                        <li><a href="#">消息</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="../login.html">退出登录</a></li>
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
<!--上传信息的框体-->
<div class="main">
    <div class="main-left">
        <ul class="nav nav-pills nav-stacked">
            <li class="active"><a href="#home" data-toggle="tab">Home</a></li>
            <li><a href="#myInfo" data-toggle="tab">我的信息</a></li>
            <li><a href="#face" data-toggle="tab">我的头像</a></li>
            <li><a href="#changePwd" data-toggle="tab">修改密码</a></li>
            <li><a href="#myHistory" data-toggle="tab">我的记录</a></li>
        </ul>
    </div>

    <div class="main-right">
        <div class="tab-content">
            <div class="tab-pane fade in active" id="home">
                <p><a href="#face" data-toggle="tab"><img src="${sessionScope.user.avatar}" alt="头像" class="img-circle" style="width: 40px;height: 40px;margin-top: -5px"></a><h4 style="width: 200px;margin-top: -35px;margin-left: 60px;">账户</h4></p>
                <hr>
                <p>账户余额:1000.00元 <span style="margin-left: 100px">理财资产:10000.00元</span></p>
            </div>

            <div class="tab-pane fade" id="myInfo">
                <form action="saveInfo" method="post">
                    <h4>我的信息</h4>
                    <hr>
                    <p>用户名:<input type="text" name="name" class="form-control input-text">
                    <p>帐&nbsp;&nbsp;&nbsp;&nbsp;号:<input type="text" name="uid" class="form-control input-text">
                    <p>邮&nbsp;&nbsp;&nbsp;&nbsp;箱:<input type="text" name="email" class="form-control input-text"></p>
                    <p>住&nbsp;&nbsp;&nbsp;&nbsp;址:<input type="text" name="loc" class="form-control input-text"></p>
                    <button type="submit" class="btn btn-primary">保存信息</button>
                </form>
            </div>

            <div class="tab-pane fade" id="face">
                <form action="/account/upload/Face" method="post" enctype="multipart/form-data">
                    <h4>我的头像</h4>
                    <hr>
                    <input type="file" name="file">
                    <p style="color: #99a2aa;margin-top: 5px">请选择图片上传：大小180 * 180像素支持JPG、PNG等格式，图片需小于2M</p>
                    <c:if test="${error}">
                        <script>alert("${error}");</script>
                    </c:if>
                    <button type="submit" class="btn btn-primary">上传头像</button>
                </form>
            </div>
            <div class="tab-pane fade" id="changePwd">
                <form action="changePwd" method="post">
                    <h4>修改密码</h4>
                    <hr>
                    <p>电&nbsp;&nbsp;&nbsp;&nbsp;话:<input type="text" name="uid" class="form-control input-text">
                    <p>原密码:<input type="text" name="uid" class="form-control input-text">
                    <p>新密码:<input type="text" name="pwd" class="form-control input-text" id="pwd1"></p>
                    <p>确认密码:<input type="text" class="form-control input-text" id="pwd2"></p>
                    <p style="display: none;color: red" id="ts1">两次输入密码不一致</p>
                    <p style="display: none;color: red" id="ts2">密码不能为空</p>
                    <button type="submit" class="btn btn-primary">修改密码</button>
                </form>
            </div>
            <div class="tab-pane fade" id="myHistory">
            </div>
        </div>
    </div>
</div>

</body>

<script type="text/javascript">
    $("#changePwd > form").submit(function() {
        $("[id^=ts]").css({"display":"none"});
        var pwd1=$("#pwd1").val();
        var pwd2=$("#pwd2").val();
        if(pwd1==""){
            $("#ts2").css({"display":"block"});
            return false;
        }
        if(pwd1!=pwd2){
            $("#ts1").css({"display":"block"});
            return false;
        }
        return true;
    })
</script>
</html>
