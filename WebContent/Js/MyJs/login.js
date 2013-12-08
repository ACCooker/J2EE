function Check() {
	var username = $("#username");
	var pwd = $("#pwd");

	if (username.val() == "") {
		$.messager.alert('提示信息', '用户名不能为空', 'info');
		return false;
	}

	if (pwd.val() == "") {
		$.messager.alert('提示信息', '密码不能为空', 'info');
		return false;
	}
	return true;
}

function CheckButton() {
	if (Check()) {
		$.ajax({
			type : "post",
			url : "Servlet/Controller",
			data : {
				username : $("#username").val(),
				pwd : $("#pwd").val()
			},
			success : function(data) {
				location.href = data;
			}
		});
	}
}

function submitForm() {
	if ($('#formLogin').form('validate')){
		$('#formLogin').submit();
	}
}

function clearForm() {
	$('#formLogin').form('clear');
}

function FSubmit(e) {
	if (e == 13) {
		if ($('#formLogin').form('validate'))
			$('#formLogin').submit();
		e.returnValue = false;
		// 返回false，在没有使用document.loginForm.submit()时可用于取消提交
	}
}

//$(function(){ 
//	$.ajax({
//		type : "post",
//		url : "typeAction",
//		data : {
//			
//		},
//		success : function(data) {
//			location.href = data;
//		}
//	});
//}

