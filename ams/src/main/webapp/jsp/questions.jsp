<%@ page import="java.util.List" %>
<%@ page import="com.software.entity.Question" %>
<%@ page import="com.software.entity.Choice" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
            <a class="navbar-brand" href="index.html">主页</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">恐惧指数测评<span class="sr-only">(current)</span></a></li>
                <li><a href="#">贪婪指数测评</a></li>
                <li><a href="#">金融基本常识</a></li>
                <li><a href="#">投资经验测评</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <!--  <li><a href="#">Link</a></li> -->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">退出答题<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">否</a></li>
                        <li><a href="/login">确认退出</a></li>
                        <!-- <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li><a href="#">退出</a></li> -->
                    </ul>
                </li>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->

</nav>

<!-- 答题 -->
<div class="row black-row-1">
    <div class="col-md-4 col-xs-4 col-sm-4" id="ansNum">答题进度0/${questions.size()}</div>
    <div class="col-md-6 col-xs-6 col-sm-6">最终成绩是对您的风险承受评估，请认真作答</div>
    <div class="col-md-2 col-xs-2 col-sm-2" style="color: white"><span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span><a href="#" class="tooltip-test" data-toggle="tooltip" data-placement="bottom" title="风险评估共30题，分为恐惧指数测评，贪婪指数测评，金融基本常识测评，投资经验测评，分数高低不分优劣，只是对投资者风险承受能力的强弱，投资态度的一个衡量。">提示</a></div>
</div>
<div class="container">
    <div class="main">
        <form action="/question/check" method="post">
            <%List<Question> questions=(List<Question>) request.getAttribute("questions");
            for(Question question:questions){
                if(question.getQ_no()%5==1){
            %>
                    <div class="page_<%=question.getQ_no()/5+1%>">
             <%}%>
            <div class="block">
                <div class="panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title"><%=question.getQ_no()%>. <%=question.getTitle()%></h3>
                    </div>
                    <div class="panel-body">
                        <%List<Choice> choices=question.getChoices();
                        for(Choice choice:choices){%>
                        <p><input type="radio" name="choice_<%=question.getQ_no()%>" value="<%=choice.getCh()%>"><%=choice.getCh()%>.<%=choice.getCtext()%></p>
                        <%}%>
                    </div>
                </div>
            </div>
                <% if(question.getQ_no()%5==0){
                if(question.getQ_no()==questions.size()){%>
                        <button id="btn_up" class="btn btn-primary" style="width: 200px;margin-left: calc(50% - 100px)">提交</button>

                        <%}%>
                    </div>
                <%}
            }%>

            <ul class="pagination" style="width:300px;margin-left: calc(50% - 140px)">
                        <li>
                            <a href="#" aria-label="Previous">
                                <span aria-hidden="true">&laquo;</span>
                            </a>
                        </li>
                        <li><a href="#">1</a></li>
                        <li><a href="#">2</a></li>
                        <li><a href="#">3</a></li>
                        <li><a href="#">4</a></li>
                        <li><a href="#">5</a></li>
                        <li><a href="#">6</a></li>
                        <li>
                            <a href="#" aria-label="Next">
                                <span aria-hidden="true">&raquo;</span>
                            </a>
                        </li>
                    </ul>

        </form>
    </div>
</div>
</body>
<script>
    $(function () { $("[data-toggle='tooltip']").tooltip(); });
    var curPage=1;
    var totalPage=6;
    $("[class^=page_]").css({"display":"none"});
    $(".page_"+curPage).css({"display":"block"});
    $(".pagination > li > a").click(function(){
        var t=$(this).text();
        $("[class^=page_]").css({"display":"none"});
        if(t.indexOf("«")!=-1)t=curPage==1?curPage:curPage-1;
        else if(t.indexOf("»")!=-1)t=curPage==totalPage?totalPage:curPage+1;
        curPage=parseInt(t);
        $(".page_"+t).css({"display":"block"});
    });
    var chCt=0;
    var sum=${questions.size()};
    var choices={};
    $("input[name^=choice_]").click(function(){
        var ch=$(this).val();
        var name=$(this).attr("name");
        var no=parseInt(name.substring(name.indexOf("_")+1));
        if(choices[no]==null){
            chCt++;
            $("#ansNum").text("答题进度"+chCt+"/"+sum);
        }
        choices[no]=ch;
    });
    $("form").submit(function () {
        if(chCt==sum){
            if(confirm("确认提交吗?")){
               return true;
            }
        }
        return false;
    });
</script>
</html>
