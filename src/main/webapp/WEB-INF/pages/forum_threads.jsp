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
			
			$("#newthread_submit").click(function () {
				var title_text = $("#title_for_post").val();
				var content_text = $("#myInstance1").html();
				if (title_text.length == 0 || content_text.length == 0) {
					alert("标题栏和回帖栏不能为空");				
				}
				else {
					alert("title: " + title_text + " ; " + "content: " + content_text + " ; " + $(this).attr("name"));
				}
			});
		});
	</script>
</head>
<body>
 
	<h:navbar />
	<div id="wrapper">
	    <div id="mycontainer" class="container-fluid">
	    	<div class="row">
		    	<div class="col-lg-3">        
					<ul id="menu">
				  		<li><h4><b>课程大纲</b><h4></li>
				  		<li><h4><b>课程说明</b></h4></li>
				  		<li><a href="course_forum?sess=${sess}"><h4><b>课程讨论区</b></h4></a></li>
				  		<li><h4><b>课件下载</b></h4></li>
				  		<li><h4><b>作业</b></h4></li>
				  		<li><h4><b>成绩查询</b></h4></li>
					</ul>
				</div>
				<div class="col-lg-9">
					<!--  list all threads -->
					<table id="threadtable">
						<c:forEach items="${threads}" var="aThread">
					        <tr class="thread">
								<th class="title"> <h5><b><span class="circle">&nbsp;?&nbsp;</span><a href="forum_posts?thread_seq=${aThread['thread_seq']}">${aThread['title']}</a></b> <br/> <h6>&nbsp;&nbsp;发贴人:${aThread['username']}</h6> </h5> </th>
								<th><h5>赞</h5></th>
								<th><h5>回贴次数</h5></th>
								<th><h5>浏览次数</h5></th>		
							</tr>
						</c:forEach>
					</table>
					<!-- editor for creating new threads -->
					<div id="post_edit">
						<div class="post_title">&nbsp;&nbsp;发新贴</div>
						<div style="color:#606060; margin-top:10px; margin-bottom:10px;font-size:12px">发新帖前， 请先阅读发贴须知</div>
						<input type="text" id="title_for_post" placeholder="给新帖一个标题" />
						<div id="myInstance1" style="font-size: 16px; padding: 3px; border: 5px solid #808080; width: 50%;"></div>
						<button type="button" id="newthread_submit" name="${sess}" class="sumbit">提交</button>
					</div>
				</div>
			</div>    	
		</div>

		<h:footer />
	</div>
	<script type="text/javascript" src="resources/nicedit/nicEdit.js"></script>
	<script type="text/javascript">
		bkLib.onDomLoaded(function() {
	        var myNicEditor = new nicEditor();
	        myNicEditor.addInstance('myInstance1');
		});
	</script>
</body>
</html>