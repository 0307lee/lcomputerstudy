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
	</c:forEach>
	<form action="/user/writingprocess" method="post">
	</form>
	
							
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>