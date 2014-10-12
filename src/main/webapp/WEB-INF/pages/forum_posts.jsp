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
	    	<div class="row">
		    	<div class="col-lg-3">        
					<h:sidebar_menu sess="${sess}"/>
				</div>
				<div class="col-lg-7">
					<div id="postdiv">
						<div>
							<div class="post_title">&nbsp;&nbsp;${thread['username']}</div>
							<h4>${thread['text']}</h4>
						</div>
						<c:forEach items="${posts}" var="aPost">
							<div class="post_title">&nbsp;&nbsp;${aPost['username']}</div>
							<p>${aPost['text']}<br/><br/></p>	
						</c:forEach>
					</div>
					<div id="post_edit">
						<div class="post_title">&nbsp;&nbsp;回贴</div>
						<div style="color:#606060; margin-top:10px; margin-bottom:10px;font-size:12px">发新帖前， 请先阅读发贴须知</div>
						<textarea name="area1" cols="40"></textarea>
						<button type="button" class="sumbit">提交</button>
					</div>
				</div>
				<div class="col-lg-2"></div>
			</div>    	
		</div>
			
		<h:footer copyright="版权2013 爱杜公司"/>
	</div>
	<script type="text/javascript" src="resources/nicedit/nicEdit.js"></script>
	<script type="text/javascript">bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });</script>
</body>
</html>