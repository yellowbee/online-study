<%@ page isELIgnored="false" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
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
	<script type="text/javascript" src="resources/nicedit/nicEdit.js"></script>
	
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
		
		bkLib.onDomLoaded(function() { nicEditors.allTextAreas(); });
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
						<div style="color:#606060; margin-top:10px; margin-bottom:10px;font-size:12px;">发新帖前， 请先阅读发贴须知</div>
						<form:form name="new_post" action="new_post" method="post">
							<form:input type="hidden" path="session" value="${sess}"/>
							<form:input type="hidden" path="thread_seq" value="${thread_seq}"/>
							<form:textarea name="area1" path="content" cols="40"></form:textarea>
							<input type="submit" value="提交"/>
						</form:form>
					</div>
				</div>
				<div class="col-lg-2"></div>
			</div>    	
		</div>
			
		<h:footer copyright="版权2013 爱杜公司"/>
	</div>
</body>
</html>