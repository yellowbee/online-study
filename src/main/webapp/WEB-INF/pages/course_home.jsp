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
		
		/* Event handlers to show and hide the dropdown menu */
		$("#avatar_head").on("mouseover", function () {
			$("#avatar_dropdown").css("visibility", "visible");
		});
		$("body").click(function () {
			$("#avatar_dropdown").css("visibility", "hidden");
		});
	});
  </script>
</head>
<body>
	<div id="wrapper">
	    <div id="mycontainer" class="container-fluid">
	    	<h:navbar/>
	    	<div class="row">
		    	<div class="col-lg-3">        
					<h:sidebar_menu sess="${sess}"/>
				</div>
				<div class="col-lg-4">
					<div class="panel panel-default" style="height: 200px">
    					<div class="panel-heading">课程提示</div>
    					<div class="panel-body">本课程九月一日开始， 12月30日结束。</div>
					</div>
					
					<div class="panel panel-default">
    					<div class="panel-heading">考试提示</div>
    					<div class="panel-body">还有二周期中考试， 请大家做好准备。</div>
					</div>		
				</div>
				
				<div class="col-lg-5">
					<div class="panel panel-default" style="height: 300px">
    					<div class="panel-heading">作业提示</div>
    					<div class="panel-body">作业2一周内到期， 请大家按时完成提交。</div>
					</div>
					
					<div class="panel panel-default">
    					<div class="panel-heading">其他提示</div>
    					<div class="panel-body">目前还没有其他提示。</div>
					</div>
				</div>
				
			</div>    	
		</div>
			
		<h:footer copyright="版权2013 爱杜公司"/>
	</div>
 
</body>
</html> 