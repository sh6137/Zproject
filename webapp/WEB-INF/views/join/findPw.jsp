<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>비밀번호를 바꿔 봅시다</h2>
	${findpw.m_pw }
	
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