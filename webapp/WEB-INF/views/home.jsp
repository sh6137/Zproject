<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
=======
>>>>>>> parent of b5df0a0... 08/12
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<<<<<<< HEAD
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
   
>>>>>>> 은영
=======
<title>Insert title here</title>
<link rel="stylesheet" href="/css/common.css" />
</head>
<body>
	
   <h1>게시판(SpBoard)</h1>
   <p><a href="/SpBoard/List">Sp 게시판</a></p>
   <p><a href="/SpBoard/WriteForm">새글 쓰기</a></p>
   <p>
   <p><a href="/Menus/List">메뉴관리</a></p>
   <p>
   <p><a href="/PDS/List?menu_id=MENU01">자료실</a></p>
   
>>>>>>> parent of b5df0a0... 08/12
</body>
</html>