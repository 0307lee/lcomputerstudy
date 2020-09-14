<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
  
<style>
	table {text-align: center;}
</style>
 
	<h1>Reading Post PAGE</h1>
	<hr>
	<h2>게시글 읽기</h2>
	<c:forEach var="user" items="${list}">
    	<table width="600" border="1" bordercolor="gray" bgcolor="grey">
	        <tr heignt="40">
                <td align="center">글번호</td>
                <td>${user.bId}</td>
            </tr>
            <tr>
                <td align="center">조회수</td>
                <td>(미구현)조회수</td>
            </tr>
            <tr>
                <td align="center">작성자</td>
                <td>${user.bWriter}</td>
            </tr>
            <tr>
                <td align="center" >제목</td>
                <td>${user.bTitle}</td>
            </tr>
            <tr>
                <td align="center" >글 내용</td>
                <td>
	                <textarea rows="10" cols="50" name="bContent" placeholder="   내용 입력">
	                	${user.bContent}
	                </textarea>
                </td>
            </tr>
		</table>
		<sec:authentication var="secUser" property="principal" />
			"${secUser.username}" 가 여기를 들어왔고
			"${user.uId}" 가 이 글을 썻고
			<br>
       	<c:if test="${secUser.username eq user.uId}">
       		<div class="col-md-4" id="update">
				<a href="/user/post/update/${user.bId}">(권한 제한 필요)수정하기</a>
			</div>
       	</c:if>
		
		<div class="col-md-4" id="home">
			<a href="/">게시판으로</a>
		</div>
		<div class="col-md-4" id="delete">
			<a href="/user/post/Delete/${user.bId}">(권한 제한 필요)삭제하기</a>
		</div>
	</c:forEach>
			
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>