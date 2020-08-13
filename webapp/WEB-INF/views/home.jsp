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
<<<<<<< HEAD
	<h1> 안녕하세요 메인페이지 홈</h1>
	<h3>${login.m_id }</h3>
	<h3>${login.m_pw}</h3>
	 <a href="/logout">로그아웃</a>
=======
	
   	<div><a href="/INFO/SerInfo?m_id=${login.m_id }">My Info:first page</a></div>
	<div><a href="/RES/ResInfo?m_id=${login.m_id }">My Reservation</a></div>
	<div><a href="/RES/ResListForm?m_id=${login.m_id }">이전예약</a></div>
	
	<div><a href="/PDS/home">공지사항</a></div>
   
>>>>>>> 은영
</body>
</html>