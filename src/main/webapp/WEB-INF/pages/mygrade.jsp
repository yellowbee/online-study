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
					<div id="sess-docs-containter" style="border:1px solid #ccc;border-radius:5px;">
						<div id="pageTitle" style="background:#DEDEDE; border-color:#DEDEDE; color:#000000;height:50px;"></div>						
						<div class="bs-example"  style="padding-left: 20px; padding-right: 20px;">
							<table class="table table-hover">
							    <thead>
						      		<tr>
							            <th style="color: #0680A1;">项目</th>
							            <th style="color: #0680A1;">备注</th>
							            <th style="color: #0680A1;">时间</th>
							            <th style="color: #0680A1;">分数</th>
						            </tr>
						        </thead>
						        <tbody>
						            <tr>
						                <td>作业1</td>
						                <td></td>
						                <td>10/10/2014</td>
						                <td>80</td>
						            </tr>
						            <tr>
						                <td>作业2</td>
						                <td></td>
						                <td>10/10/2014</td>
						                <td>80</td>
						            </tr>
						            <tr>
						                <td>作业3</td>
						                <td></td>
						                <td>10/10/2014</td>
						                <td>80</td>
						            </tr>
						        </tbody>
						    </table>
						</div>
					</div>
				</div>
			</div>    	
		</div>
			
		<h:footer copyright="版权2013 爱杜公司"/>
	</div>
 
</body>
</html>