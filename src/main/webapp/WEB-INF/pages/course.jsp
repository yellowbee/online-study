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
	<h:resources />
	
	<script>
	$(function () {
		$( "#menu" ).menu();
		
		/* Start Event handlers to show and hide the dropdown menu */
		$("#avatar_head").on("mouseover", function () {
			$("#avatar_dropdown").css("visibility", "visible");
		});
		$("body").click(function () {
			$("#avatar_dropdown").css("visibility", "hidden");
		});
		/* End */
	});
	</script>
</head>
<body>
	<div id="wrapper">
	    <div id="mycontainer" class="container-fluid">
	    	<h:navbar />
	    	<div class="row">
		    	<div class="col-lg-3">        
					<h:sidebar_menu sess="${sess}"/>
				</div>
				<div class="col-lg-9">
				</div>
			</div>    	
		</div>
			
		<h:footer copyright="版权2013 爱杜公司"/>
	</div>
 
</body>
</html>