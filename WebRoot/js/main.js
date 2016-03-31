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
			    });
			    $("#shouFei_click").click(function(){
			    	$(".mainRight").empty();
			    	$(".mainRight").load('patientsSearch.jsp');
			    });
			    $("#zuiZong_click").click(function(){
			    	$(".mainRight").empty();
			    	$(".mainRight").load('病案追踪.html');
			    });
			    $("#tongJi_click").click(function(){
			    	$(".mainRight").empty();
			    	$(".mainRight").load('医疗统计.html');
			    });
			    $("#chuRuYuan_click").click(function(){
			    	$(".mainRight").empty();
			    	$(".mainRight").load('出入院管理.html');
			    });
			    
			    
			    
		});