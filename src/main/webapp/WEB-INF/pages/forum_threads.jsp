<%@ page isELIgnored="false" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="h" %>
<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page pageEncoding="UTF-8" %>
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
		
		function validateForm() {
    		var title = $("#title_new_thread").val();
			var content = $("#content_new_thread").val();
   		 	if (title.length == 0 || content.length == 0) {
        			alert("标题栏和新帖内容栏不能为空");
        		return false;
    		}
    		return true;
		}
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
					<!--  list all threads -->
					<table id="threadtable">
						<c:forEach items="${threads}" var="aThread">
					        <tr class="thread">
								<th class="title">
									<h5>
										<b>
											<span class="circle">&nbsp;?&nbsp;</span>
											<a href="forum_posts?thread_seq=${aThread['thread_seq']}&sess=${sess}">${aThread['title']}</a>
										</b>
										<br/>
										<h6>&nbsp;&nbsp;发贴人:${aThread['username']}</h6>
									</h5>
								</th>
								<th><h5>赞</h5></th>
								<th><h5>回贴次数</h5></th>
								<th><h5>浏览次数</h5></th>		
							</tr>
						</c:forEach>
					</table>
					<!-- editor for creating new threads -->
					<div id="thread_edit">
						<div class="thread_title">&nbsp;&nbsp;发新贴</div>
						<div style="color:#606060; margin-top:10px; margin-bottom:10px;font-size:12px">发新帖前， 请先阅读发贴须知</div>
						<div style="margin-bottom: 25px;">
							<form:form name="new_thread" action="new_thread" method="post">
								<form:input type="hidden" path="session" value="${sess}"/>
								<form:input type="text" id="title_new_thread" path="title" placeholder="给新帖一个标题" />
								<form:textarea path="content" id="content_new_thread" style="width: 100%"/>						
								<input type="submit" value="提交"/>
							</form:form>
						</div>				
					</div>
				</div>		    	
			</div>
		</div>
		<h:footer copyright="版权2013 爱杜公司"/>
	</div>
	<script type="text/javascript" src="resources/nicedit/nicEdit.js"></script>
	<script type="text/javascript">
		bkLib.onDomLoaded(function() {
	        var myNicEditor = new nicEditor();
	        myNicEditor.addInstance('content_new_thread');
		});
	</script>
</body>
</html>