<%@ page isELIgnored="false" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="h" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!doctype html>
<html lang="en">
<head>
  <title>jQuery UI Menu - Default functionality</title>
  <link rel="stylesheet" type="text/css" href="resources/css/template.css"/>
  <script src="resources/jquery-1.11.1.min.js"></script>
    <script src="resources/jquery-ui-1.11.1/jquery-ui.js"></script>
    <link rel="stylesheet" href="resources/jquery-ui-1.11.1/jquery-ui.css">
    
    <script src="resources/bootstrap/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="resources/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="resources/bootstrap/css/bootstrap-theme.min.css">

  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#menu" ).menu();
  });
  </script>
</head>
<body>
 
	<h:navbar />
	<div id="wrapper">
	    <div id="mycontainer" class="container-fluid">            
			 <ul id="menu">
	  		<li><h4>课程大纲<h4></li>
	  		<li><h4>课程说明</h4></li>
	  		<li><h4><a href="forum">课程讨论区</a></h4></li>
	  		<li><h4>课件下载</h4></li>
	  		<li><h4>作业</h4></li>
	  		<li><h4>成绩查询</h4></li>
			</ul>    	
	    	</div>
		</div>
			
		<h:footer />
	</div>
 
</body>
</html>