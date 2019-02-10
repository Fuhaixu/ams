$("#uid").mouseleave(function() {
	$(this).parent().attr("class","input-group has-error");
	$(this).parent().css({"width":"300px"});
	$("p").eq(0).css({"display":"block"});
});

//两次密码校验
$("#pwd2").mouseleave(function(){
	var pwd1=$("#pwd1").val();
	var pwd2=$("#pwd2").val();
	if(pwd1!=pwd2){
		$(this).parent().attr("class","input-group has-error");
		$(this).parent().css({"width":"300px"});
		$("p").eq(1).css({"display":"block"});
	}else{
		$("#pwd2").parent().prop("class","input-group");
		$("#pwd2").parent().css({"width":"300px"});
		$("p").eq(1).css({"display":"none"});
	}
});

//身份证验证
$("#cid").mouseleave(function(){
	var cid=$("#cid").val();
	if(cid.length!=18&&cid.length!=15){
		$(this).parent().attr("class","input-group has-error");
		$(this).parent().css({"width":"300px"});
		$("p").eq(2).css({"display":"block"});
	}else{
		$(this).parent().attr("class","input-group");
		$(this).parent().css({"width":"300px"});
		$("p").eq(2).css({"display":"none"});
	}
});

function isEmail(str){
	if(str==null) return false;
	var reg=new RegExp(/^([a-zA-Z0-9._-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/);
	return reg.test(str);//检测字符串是否符合正则表达式
}

$("#email").mouseleave(function(){
	var email=$(this).val();
	if(!isEmail(email)){
		$(this).parent().attr("class","input-group has-error");
		$(this).parent().css({"width":"300px"});
		$("p").eq(3).css({"display":"block"});
	}else{
		$(this).parent().attr("class","input-group");
		$(this).parent().css({"width":"300px"});
		$("p").eq(3).css({"display":"none"});
	}
});
