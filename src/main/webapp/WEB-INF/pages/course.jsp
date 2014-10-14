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
				<div class="col-lg-9">
				</div>
			</div>    	
		</div>
			
		<h:footer copyright="版权2013 爱杜公司"/>
	</div>
 
</body>
</html>