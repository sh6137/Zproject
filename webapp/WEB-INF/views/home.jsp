<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인 페이지</title>
</head>
<body>
	<h1> 안녕하세요 메인페이지 홈</h1>
	<h3>${login.m_id }</h3>
	<h3>${login.m_pw}</h3>
	<a href = "/Res"> 예약페이지로 </a>
	 <a href="/logout">로그아웃</a>
</body>
</html>