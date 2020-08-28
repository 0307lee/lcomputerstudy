<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row">
  		<div class="col-md-1">뛰어쓰기 주의div <small>CSSstyle</small></div>
  	</div>
  	<div class="row">
  		<div class="col-md-1"><h1>뛰어쓰기 주의div>head<small>CSSstyle</small></h1></div>
  	</div>
	<div class="well">
1 wek brek?
====================
1 SW_basic
			되돌아보기(JAVA AGAIN)
			화면: 	CSS bootstrap
			 
			메뉴 추가생성: 	기능1차-단순up down (ex. 내 공부 게시판 만들기(메모장 출력), 로봇데이터 , 크롤링 데이터)
						기능2차-통계화 (dif)

//////////////////

2 SW_programming
			주식
			크롤링
			코딩쉽게
			내 주사용만 사용하도록
			opencv연동
 
3 HW_?? SW??
====================
4 서버? 도메인 구축 시, sql데이터는 어디에 저장되니?</div>
	<p class="text-warning" >Lee HTML_from 200714 to 200828</p>
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
	<p>로그인하면 안보이는 정보가 보인다</p>
	</div>
	<div>
		<sec:authorize access="isAuthenticated()">
			<a href="/user/info">내 정보</a>
			<a href="/admin">관리자</a>
		</sec:authorize>
	</div>
	<p>로그인하면 안보이는 정보가 보인다</p>
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