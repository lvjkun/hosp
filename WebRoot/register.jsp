<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'register.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	

  </head>

  <body>
    <div style="width: 70%;margin-top: 40px;margin-left: auto;margin-right: auto;">
    	<form class="form-horizontal" action="<c:url value="/registerController.html"/>" method="post">
		  <div class="form-group">
		    <label for="name" class="col-sm-2 control-label">姓名：</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="name" placeholder="请输入姓名">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="age" class="col-sm-2 control-label">年龄：</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="age" placeholder="请输入年龄">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="gender" class="col-sm-2 control-label">性别：</label>
		    <div class="col-sm-10">
		      <label>
			      <input type="radio" name="gender" id="optionsRadios1" 
			         value="男" checked>男
			  </label>
			  <label>
			      <input type="radio" name="gender" id="optionsRadios2" 
			         value="女">女
			   </label>
		    </div>
		   </div>
		  <div class="form-group">
		    <label for="address" class="col-sm-2 control-label">地址：</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control"  name="address" placeholder="请输入地址">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="dateOfBirth" class="col-sm-2 control-label">出生日期：</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="dateOfBirth" placeholder="请输入出生日期">
		    </div>
		  </div>
		  <div class="form-group">
		    <label for="" class="col-sm-2 control-label">身份证号：</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" name="idcardNo" placeholder="请输入身份证号">
		    </div>
		  </div>
		  <div class="form-group">
		      <label for="name" class="col-sm-2 control-label" >预约科室：</label>
		      <div class="col-sm-8">
			      <select id="departments_select" class="form-control">
						<option value='1'>呼吸科</option>
						<option value='2'>皮肤科</option>
						<option value='3'>眼科</option>
					</select>
			  </div>
			 
			  <label class="col-sm-2">
				  	<input id="doctor_search" type="button" value="查询医生" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
			  </label>	
		   </div>
		   <div class="form-group">
		   		<label class="col-sm-offset-2 col-sm-10">
		   			<input class="btn btn-success" type="submit" value="提交">
		   		</label>
		   </div>
		</form>
	
		<!-- 弹出框 -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">标题</h4>
		      </div>
		      <div id="modal_table" class="modal-body">
		        ...
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
		        <button type="button" class="btn btn-primary">提交</button>
		      </div>
		    </div>
		  </div>
		</div>
	</div>
	<script>
		var departments_select_val='';
		var doctors_temp='';
		$("#departments_select").click(function(){
			departments_select_val=$("#departments_select").val();
			if (departments_select_val==1)
			{
				doctors_temp='<table class="table table-hover table-bordered">';
				doctors_temp+='<tr><th>姓名</th><th>周一</th><th>周二</th><th>周三</th><th>周四</th><th>周五</th><th>周六</th><th>周日</th></tr>';
				doctors_temp+='<tr><td>莫崎君</td><td></td><td></td><td></td><td></td><td>上午</td><td></td><td></td></tr>';
				doctors_temp+='</table>';
			}
			else if (departments_select_val==2)
			{
				doctors_temp='<table class="table table-hover table-bordered">';
				doctors_temp+='<tr><th>姓名</th><th>周一</th><th>周二</th><th>周三</th><th>周四</th><th>周五</th><th>周六</th><th>周日</th></tr>';
				doctors_temp+='<tr><td>刘凤年</td><td>全天</td><td>全天</td><td>全天</td><td>全天</td><td>全天</td><td></td><td>全天</td></tr>';
				doctors_temp+='</table>';
			}
			else if (departments_select_val==3)
			{
				doctors_temp='<table class="table table-hover table-bordered">';
				doctors_temp+='<tr><th>姓名</th><th>周一</th><th>周二</th><th>周三</th><th>周四</th><th>周五</th><th>周六</th><th>周日</th></tr>';
				doctors_temp+='<tr><td>余日成</td><td></td><td></td><td>下午</td><td></td><td></td><td>上午</td><td></td></tr>';
				doctors_temp+='</table>';
			}
			$("#modal_table").html(doctors_temp);
		});
	</script>
	
  </body>
</html>
