
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no" />
    <title>确认签字</title>

    <script type="text/javascript" src="../../js/confirm/mui.min.js"></script>
    <link href="../../css/assert/mui.min.css" rel="stylesheet" />
    <script type="text/javascript" src="../../js/confirm/jquery.min.js"></script>
    <script type="text/javascript" src="../../js/confirm/jSignature.min.js"></script>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="js/flashcanvas.js"></script>
    <![endif]-->
    <style type="text/css">
        *{
            margin: 0 auto;
        }
        #clear,#sub-btn{
            margin-left: 80px;
            width: 100px;
        }
        .btns{
            width: 400px;
            top: 300px;
            margin-left: 100px;
            position: absolute;
        }
    </style>
</head>

<body>

<h3>请在下方签名</h3>
<div id="signature" style="height: 100%;"></div>
<br>
<div class="btns">
    <form action="/assert/order/add">
        <input id="clear" type="button" value="清除">
        <input type="submit" id="sub-btn" class="btn btn-primary">
    </form>
</div>
<div id="pic" />
<p id="base" style="width:100%;"></p>


<script type="text/javascript" charset="utf-8">
    mui.plusReady(function() {
        plus.screen.lockOrientation('landscape-secondary');
    });
    $(document).ready(function() {
        $("#signature").jSignature()
    });
    document.getElementById("clear").addEventListener('tap', function() {
        $("#signature").jSignature("reset");
        $("#pic")[0].innerHTML = '';
    });
    // document.getElementById("save").addEventListener('tap', function() {
    //     var datapair = $("#signature").jSignature("getData", "image");
    //     var array = datapair.splice(",");
    //     mui.toast(array[1]);
    // });
    // document.getElementById("export").addEventListener('tap', function() {
    //     var datapair = $("#signature").jSignature("getData", "image");
    //     var i = new Image();
    //     i.src = "data:" + datapair[0] + "," + datapair[1];
    //     $(i).appendTo($("#pic"));
    // });
</script>


</body>
</html>
