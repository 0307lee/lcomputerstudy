<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>

<style>
	div {text-align: center;}
</style>
   
    <h1>Writing PAGE</h1>
	<hr>

	    <h2>게시글 쓰기</h2>
	 
	    <form action="/user/writingprocess" method="post">
	        <div>
	            <div>
	                <div align="center">작성자</div>
	                <div ><input type="text" name="bWriter" size="60"></div>
	            </div>
	            <div >
	                <div align="center" >제목</div>
	                <div ><input type="text" name="bTitle"size="60"></div>
	            </div>
	            <div >
	                <div align="center" >글 내용</div>
	                <div >
	                <textarea rows="10" cols="50" name="bContent" placeholder="   내용 입력"></textarea>
	                </div>
	            </div>
	            <div >
	                <div align="center" >
	                <input type="reset" value="다시 입력"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
	                <input type="submit" value="글쓰기">&nbsp;&nbsp;
	                </div>
	            </div>
	        </div>
	    </form>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>