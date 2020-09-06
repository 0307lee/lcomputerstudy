<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- 
	//Err often came from (1)lib(@build.gradle) (2)ref.(@index.jsp)
	//soln1. (clean&build) (disconnect&connect) again again...
	//	cf. maven's way << put <dependancy> but, I use gradle
	//	different Auto build system (maven, gradle)
	//soln2. No korean? (bcz of, UTF etc..)	
 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<%@include file="/WEB-INF/include/board_css.jsp"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<div class="container">
    <div class="row Title">
        <div class="TITLE col-xs-12">제목</div>
        <p class="text-warning" >Lee HTML_from 200714 to 200828</p>
    </div>
    <div class="row Well">
        <div class="page info col-md-9">
		1 SW_basic<br>
					되돌아보기(JAVA AGAIN)<br>
					화면: 	CSS bootstrap<br>
					 <br>
					메뉴 추가생성: 	기능1차-단순up down (ex. 내 공부 게시판 만들기(메모장 출력), 로봇데이터 , 크롤링 데이터)<br>
								기능2차-통계화 (dif)<br>
		2 SW_programming<br>
					주식<br>
					크롤링<br>
					코딩쉽게<br>
					내 주사용만 사용하도록<br>
					opencv연동<br>
		 
		3 HW_?? SW??<br>
		====================<br>
		4 서버? 도메인 구축 시, sql데이터는 어디에 저장되니?<br></div>
        <div class="Login col-md-3">
        	<sec:authorize access="isAnonymous()">
				<a href="/login">로그인</a>
				<a href="/beforeSignUp">회원가입</a>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<a href="/logout">로그아웃</a>
				<sec:authentication property="principal" var="principal"/>
				<h2>${principal }</h2>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
				<a href="/user/info">내 정보</a>
				<a href="/admin">관리자</a>
			</sec:authorize>
        </div>
    </div>
    <div class="row">
        <div class="CATEGORY col-md-2">카테고리 트리</div>
        <div class="BOARD col-md-8"></div>
        <div class="AD col-md-2"></div>
    </div>
    <div class="row ENDING">
        <div class="logo col-md-1"></div>
        <div class="site info col-md-9"></div>
        <div class="site map col-md-2"></div>
    </div>
</div>

<div class="well">
====================
</div>
<div id="list">
      <b>게시판 (전체 글: (미구현)전체게시글수)</b>
    </div>

<table class="table table-striped table-bordered table-hover">
	<thead>
		<tr>
			<th width="10%">no</th>
			<th width="50%">Title</th>
			<th width="10%">Writer</th>
			<th width="20%">Date</th>
			<th width="10%">View</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach var="article" items="${articles}" varStatus="status">
			<tr>
	  			<td>(미구현)번호</td>
	  			<td id="title">
	  				&nbsp;&nbsp;
					<!--
		        	<c:if test="${article.depth > 0}">
		           	&nbsp;&nbsp;
					</c:if>
					<a href="/bbs/content.bbs?articleNumber=${article.articleNumber}&pageNum=${pageNum}">${article.title}</a>
					<c:if test="${article.hit >= 20}">
					<span class="hit">hit!</span>
					</c:if>-->
				${list.bTitle}</td>
				<td>${list.bId}</td>
				<td>(미구현)게시일자</td>
				<td>(미구현)조회수</td>
			<tr>
		</c:forEach>
	</tbody>
</table>
	
</body>
</html>