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
						<div id="pageTitle" style="background:#DEDEDE; border-color:#DEDEDE; color:#000000;height:50px;">						
						</div>
						<div>
							<ul id="content-section-container">
								<li id="" style="border-top: 1px solid #ccc;">
									<div style="padding: 10px;padding-left: 20px;">
										<img src="resources/images/document_on.gif" />
										<span style="color:#000000;">课堂讲义</span>
										<div>
											<ul>
												<li style="padding-left: 110px;margin:0;">
													<span><img src="resources/images/cal_year_event.gif" alt=""></span>
													<a href="downloadable?filename=form.pdf">form.pdf</a>								
												</li>
												<li style="padding-left: 110px;margin:0;">
													<span><img src="resources/images/cal_year_event.gif" alt=""></span>
													<a href="downloadable?filename=form.pdf">form.pdf</a>								
												</li>
												<li style="padding-left: 110px;margin:0;">
													<span><img src="resources/images/cal_year_event.gif" alt=""></span>
													<a href="downloadable?filename=form.pdf">form.pdf</a>								
												</li>
											</ul>								
										</div>
									</div>					
								</li>
								
								<li id="" style="border-top: 1px solid #ccc;">
									<div style="padding: 10px;padding-left: 20px;">
										<img src="resources/images/document_on.gif" />
										<span style="color:#000000;">作业解答</span>
										<div>
											<ul>
												<li style="padding-left: 110px;margin:0;">
													<span><img src="resources/images/cal_year_event.gif" alt=""></span>
													<a href="downloadable?filename=sample.txt">sample.txt</a>								
												</li>
												<li style="padding-left: 110px;margin:0;">
													<span><img src="resources/images/cal_year_event.gif" alt=""></span>
													<a href="downloadable?filename=sample.txt">sample.txt</a>								
												</li>
												<li style="padding-left: 110px;margin:0;">
													<span><img src="resources/images/cal_year_event.gif" alt=""></span>
													<a href="downloadable?filename=sample.txt">sample.txt</a>							
												</li>
											</ul>								
										</div>
									</div>					
								</li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>    	
		</div>
			
		<h:footer copyright="版权2013 爱杜公司"/>
	</div>
 
</body>
</html>