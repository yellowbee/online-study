<%@ tag pageEncoding="UTF-8"%>
<%@ attribute name="sess"%>

<ul id="menu">
	<li><a href="mypage"><h4><b>我的主页</b></h4></a></li>
	<li><a href="mycourse?sess=${sess}"><h4><b>课程主页</b></h4></a></li>
	<li><a href="course_forum?sess=${sess}"><h4><b>课程讨论区</b></h4></a></li>
	<li><a href="session_material?sess=${sess}"><h4><b>课件下载</b></h4></a></li>
	<li><a href="hw_submission?sess=${sess}"><h4><b>作业提交</b></h4></a></li>
	<li><a href="grade?sess=${sess}"><h4><b>成绩查询</b></h4></a></li>
</ul>
