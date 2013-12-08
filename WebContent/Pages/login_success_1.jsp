<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>登陆成功页面</title>
<style type="text/css">
#divtop td {
	background-color: #BBFFFF;
	border: 1px solid;
	border-color: #79CDCD;
	border-bottom: 0px;
	border-left: 0px;
	border-right: 0px;
}

#divtop table {
	width: 100%;
}

a {
	text-decoration: none;
	font-size: 11pt;
	font-family: @ 华文行楷;
	color: #8E388E;
	text-align: center;
	display: block;
	padding-top: 5px;
}
</style>

<%@ include file="commonImportTitle.jsp"%>
</head>
<body class="easyui-layout">
	<div data-options="region:'north',border:false"
		style="background-image: url(../Images/bg_top.png); background-repeat: no-repeat; height: 100px; padding: 5px">
		<div align="center" style="padding-top: 20px;">
			<h1>
				<font color="Red"><s:label name="userBean.userName" />登陆成功</font>
			</h1>
			
		</div>
	</div>
	<div data-options="region:'west',split:true,collapsed:true" title="导航区"
		style="width: 250px;">
		<div id="divtop" class="easyui-accordion"
			data-options="fit:true,border:false">
			<div title="Title1">
				<table cellpadding="0px" cellspacing="0px">
					<tbody>
						<tr>
							<td><a href="javascript:;" onclick="add('../login.jsp')">AddTab1</a></td>
						</tr>
					</tbody>
				</table>
			</div>
			<div title="Title2">
				<table cellpadding="0px" cellspacing="0px">
					<tbody>
						<tr>
							<td><a href="javascript:;" onclick="add()">Menu1</a></td>
						</tr>
						<tr>
							<td><a href="javascript:;" onclick="add()">Menu2</a></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div data-options="region:'center',border:false">
		<div id="ContentTab" class="easyui-tabs"
			data-options="tools:'#tab-tools',fit:true">
			<div title="Struts2">
				<div style="padding-top:50px;padding-left:200px;">
					<h1> 
	 					<font color="Red">Hello 购房者</font> 
	 				</h1>
				</div>
			</div>
		</div>
	</div>
</body>

</html>

<script type="text/javascript">
	$(function() {
	    var table = $("#divtop").find("table:eq(0)").find("td");
	    var array = new Array(table.length);
	    var trSeq;
	    var i;
	    for (i = 0; i < table.length; i++) {
	        array[i] = false;
	    }
	    $("#divtop td").mouseover(function() {
	        trSeq = $(this).parent().parent().find("tr").index($(this).parent()[0]);
	        if (!array[trSeq])
	            $(this).css("background-color", "#F0F8FF");
	    }).mouseout(function() {
	        trSeq = $(this).parent().parent().find("tr").index($(this).parent()[0]);
	        if (!array[trSeq])
	            $(this).css("background-color", "");
	    }).click(function() {
	        trSeq = $(this).parent().parent().find("tr").index($(this).parent()[0]);
	        for (i = 0; i < table.length; i++) {
	            array[i] = false;
	            $("#divtop td").css("background-color", "#BBFFFF");
	        }
	        array[trSeq] = true;
	        $(this).css("background-color", "#87CEFA")
	    });
	});
	
		var index = 0;
		function add(url){
			index++;
			$('#ContentTab').tabs('add',{
				title: 'Tab'+index,
				href: url + '',
				closable: true
			});
		}
		function remove(){
			var tab = $('#ContentTab').tabs('getSelected');
			if (tab){
				var index = $('#ContentTab').tabs('getTabIndex', tab);
				$('#ContentTab').tabs('close', index);
			}
		}
	</script>