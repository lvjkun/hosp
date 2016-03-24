<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
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
	
	<style>
		.header{
			width: 100%;
			height: 80px;
			background-color: #EF5B00;
			position: fixed;
			z-index: 999;
		}

		.header h3{
			color: #fff;
			float: left;
			font-size: 30px;
			margin-left: 40px;
			line-height: 80px;
			margin-top: 0;
			width: 430px;
		}
		.header a{
			font-size: 20px;
			float: right;
			margin-right: 50px;
			line-height: 80px;
			color: #fff;
		}
		.main{
			padding-top: 80px;
			
		}
		.mainLeft{
			float: left;
			height: 680px;
			color: rgb(255, 255, 255);
			background-color: rgb(0, 51, 102);
			width: 234px;
			padding-left: 37px;
			box-shadow: 10px 10px 5px #888888;
			left: -271px;
			position: absolute;
			z-index: 700;
		}
		#menuOn{
			width: 35px; 
			display: block; 
			position: absolute; 
			top: 91px; 
			left: 22px;
		}
		#menuClose{
			width: 30px; 
			margin-top: 10px; 
			margin-left: 160px;
		}
		.mainLeft p{
			font-size: 20px;
			margin-top: 40px;
			opacity: 0.6;
		}
		.mainRight{
			
		}
	</style>
  </head>
  
  <body>

    <div class="header">
		<h3>东莞市中医院病人信息管理系统</h3>
		<a href="登录.html">退出</a>
	</div><!--header结束-->
	<div class="main">
		<!--打开菜单按钮-->
		<input type="image" src="images/menu-icon.png" id="menuOn"/>
		<!--左侧导航菜单-->
		<div class="mainLeft">
				<input type="image" src="images/close_icon.png" id="menuClose">
				<p style="font-size: 40px;margin-top: 0;opacity: 1;">导航菜单</p>
				<p id="guaHao_click">门诊挂号及预约</p>
				<p id="shouFei_click">门急诊收费</p>
				<p id="zuiZong_click">病案追踪</p>
				<p id="tongJi_click">医疗统计</p>
				<p id="chuRuYuan_click">出入院管理</p>
		</div>
		<!--页面主体-->
		<div class="mainRight">
			
		</div><!--mainRight结束-->
	</div><!--main结束-->

	<script>
		$(document).ready(function(){
				//左侧菜单切换动画
			    $("#menuOn").click(function(){
			        $(".mainLeft").animate({left:'0px'});
			        $("#menuOn").css({display:"none"});
			    });
			    $("#menuClose").click(function(){
			    	$(".mainLeft").animate({left:'-271px'});
			    	$("#menuOn").css({display:"block"});
			    });
			    //左侧菜单功能切换
			    $("#guaHao_click").click(function(){
			    	$(".mainRight").empty();
			    	$(".mainRight").load('register.jsp');
			    })
			    $("#shouFei_click").click(function(){
			    	$(".mainRight").empty();
			    	$(".mainRight").load('门急诊收费.html');
			    })
			    $("#zuiZong_click").click(function(){
			    	$(".mainRight").empty();
			    	$(".mainRight").load('病案追踪.html');
			    })
			    $("#tongJi_click").click(function(){
			    	$(".mainRight").empty();
			    	$(".mainRight").load('医疗统计.html');
			    })
			    $("#chuRuYuan_click").click(function(){
			    	$(".mainRight").empty();
			    	$(".mainRight").load('出入院管理.html');
			    })
		});
	</script>
  </body>
</html>
