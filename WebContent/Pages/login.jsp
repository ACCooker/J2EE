<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<%@ include file="commonImportTitle.jsp"%>
<script type="text/javascript" src="../Js/MyJs/login.js"> </script>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

<title>欢迎登陆</title>
</head>

<body background="../Images/bg_1.png" topmargin="0" leftmargin="0">
	<s:form id="formLogin"  action="LoginAction" method="post" namespace="/actions">
		<table style="width: 100%; padding-top: 100px;">
			<tr>
				<td align="center" width="100%">
					<table style="width: 35%; Height:200px;" cellpadding="0" cellspacing="0" align="center" >
						<tr>
							<td style="width: 100%; background-image: url(../Images/login_1.png); background-repeat: no-repeat; padding-top: 100px; height: 350px;"
								valign="top">
								<table style="width: 100%;" cellpadding="0" cellspacing="0">
									<tr>
										<td style="width: 40%; padding-left: 100px; padding-right: 10px;"
											align="left">用户名</td>
										<td style="width: 65%;">
											<input type="text" name="userBean.userName" id="username" class="easyui-validatebox"
												data-options="required:true" onkeydown="FSubmit(event.keyCode||event.which);">
										</td>
									</tr>
									<tr>
										<td
											style="padding-left: 100px; padding-right: 10px; padding-top: 5px;">
											密码</td>
										<td>
											<input type="password" name="userBean.passward" id="passward"
												class="easyui-validatebox" data-options="required:true" onkeydown="FSubmit(event.keyCode||event.which);">
										</td>
									</tr>
									<tr>
										<td style="padding-left: 100px; padding-right: 10px; padding-top: 5px;">
											用户类型
										</td>
										<td>	
											<s:action name="typeAction" namespace="/actions" id="typeAction" /> 
											<s:select
												id="listType" 
												style="width:155px;"
												cssClass="easyui-combobox"
												list="#typeAction.listType"
												listKey="typeValue"
												listValue="typeName"
								                name="userBean.userType"
								                theme="simple">
								           </s:select>
										</td>
									</tr>
									<tr>
										<td colspan="2" align="left"
											style="padding-left: 150px; padding-top: 5px;">
											<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">登陆</a>
											<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">清空</a>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
	</s:form>
</body>
</html>
