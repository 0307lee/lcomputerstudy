<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hi user</title>
</head>
<body>
	<h1>My PAGE</h1>
	<hr>
	<div>
		<sec:authorize access="isAuthenticated()">
			<sec:authentication property="principal" var="principal"/>
			<h2>${principal }</h2>
		</sec:authorize>
		<a href="/">도라가기</a>
	</div>
	
</body>
</html>