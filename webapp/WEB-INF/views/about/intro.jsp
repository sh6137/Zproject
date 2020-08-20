<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/intro.css">
</style>
<title>인사말</title>
</head>
<body>
	<%@ include file="../../include/nav.jsp"%>
	<div class="aName">
	
		<!-- sub about -->
		<c:forEach var="about" items="${ menuList }">
			<c:if test="${about.com_id eq 'COM0016' || about.com_id eq 'COM0017'}">
				<div class="aDiv">
					<a class="aNameColor" href="/ABOUT/${ about.com_id }">${ about.com_val }</a>
				</div>
			</c:if>
		</c:forEach>
	</div>
	
	<!-- 인사말 -->
	<div class="bg-frame">
		<div class="bg-div">
			<img class="bg" src="/img/intro.jpg" />
		</div>
		<div class="cover"></div>
		<div class="content">
			<div class="content-title">푸른 바다와 맑은 하늘,</div>
			<div class="content-p">
				하늘과 바다가 한 눈에 들어오는 대자연을 품은 곳.<br>
                숭고한 포항의 절경과 완벽하리만큼 멋진 바다는<br>
                `푸른 바다와 맑은 하늘`의 장엄한 배경이 되어 줍니다.<br>
		        파노라마처럼 펼쳐지는 최고의 전망은<br>
				가장 아름다운 여행의 추억으로 기억될것 입니다.<br>
			</div>
		</div>
	</div>
</body>
</html>