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
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
	    <div class="row Well">
	        <div class="page info col-md-9">
	        <br>
	        Q0 에러나는거 우야나. >git ignore 삭제
	        Q2 연봉차트 넣기(view만)(https://www.sw.or.kr/site/sw/ex/board/View.do?cbIdx=304&bcIdx=44509&searchExt1=)
	        Q3 google keep 바로가기
	        Q4 블로그만들기(+ad?)https://homzzang.com/
	        <br>
	        	<h4>TO DO LIST</h4>
				1 SW_basic<br>&nbsp;
							CRUD <br>&nbsp;
							기획 <br>&nbsp;
							설계 <br>&nbsp;
							개발 <br>&nbsp;
							 <br>
							메뉴 추가생성: <br>	&nbsp;
									기능1차-단순up down (ex. 내 공부 게시판 만들기(메모장 출력), 로봇데이터 , 크롤링 데이터)<br>&nbsp;
									기능2차-통계화 (dif)<br>&nbsp;&nbsp;
									 <br>
				2 HW?? SW??<br>&nbsp;
					간단한것부터하자. 내 앞에 놓인것 일단 쳐내고. 카테고리도 분류하고<br>&nbsp;
					<br>&nbsp;
				====================<br>
				<br>
			</div>
	        <div class="Login col-md-3">
	        	<sec:authorize access="isAnonymous()">
					<a href="/login">로그인</a>
					<a href="/beforeSignUp">회원가입</a><br>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<sec:authentication property="principal" var="principal"/>
						<div class="box auto">
							<p>${principal}</p>
						</div>
					<a href="/user/info">내 정보</a><br><br>
					<a href="/admin">관리자</a><br><br>
					<a href="/logout">로그아웃</a><br><br>
				</sec:authorize>
	        </div>
	    </div>
	    <div class="row Main_HOME">
	        <div class="CATEGORY col-md-2">(해야할것)카테고리 트리<br>
		        <div class="btn-group-vertical" role="group" aria-label="...">
					<button type="button" class="btn btn-default">(미구현)주식</button>
					<button type="button" class="btn btn-default">(미구현)크롤링</button>
					<div class="btn-group" role="group">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
							(미구현)코딩
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="/user/chart">연봉체계</a></li>
							<li><a href="#">순수코딩</a></li>
						</ul>
					</div>
					<button type="button" class="btn btn-default">(미구현)내가 애용하는</button> 유튭 화성 spaceX 차고
					<button type="button" class="btn btn-default">(미구현)opencv</button>
					<div class="btn-group" role="group">
						<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
							(하지마)수익형블로그
							<span class="caret"></span>
						</button>
						<ul class="dropdown-menu" role="menu">
							<li><a href="#">그누보드</a></li>
							<li><a href="#">https://homzzang.com/</a></li>
						</ul>
					</div>
				</div>
			</div>
	        <div class="BOARD col-md-8">			        	
				<div id="list">
				      <b>게시판 (전체 글: (미구현)전체게시글수) 글쓰기</b>&nbsp;
				</div>
				<p></p>
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
						<c:forEach var="list" items="${list}">
							<tr>
					  			<td>${list.bId}</td>
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
								<td>${list.bWriter}</td>
								<td>${list.bDateTime}</td>
								<td>(미구현)조회수</td>
							<tr>
						</c:forEach>
					</tbody>
				</table>
	        </div>
	        <div class="AD col-md-2">
	        	<div class="well">Ad_1
					<img src="https://www.w3schools.com/html/pic_trulli.jpg" alt="Trulli" width="100" height="33">
				</div>
				<div class="well">Ad_2
					<img src="https://www.w3schools.com/html/img_girl.jpg" alt="girl" width="100" height="33">
				</div>
	        </div>
	    </div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>