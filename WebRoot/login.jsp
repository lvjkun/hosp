<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<style>
		body{
			background-color: #f5f5f5;
		}
		.wrap{
			width: 854px;
			height: 620px;
			background-color: #fff;
			margin: auto;
			position: absolute;
			left: 0;
			top: 0;
			right: 0;
			bottom: 0;
		}
		.l1{
			text-align: center;
			font-size: 40px;
			padding-top: 100px;

		}
		.l2{
			display: block;
			height: 40px;
			width: 400px;
			margin: 0 auto;
		}
		.l3{
			display: block;
			height: 40px;
			width: 400px;
			margin: 0 auto;
			margin-top: 15px;
		}
		.l4{
			display: block;
			height: 46px;
			width: 406px;
			background-color: #EF5B00;
			color: #fff;
			font-size: 20px;
			border: 0;
			margin: 0 auto;
			margin-top: 15px;
		}
		.l5{
			display: block;
			height: 46px;
			line-height: 46px;
			width: 406px;
			background-color: #EF5B00;
			color: #fff;
			font-size: 20px;
			margin: 0 auto;
			margin-top: 15px;
			text-align: center;
			text-decoration: none;
		}
	</style>
  </head>
  
  <body>
    <div class="wrap">
    	<form action="<c:url value="/loginCheck.html"/>" method="post">
    		<p class="l1">病人信息管理系统</p>
    		<input type="text" placeholder="用户名" name="username" class="l2">
    		<input type="password" placeholder="密码" name="password" class="l3">
    		<input type="submit" value="登录"  class="l4"> 
    		<a href="/hosp/signUp.jsp" >用户注册</a>
  	    </form>
    </div>
    <c:if test="${!empty error }">
    	<font color="red"><c:out value="${error }"/></font>
    </c:if>
  </body>
</html>
