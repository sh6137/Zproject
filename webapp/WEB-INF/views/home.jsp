<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
		<div class="blurBox"></div>
		<div class="bg-frame_content">
			<div class="bg-title">
				<p
					style="font-size: 3em; color: white; text-align: left; font-weight: bold; text-shadow: 0px 6px 5px black;">
					푸른 바다와 맑은 하늘,</p>
			</div>
			<div class="bg-contnet">
				<p
					style="font-size: 1.5em; color: white; text-align: left; font-weight: bold; text-shadow: 0px 6px 5px black;">
					싱그러운 바닷바람 가득한 `푸른 바다와 맑은 하늘`을 찾아주셔서 감사합니다.</p>
			</div>
		</div>
	</div>
	<footer>
		<div class="foot" style="color: white; text-align:center;">
			<p>©자바웹개발과정 프로젝트 1조 : 이영효, 손문배, 손형호, 최은영, 최상훈</p>
		</div>
	</footer>
</body>
</html>