// $("#uid").blur(function() {
// 	var tele=$("#uid").val();
// 	var parent=$(this).parent();
//     $.ajax({
//         type: "POST",
//         url: "http://127.0.0.1:8080/check_tel",
//         contentType: "application/json", //必须有
//         dataType: "json", //表示返回值类型，不必须
//         data: tele,
//         success: function (res) {
//             if(res){
//                 parent.prop("class","input-group has-error");
//                 parent.css({"width":"300px"});
//                 $("p").eq(0).css({"display":"block"});
// 			}else{
//                 parent.prop("class","input-group");
//                 parent.css({"width":"300px"});
//                 $("p").eq(0).css({"display":"none"});
// 			}
//         }
//     });
//
// });

//两次密码校验
$("#pwd2").blur(function(){
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
}).focus(function(){
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
$("#cid").blur(function(){
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
}).focus(function(){
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
function isCid(cid){
	if(cid.length!=18&&cid.length!=15)return false;
	return true;
}
function isEmail(str){
	if(str==null) return false;
	var reg=new RegExp(/^([a-zA-Z0-9._-])+@([a-zA-Z0-9_-])+(\.[a-zA-Z0-9_-])+/);
	return reg.test(str);//检测字符串是否符合正则表达式
}

$("#email").blur(function(){
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
}).focus(function(){
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

$("#sign_up").submit(function () {
	var ts="";
	var pwd1=$("#pwd1").val();
	var pwd2=$("#pwd2").val();
	var email=$("#email").val();
	var cid=$("#cid").val();
	if(pwd1!=pwd2)ts+="密码不一致\n";
	if(!isEmail(email))ts+="邮箱格式不正确\n";
	if(!isCid(cid))ts+="身份证格式不正确\n";
	if(ts!=""){
		alert(ts);return false;
	}
    return true;
})
