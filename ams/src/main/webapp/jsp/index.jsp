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
            <ul class="nav navbar-nav">
                <li><a href="#show_us">关于我们<span class="sr-only">(current)</span></a></li>
                <li><a href="/assert/fund/recommend">项目投资</a></li>
                <li></li>
            </ul>
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
                <li><a href="/account/"><img src="${sessionScope.user.avatar}" alt="头像" class="img-circle img-thumbnail" style="width: 40px;height: 40px;margin-top: -5px"></a></li>
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
<div>
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
                <img src="../img/banner.jpg" alt="First slide">
            </div>
            <div class="item">
                <img src="../img/banner-asset.jpg" alt="Second slide">
            </div>
            <div class="item">
                <img src="../img/banner_index01.jpg" alt="Third slide">
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

<!--选择部门，查看不同部门的人-->
<div class="person_select_dept" id="show_us">
    <div><h4>管理层</h4></div>
    <div><h4>市场营销部</h4></div>
    <div><h4>风险管理部</h4></div>
    <div><h4>稽核合规部</h4></div>
    <div><h4>交易部</h4></div>
    <div><h4>结算部</h4></div>
    <div><h4>客服部</h4></div>
</div>
<!-- 展示 -->
<div class="person_show_block">
    <div class="ps" id="person_show1">
        <div id="ps1">
            <img src="../img/t1.jpg" alt="精英头像">
            <div class="info1">
                <h3>吴敏</h3>
                <h5>管理层</h5>
            </div>
            <div class="info2">
                <h3>吴华</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps2">
            <img src="../img/t2.jpg" alt="精英头像">
            <div class="info1">
                <h3>沈锋</h3>
                <h5>管理层</h5>
            </div>
            <div class="info2">
                <h3>沈锋</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps3">
            <img src="../img/t3.jpg" alt="精英头像">
            <div class="info1">
                <h3>杨波</h3>
                <h5>管理层</h5>
            </div>
            <div class="info2">
                <h3>杨波</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps4">
            <img src="../img/t4.jpg" alt="精英头像" >
            <div class="info1">
                <h3>王晓炯</h3>
                <h5>管理层</h5>
            </div>
            <div class="info2">
                <h3>王晓炯</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
    </div>

    <div class="ps" id="person_show2">
        <div id="ps1">
            <img src="../img/t5.jpg" alt="精英头像">
            <div class="info1">
                <h3>邹京</h3>
                <h5>市场营销部</h5>
            </div>
            <div class="info2">
                <h3>邹京</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps2">
            <img src="../img/t6.jpg" alt="精英头像">
            <div class="info1">
                <h3>朱梓名</h3>
                <h5>市场营销部</h5>
            </div>
            <div class="info2">
                <h3>朱梓名</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps3">
            <img src="../img/t7.jpg" alt="精英头像">
            <div class="info1">
                <h3>黄杰军</h3>
                <h5>市场营销部</h5>
            </div>
            <div class="info2">
                <h3>黄杰军</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps4">
            <img src="../img/t8.jpg" alt="精英头像" >
            <div class="info1">
                <h3>任虹</h3>
                <h5>市场营销部</h5>
            </div>
            <div class="info2">
                <h3>任虹</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
    </div>

    <div class="ps" id="person_show3">
        <div id="ps1">
            <img src="../img/t9.jpg" alt="精英头像">
            <div class="info1">
                <h3>邹京</h3>
                <h5>风险管理部</h5>
            </div>
            <div class="info2">
                <h3>邹京</h3>
                <p>稽核合规部</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps2">
            <img src="../img/t10.jpg" alt="精英头像">
            <div class="info1">
                <h3>朱梓名</h3>
                <h5>风险管理部</h5>
            </div>
            <div class="info2">
                <h3>朱梓名</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps3">
            <img src="../img/t11.jpg" alt="精英头像">
            <div class="info1">
                <h3>黄杰军</h3>
                <h5>风险管理部</h5>
            </div>
            <div class="info2">
                <h3>黄杰军</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps4">
            <img src="../img/t12.jpg" alt="精英头像" >
            <div class="info1">
                <h3>任虹</h3>
                <h5>风险管理部</h5>
            </div>
            <div class="info2">
                <h3>任虹</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
    </div>

    <div class="ps" id="person_show4">
        <div id="ps1">
            <img src="../img/t13.jpg" alt="精英头像">
            <div class="info1">
                <h3>邹京</h3>
                <h5>稽核合规部</h5>
            </div>
            <div class="info2">
                <h3>邹京</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps2">
            <img src="../img/t14.jpg" alt="精英头像">
            <div class="info1">
                <h3>朱梓名</h3>
                <h5>稽核合规部</h5>
            </div>
            <div class="info2">
                <h3>朱梓名</h3>
                <p>稽核合规部</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps3">
            <img src="../img/t15.jpg" alt="精英头像">
            <div class="info1">
                <h3>黄杰军</h3>
                <h5>稽核合规部</h5>
            </div>
            <div class="info2">
                <h3>黄杰军</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps4">
            <img src="../img/t16.jpg" alt="精英头像" >
            <div class="info1">
                <h3>任虹</h3>
                <h5>稽核合规部</h5>
            </div>
            <div class="info2">
                <h3>任虹</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
    </div>
    <div class="ps" id="person_show5">
        <div id="ps1">
            <img src="../img/t17.jpg" alt="精英头像">
            <div class="info1">
                <h3>邹京</h3>
                <h5>交易部</h5>
            </div>
            <div class="info2">
                <h3>邹京</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps2">
            <img src="../img/t18.jpg" alt="精英头像">
            <div class="info1">
                <h3>朱梓名</h3>
                <h5>交易部</h5>
            </div>
            <div class="info2">
                <h3>朱梓名</h3>
                <p>交易部</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps3">
            <img src="../img/t19.jpg" alt="精英头像">
            <div class="info1">
                <h3>黄杰军</h3>
                <h5>交易部</h5>
            </div>
            <div class="info2">
                <h3>黄杰军</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps4">
            <img src="../img/t20.jpg" alt="精英头像" >
            <div class="info1">
                <h3>任虹</h3>
                <h5>交易部</h5>
            </div>
            <div class="info2">
                <h3>任虹</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
    </div>

    <div class="ps" id="person_show6">
        <div id="ps1">
            <img src="../img/t21.jpg" alt="精英头像">
            <div class="info1">
                <h3>邹京</h3>
                <h5>结算部</h5>
            </div>
            <div class="info2">
                <h3>邹京</h3>
                <p>结算部</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps2">
            <img src="../img/t22.jpg" alt="精英头像">
            <div class="info1">
                <h3>朱梓名</h3>
                <h5>结算部</h5>
            </div>
            <div class="info2">
                <h3>朱梓名</h3>
                <p>稽核合规部</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps3">
            <img src="../img/t23.jpg" alt="精英头像">
            <div class="info1">
                <h3>黄杰军</h3>
                <h5>结算部</h5>
            </div>
            <div class="info2">
                <h3>黄杰军</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps4">
            <img src="../img/t24.jpg" alt="精英头像" >
            <div class="info1">
                <h3>任虹</h3>
                <h5>结算部</h5>
            </div>
            <div class="info2">
                <h3>任虹</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
    </div>

    <div class="ps" id="person_show7">
        <div id="ps1">
            <img src="../img/t25.jpg" alt="精英头像">
            <div class="info1">
                <h3>邹京</h3>
                <h5>客服部</h5>
            </div>
            <div class="info2">
                <h3>邹京</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps2">
            <img src="../img/t26.jpg" alt="精英头像">
            <div class="info1">
                <h3>朱梓名</h3>
                <h5>客服部</h5>
            </div>
            <div class="info2">
                <h3>朱梓名</h3>
                <p>稽核合规部</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps3">
            <img src="../img/t27.jpg" alt="精英头像">
            <div class="info1">
                <h3>黄杰军</h3>
                <h5>客服部</h5>
            </div>
            <div class="info2">
                <h3>黄杰军</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
        <div id="ps4">
            <img src="../img/t28.jpg" alt="精英头像" >
            <div class="info1">
                <h3>任虹</h3>
                <h5>客服部</h5>
            </div>
            <div class="info2">
                <h3>任虹</h3>
                <p>首席CEO</p>
                <p>多年投资经验，帮您精准击中投资机遇</p>
            </div>
        </div>
    </div>
</div>

<div class="well well-show">
    <p><h3 style="color: #F05A23">一、公司简介</h3></p>
    <h5 style="margin-top: 20px">
        &nbsp;&nbsp;规范、稳健、务实的投资风格，科学理性的投资运作，严格审慎的风险管理，高效先进的投资运营，为客户把握投资领域的每个环节，追求资产稳健增值。依托长期全面的资产配置能力和突出的细分品种投资能力，盛天资产管理敏锐把握市场趋势，通过多年积累的产品研发能力和受托管理经验，及时满足国内外机构的投资需求，产品线覆盖全市场，业绩表现持续稳健，并长期在同业中居前。</h5>

    <p style="margin-top: 10px"><h3 style="color: #F05A23">二、全面的资产管理服务提供者</h3></p>
    <h5 style="margin-top: 20px">
        &nbsp;&nbsp;盛天资管为第三方各类客户提供资产管理及投资咨询服务。投资领域涵盖股票、债券、基金、货币市场、外汇市场以及基建投资、股权投资等资本市场与非资本市场的各个领域，具有长期丰富的资产管理经验，以及跨市场资产配置和全品种投资能力。面对日益开放和成熟的市场环境，公司致力于用专业为客户创造价值，提供一站式、全方位的投资管理服务及资产管理解决方案，帮助客户分散投资风险，实现资产保值增值。</h5>

    <p style="margin-top: 10px"><h3 style="color: #F05A23">三、业内领先的资产管理服务</h3></p>
    <h5 style="margin-top: 20px">
        &nbsp;&nbsp;依靠卓越的投资管理能力，盛天资管目前接受各类外部客户委托的管理资产规模正在迅速增长，产品线全面布局，已实现客户数、受托规模及投资业绩全面领先行业。秉承“客户至上，服务至上”的宗旨，盛天资管不断理解和满足客户的需求，配备专业团队，将各类核心投资能力以及丰富市场经验充分整合，为各类客户定制细分投资策略并受托管理或定制产品，客户涵盖各类机构投资者、国家级基金以及海外主权基金等。</h5>
    <p style="margin-top: 10px"><h3 style="color: #F05A23">四、长期稳健的投资业绩</h3></p>
    <h5 style="margin-top: 20px">
        盛天资管以规范、稳健、务实的投资风格，科学理性的投资运作，严格审慎的风险管理，高效先进的投资运营，为客户把握投资领域的每个环节，追求资产稳健增值。依托长期全面的资产配置能力和突出的细分品种投资能力，盛天资产管理敏锐把握市场趋势，通过多年积累的产品研发能力和受托管理经验，及时满足国内外机构的投资需求，产品线覆盖全市场，业绩表现持续稳健，并长期在同业中居前。</h5>

</div>
<div class="bottom">
    <p>软件152©版权所有</p>
</div>
</body>
<script type="text/javascript">
    $("[id^=ps]").mouseover(function(){
        var id=$(this).attr("id");
        $("#"+id+" > .info1").css({"display":"none"});
        $("#"+id+" > .info2").css({"display":"block"});
    }).mouseleave(function(){
        var id=$(this).attr("id");
        $("#"+id+" > .info1").css({"display":"block"});
        $("#"+id+" > .info2").css({"display":"none"});
    });
    $("[id^=person_show]").css({"display":"none"});
    $("#person_show1").css({"display":"block"});
    $(".person_select_dept div").click(function(){
        var num=$(".person_select_dept div").index(this)+1;
        // console.log(num);
        $("[id^=person_show]").css({"display":"none"});
        $("#person_show"+num).css({"display":"block"});
    })
</script>
</html>
