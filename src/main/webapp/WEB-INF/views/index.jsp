<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>뛰어쓰기 주의</h1>
	<h1></h1>
	<div>
		<sec:authorize access="isAnonymous()">
			<a href="/login">로그인</a>
			<a href="/beforeSignUp">회원가입</a>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
			<a href="/logout">로그아웃</a>
			<sec:authentication property="principal" var="principal"/>
			<h2>${principal }</h2>
		</sec:authorize>
	<p>why?</p>
	</div>
	<div>
		<sec:authorize access="isAuthenticated()">
			<a href="/user/info">내 정보</a>
			<a href="/admin">관리자</a>
		</sec:authorize>
	</div>
	<p>why</p>
	<br>
	<div>
		<div>id</div>
		<div>title</div>
		<div>content</div>
		<div>writer</div>
	</div>
	<div>
		<c:forEach var="list" items="${list}">
			<div>${list.bId }</div>
			<div>${list.bTitle }</div>
			<div>${list.bContent }</div>
			<div>${list.bWriter }</div>
		</c:forEach>
	</div>
	
</body>
</html>