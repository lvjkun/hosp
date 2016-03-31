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
    
    <title>My JSP 'patientSearch.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<script type="text/javascript"  >
		function showPatients()
		{
			var xmlHttp = new XMLHttpRequest();
			var name = document.getElementById("name").value;
			var url = "<c:url value='/patientsSearch.html'/>";
			xmlHttp.open("POST",url,true);
			xmlHttp.onreadystatechange=function(){
				if(xmlHttp.readyState == 4 && xmlHttp.status == 200){
					document.getElementById("result").innerHTML=xmlHttp.responseText;
				}	
			};
			xmlHttp.send(name);
		}
	</script>
  </head>
  
  <body>
  	<div style="width: 70%;margin-top: 40px;margin-left: auto;margin-right: auto;">
  		
		  <div class="form-group">
		    <label class="col-sm-2 control-label">病人名字：</label>
		    <div class="col-sm-8">
		      <input type="text" class="form-control" id="name" placeholder="请输入病人名字" >
		    </div>
		    <input id="patients_Search" type="button" class="col-sm-2 btn btn-success" value="搜索" onclick="showPatients()">
		  </div>
		  
		<label class="col-sm-2 control-label">搜索结果：</label>  
		<div id="result"></div>
	    
	</div>
 
  </body>
</html>
