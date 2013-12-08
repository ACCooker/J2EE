<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>登陆失败页面</title>
</head>

<body  bgcolor="#D1EEEE">
	<div style="width: 100%; padding-top: 200px;" align="center">
		<h1>
			<font color="Red">登录失败：用户名、密码、用户类型不匹配</font>
		</h1>
	</div>
</body>
</html>
