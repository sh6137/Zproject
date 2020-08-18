<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/css/login.css"/>
<title>Insert title here</title>
</head>
<body>
	
	<form action="/ChangePw" method="POST">
	
	<input type="hidden" name="m_id" value="${findpw.m_id}">
	<input type="hidden" name="m_name" value="${findpw.m_name}">
	<input type="hidden" name="tel" value="${findpw.tel}">
	<input type="hidden" name="email" value="${findpw.email}">
	
	<p>현재 비밀번호</p>
	<br>
	<input type="password" value="${findpw.m_pw }">
	<br>
	<p>새 비밀번호 지정</p>
	<input type="text" name="m_pw" />
	
	<input type="submit" value="비밀번호 변경" />
	
	</form>
</body>
</html>