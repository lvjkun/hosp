<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <title>主界面</title>
    <meta charset="UTF-8">
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="js/bootstrap-theme.min.css">

	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="js/jquery-2.2.0.js"></script>

	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="js/bootstrap.min.js"></script>	
	
	<script type="text/javascript" src="js/main.js"></script>
	
	<link rel="stylesheet" type="text/css" href="css/main.css"/>
  </head>
  
  <body>

   <div class="header">
		<h3>东莞市中医院病人信息管理系统</h3>
		
		<a href="<c:url value="/index.html"/>">退出</a>
		<a>欢迎您：${requestScope.username }</a>
	</div><!--header结束-->
	<div class="main">
		<!--打开菜单按钮-->
		<input type="image" src="images/menu-icon.png" id="menuOn"/>
		<!--左侧导航菜单-->
		<div class="mainLeft">
				<input type="image" src="images/close_icon.png" id="menuClose">
				<p style="font-size: 40px;margin-top: 0;opacity: 1;">导航菜单</p>
				<p id="guaHao_click">门诊挂号及预约</p>
				<p id="shouFei_click">病人查询</p>
				<p id="zuiZong_click">病案追踪</p>
				<p id="tongJi_click">医疗统计</p>
				<p id="chuRuYuan_click">出入院管理</p>
		</div>
		<!--页面主体-->
		<div class="mainRight">
			
		</div><!--mainRight结束-->
	</div><!--main结束-->

	
  </body>
</html>
