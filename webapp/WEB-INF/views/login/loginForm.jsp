<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인</h1>
	<form action="/loginProcess" method="POST">
		<div><input type="text" name="m_id" placeholder="아이디 입력"></div>
		<div><input type="password" name="m_pw" placeholder="암호"></div>
		<div><input type="submit" value="로그인"></div>
		
	</form>
		<a href="/JoinForm">회원가입</a>
		<a href="/FindIDForm">아이디 비밀번호 찾기</a>
</body>
</html>