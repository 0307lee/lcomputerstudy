<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
  
<style>
	table {text-align: center;}
</style>
 
	<h1>Update Post PAGE</h1>
	<hr>
	<h2>게시글 수정하기</h2>
	<c:forEach var="user" items="${list}">
    	<table width="600" border="1" bordercolor="yellow" bgcolor="orange">
	        <tr heignt="40">
                <td align="center">글번호</td>
                <td>${user.bId}</td>
            </tr>
            <tr>
                <td align="center">작성자</td>
                <td>${user.bWriter}</td>
            </tr>
            <tr>
                <td align="center" >제목</td>
                <td>
	                <textarea rows="2" cols="50" name="bTitle">
		            	${user.bTitle}
		            </textarea>
	            </td>
            </tr>
            <tr>
                <td align="center" >글 내용</td>
                <td>
	                <textarea rows="10" cols="50" name="bContent">
	                	${user.bContent}
	                </textarea>
                </td>
            </tr>
		</table>
		<div class="col-md-4" id="update">
			<a href="/user/post/update/process/${user.bId}">수정하기</a>
		</div>
		<div class="col-md-4" id="home">
			<a href="/">게시판으로</a>
		</div>
	</c:forEach>
			
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>