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