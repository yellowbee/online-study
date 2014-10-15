<%-- <%@ page isELIgnored="false" %> --%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="h" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
<base href="<%=basePath%>" />
<meta charset="UTF-8">
<title>Example of Twitter Bootstrap 3 Tables with Alternate Background</title>

	<script src="resources/jquery-1.11.1.min.js"></script>
    <script src="resources/jquery-ui-1.11.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="resources/jquery-ui-1.11.1/jquery-ui.css">
    
    <script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css">

	<link rel="stylesheet" type="text/css" href="resources/css/mycss.css"/>
	<script src="resources/js/avatar_dropdown.js"></script>
</script>

</head>
<body>
	<div id="wrapper">	
    	<div id="mycontainer" class="container-fluid">
    		<h:navbar/>
    	    
			<div class="row">
				<div id="mytable" class="col-md-6">  			
					<div class="panel panel-default">
						<!-- Default panel contents -->
						<div class="panel-heading">课程</div>
						<div class="panel-body">
							<p>本学期注册课程</p>
						</div>
						<!-- Table -->
						<table class="table">
							<thead>
					            <tr>
					                <th>课程编号</th>
					                <th>课程名称</th>
					                <th>结课日期</th>
					            </tr>
				        	</thead>
					        <tbody>
						        <c:forEach items="${courses}" var="course">
							        <tr>
										<td><a href="mycourse?sess=${course.session}">${course.courseId}</a></td>
										<td>${course.course.courseName}
										<td>${course.expireDate}
									</tr>
								</c:forEach>
					        </tbody>
						</table>
					</div>
				</div>

				<div id="msgblock" class="col-md-6">
					<div id="sysmsg">
						<div class="panel panel-primary">
		        			<div class="panel-heading">
		            			<h3 class="panel-title">系统信息</h3>
		        			</div>
		        			<div class="panel-body">
		        				本系统今天下午5点至8点进行计划好的维护工作。8点以后系统使用恢复正常
		        			</div>
	    				</div>
					</div>
					<div id="unimsg">
						<div class="panel panel-success">
		        			<div class="panel-heading">
		            			<h3 class="panel-title">学校信息</h3>
		        			</div>
	       		 			<div class="panel-body">欢迎大家开始新的一学期</div>
	    				</div>
					</div>
				</div>      
    		</div>
		</div>

		<h:footer copyright="版权2013 爱杜公司"/>
	</div>
</body>
</html> 