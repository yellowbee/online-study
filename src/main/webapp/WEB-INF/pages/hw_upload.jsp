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

  <link rel="stylesheet" href="resources/demos/style.css">
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
					<ul id="menu">
				  		<li><h4><b>课程大纲</b><h4></li>
				  		<li><h4><b>课程说明</b></h4></li>
				  		<li><a href="course_forum"><h4><b>课程讨论区</b></h4></a></li>
				  		<li><h4><b>课件下载</b></h4></li>
				  		<li><h4><b>作业提交</b></h4></li>
				  		<li><h4><b>成绩查询</b></h4></li>
					</ul>
				</div>
				<div class="col-lg-9">
					<div id="sess-docs-containter" style="border:1px solid #ccc;border-radius:5px;">
						<div id="pageTitle" style="background:#DEDEDE; border-color:#DEDEDE; color:#000000;height:50px;">						
						</div>
						<div>
							<ul id="content-section-container">
								<li id="" style="border-top: 1px solid #ccc;">
									<div style="padding: 10px;padding-left: 20px;">
										<img src="resources/images/document_on.gif" />
										<span style="color:#000000;">作业1</span>
										<div class="container-fluid">
										<div class="row">
										<div class="col-md-2"><span style="font-size: 12px;padding-left: 40px;">已提交的作业文档 :</span></div>
										<div class="col-md-10">
										<div style="margin: 0;">
											<ul>
												<li>
													<span><img src="resources/images/cal_year_event.gif" alt=""></span>
													<a href="downloadable?filename=form.pdf">form.pdf</a>
													<a href="" style="padding-left: 10px; font-size: 12px;">删除</a>
													<a href="" style="padding-left: 20px; font-size: 12px;">提交更多</a>						
												</li>
												<li>
													<span><img src="resources/images/cal_year_event.gif" alt=""></span>
													<a href="downloadable?filename=form.pdf">form.pdf</a>
													<a href="" style="padding-left: 10px; font-size: 12px;">删除</a>								
												</li>
												<li>
													<span><img src="resources/images/cal_year_event.gif" alt=""></span>
													<a href="downloadable?filename=form.pdf">form.pdf</a>
													<a href="" style="padding-left: 10px; font-size: 12px;">删除</a>								
												</li>
											</ul>								
										</div>
										</div>
										</div>
										</div>

									</div>					
								</li>
								
								<li id="" style="border-top: 1px solid #ccc;">
									<div style="padding: 10px;padding-left: 20px;">
										<img src="resources/images/document_on.gif" />
										<span style="color:#000000;">作业2</span>
										<div class="container-fluid">
										<div class="row">
										<div class="col-md-2"><span style="font-size: 12px;padding-left: 40px;">已提交的作业文档 :</span></div>
										<div class="col-md-10">
										<div style="margin: 0;">
											<ul>
												<li>
													<span><img src="resources/images/cal_year_event.gif" alt=""></span>
													<a href="downloadable?filename=form.pdf">form.pdf</a>
													<a href="" style="padding-left: 10px; font-size: 12px;">删除</a>
													<a href="" style="padding-left: 20px; font-size: 12px;">提交更多</a>						
												</li>
												<li>
													<span><img src="resources/images/cal_year_event.gif" alt=""></span>
													<a href="downloadable?filename=form.pdf">form.pdf</a>
													<a href="" style="padding-left: 10px; font-size: 12px;">删除</a>								
												</li>
												<li>
													<span><img src="resources/images/cal_year_event.gif" alt=""></span>
													<a href="downloadable?filename=form.pdf">form.pdf</a>
													<a href="" style="padding-left: 10px; font-size: 12px;">删除</a>								
												</li>
											</ul>								
										</div>
										</div>
										</div>
										</div>

									</div>						
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>    	
		</div>
			
		<h:footer />
	</div>
 
</body>
</html>