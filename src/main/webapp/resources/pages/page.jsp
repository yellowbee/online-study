<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Example of Twitter Bootstrap 3 Tables with Alternate Background</title>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<style type="text/css">
    .bs-example{
    	margin: 20px;
    }
</style>
</head>
<body>
<h3>你好 ${lastname}, ${firstname}</h3>
<h3>你的用户名是 ${username}</h3>
<div class="bs-example">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>课程编号</th>
                <th>课程名称</th>
                <th>结课日期</th>
            </tr>
        </thead>
        <tbody>
	        <c:forEach items="${courses}" var="course">
	        <tr>
				<td>${course.courseId}</td>
				<td>${course.course.courseName}
				<td>${course.expireDate}
			</tr>
			</c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>                                		