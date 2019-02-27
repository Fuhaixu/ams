
var ts="用户名长度应小于20";
var tsflag=false;
var tscolor="rgb(169, 68, 66)";//提示错误颜色
$("#eye").click(function(){
	if($(this).attr("class").indexOf("glyphicon-eye-open")!=-1){
		$(this).prop("class","glyphicon glyphicon-eye-close eye_pos");
		$("[id=pwd]").prop("type","password");
	}
	else{
		$(this).prop("class","glyphicon glyphicon-eye-open eye_pos");
		$("[id=pwd]").prop("type","text");
	}
});

$("form").submit(function(){
	var uid=$("#uid").val();
	if(uid.length>20){
		tsflag=true;
		$("#uid").val(ts);
		$("#uid").css({"color":tscolor});
		$("[class^=form-group]:first").prop("class","form-group has-error");
		return false;
	}
	return true;
});

$("#uid").focus(function(){
	if(tsflag){
		tsflag=false;
		$("#uid").val("");
		$("#uid").css({"color":""});
		$("[class^=form-group]:first").prop("class","form-group");
	}
})