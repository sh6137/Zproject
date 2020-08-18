<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<title>메인 페이지</title>
<link rel="stylesheet" href="/css/home.css" />
</head>
<body>
	<%@ include file="../include/nav.jsp"%>
	<div class="bg-frame">
		<div class="bg-frame_img">
			<img class="bg_img" src="/img/back.jpg">
		</div>
		<div class="bg-frame_content">
			<div class="bg-title">
				<p
					style="font-size: 3em; color: white; text-align: left; font-weight: bold; text-shadow: 0px 6px 5px black;">
					푸른 바다와 맑은 하늘,</p>
			</div>
			<div class="bg-contnet">
				<p
					style="font-size: 1.5em; color: white; text-align: left; font-weight: bold; text-shadow: 0px 6px 5px black;">
					싱그러운 바닷바람 가득한 오션뷰 맛집 더 Z 풀빌라를 찾아주셔서 감사합니다.</p>
			</div>
		</div>
	</div>
	<footer>
		<div class="foot" style="color: white; text-align:center;">
			<p>©자바웹개발과정 프로젝트 2조 : 이영효, 손문배, 손형호, 최은영, 최상훈</p>
		</div>
	</footer>



	<%-- 
	
   	<div><a href="/INFO/SerInfo?m_id=${login.m_id }">My Info:first page</a></div>
	<div><a href="/RES/ResInfo?m_id=${login.m_id }">My Reservation</a></div>
	<div><a href="/RES/ResListForm?m_id=${login.m_id }">이전예약</a></div>
	
	<div><a href="/PDS/home">공지사항</a></div>
   
>>>>>>> 은영
--%>
</body>
</html>