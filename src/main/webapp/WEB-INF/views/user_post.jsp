<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>
  
<style>
	div {text-align: center;}
</style>
 
	<h1>Reading Post PAGE</h1>
	<hr>
	<h2>게시글 읽기</h2>
	<c:forEach var="list" items="${list}">
    	<div>
    		<div>
                <div align="center">글번호</div>
                <div>${list.bId}</div>
            </div>
            <div>
                <div align="center">조회수</div>
                <div>(미구현)조회수</div>
            </div>
            <div>
                <div align="center">작성자</div>
                <div>${list.bWriter}</div>
            </div>
            <div>
                <div align="center" >제목</div>
                <div>${list.bTitle}</div>
            </div>
            <div>
                <div align="center" >글 내용</div>
                <div>
	                <textarea rows="10" cols="50" name="bContent" placeholder="   내용 입력">
	                	${list.bContent}
	                </textarea>
                </div>
            </div>
            <div>
            </div>
		</div>

	    </c:forEach>
	
							
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>