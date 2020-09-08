<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<!-- CSS는 static에다가-->
<link rel="stylesheet" href="/css/board.css">
<!-- Jquerry 1.x 부트스트랩 자바스크립트사용하기위해서-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<!-- 합쳐지고 최소화된 최신 자바스크립트 드랍사용하기위해서-->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="row Title">
        <div class="TITLE col-xs-12">
        	<nav class="navbar navbar-default">
				<div class="container-fluid">
					<div class="navbar-header">
						<a class="navbar-brand" href="/">
							<span class="glyphicon glyphicon-home" aria-hidden="true"></span>
						</a>
					</div>
				</div>
				<p class="text-warning" >Lee HTML_from 200714 to 200907</p>
			</nav>
        </div>
    </div>
	<h1>회원가입</h1>
	<form action="/signup"method="post">
	<!-- csrf -->
		<input type ="hidden" name = "${_csrf.parameterName}" value="${_csrf.token}">
		<input type ="text" name="username" placeholder="id 입력">
		<input type ="text" name="uName" placeholder="name 입력">
		<input type ="password" name="password" placeholder="password 입력">
		<button type="submit">가입하기</button>
	</form>
</body>
</html>