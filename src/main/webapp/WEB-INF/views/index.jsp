<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" url="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h1>���Ƕ����� ��Ǥ̤����̷뤤�̤����</h1>
	<h1>�̰� �úФ�����Ӥ������� ���� ������</h1>
	<h2>sdf</h2>
	<div>
		<div>id</div>
		<div>title</div>
		<div>content</div>
		<div>writer</div>
	</div>
	<div>
		<c:forEach var="list"items="${list}">
			<div>${list.bId }</div>
			<div>${list.bTitle }</div>
			<div>${list.bContent }</div>
			<div>${list.bWriter }</div>
		</c:forEach>
	</div>
</body>
</html>