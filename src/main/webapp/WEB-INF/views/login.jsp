<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body>
	<h1>로그인_bootstrap</h1>
		<form action ="/loginPro" method= "post">
			<input type ="hidden" name ="${_csrf.parameterName}" value="${_csrf.token}">
			<input type ="text" name="username" placeholder="id 입력해주세요">
			<input type ="password" name="password" placeholder="password 입력해주세요">
			<input id ="remember_me" name="remember-me" type="checkbox"/>Remeber me
			<button type="submit">로그인</button>
		</form>
</body>
</html>