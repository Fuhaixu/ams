<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
    <meta charset="utf-8">
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../css/index.css">
</head>
<body>
<!-- 导航 -->
<nav class="navbar navbar-default" style="height: 60px;">
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

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <!--  <ul class="nav navbar-nav">
               <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
                <li><a href="#"><img src="" alt="头像" class="img-circle"></a></li>
               <li class="dropdown">
                 <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我<span class="caret"></span></a>
                 <ul class="dropdown-menu">
                   <li><a href="#">Action</a></li>
                   <li><a href="#">Another action</a></li>
                   <li><a href="#">Something else here</a></li>
                   <li role="separator" class="divider"></li>
                   <li><a href="#">Separated link</a></li>
                   <li role="separator" class="divider"></li>
                   <li><a href="#">One more separated link</a></li>
                 </ul>
               </li>
             </ul> -->
            <!-- <form class="navbar-form navbar-left">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
              </div>
              <button type="submit" class="btn btn-default">Submit</button>
            </form> -->
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/account/"><img src="${sessionScope.user.avatar}" alt="头像" class="img-circle" style="width: 40px;height: 40px;margin-top: -5px"></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">我的账户<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/account/">基本信息</a></li>
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

<!-- 巨幕或者轮播图 -->
<div class="jumbotron">
    <div id="myCarousel" class="carousel slide">
        <!-- 轮播（Carousel）指标 -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <!-- 轮播（Carousel）项目 -->
        <div class="carousel-inner">
            <div class="item active">
                <img src="../img/pro10.jpg" alt="First slide">
            </div>
            <div class="item">
                <img src="../img/pro12.jpg" alt="Second slide">
            </div>
            <div class="item">
                <img src="../img/pro8.jpg" alt="Third slide">
            </div>
        </div>
        <!-- 轮播（Carousel）导航 -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>
</div>

<!-- 展示 -->
<div class="row">
    <div class="col-sm-6 col-md-4">
        <div class="thumbnail">
            <img src="..." alt="...">
            <div class="caption">
                <h3>Thumbnail label</h3>
                <p>...</p>
                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
            </div>
        </div>
    </div>
</div>

<div class="bottom">
    <p>软嵌152©版权所有</p>
</div>
</body>
</html>
