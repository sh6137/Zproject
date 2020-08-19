<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/room.css">
<title>객실정보</title>
</head>
<body>
	<%@ include file="../../include/nav.jsp" %>
	<!-- 방 번호들 wrap -->
	<div class="wrapRoomName">
		<!-- room number -->
		<c:forEach var="room" items="${ roomList }">
		<div class="roomName">
			<a class="roomName roomNameColor"href="/ROOM/List?r_id=${ room.r_id }">${ room.r_id }호</a>
		</div>
		</c:forEach>
	</div>
	
	<!-- bg -->
	<div class="bg">
		<img class="bg-img" src="/img/room_bg.jpg">
	</div>
	
	<div class="wrapContent">
	<!-- room images -->
	<div id="carouselExampleIndicators" class="carousel slide rImages"
		data-ride="carousel">
		<%-- <h3 class="picTitle">${ rDetail.get(0).r_id }호</h3> --%>
		<ol class="carousel-indicators">
			<li data-target="#carouselExampleIndicators" data-slide-to="0"
				class="active"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
		</ol>
		<!-- 객실 정보에 따라 이미지가 다름 -->
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img class="img-size" src="${ rDetail.get(0).f_name }"class="d-block w-100" width="100%" height="350px">
			</div>
			<div class="carousel-item">
				<img class="img-size" src="${ rDetail.get(1).f_name }" class="d-block w-100" width="100%" height="350px">
			</div>
			<div class="carousel-item">
				<img class="img-size" src="${ rDetail.get(2).f_name }" class="d-block w-100" width="100%" height="350px">
			</div>
		</div>
		<a class="carousel-control-prev" href="#carouselExampleIndicators"
			role="button" data-slide="prev"> <span
			class="carousel-control-prev-icon" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
			role="button" data-slide="next"> <span
			class="carousel-control-next-icon" aria-hidden="true"></span> <span
			class="sr-only">Next</span>
		</a>
	</div>

	<!-- room detail -->
	<div class="rDetail rTable">
		<table class="roomDescription">
			<tr>
				<td class="tableTitle">방번호</td>
				<td class="tableTitle">이름</td>
				<td class="tableTitle">형태</td>
				<td class="tableTitle">크기</td>
				<td class="tableTitle">최대인원</td>
			</tr>
			<tr>
				<c:forEach var="room" items="${roomList}">
				<c:if test="${rDetail.get(0).r_id eq room.r_id}">
					<td class="tableTitle">${room.r_id}</td>
					<td class="tableTitle">${room.r_name}</td>
					<td class="tableTitle">${room.r_style}</td>
					<td class="tableTitle">${room.r_size}</td>
					<td class="tableTitle">${room.max_cap}</td>
				</c:if>
				</c:forEach>
			</tr>
		</table>
	</div>
	
	<!-- Season price -->
	<div class="rTable">
		<table class="seasonPrice">
			<tr>
				<td colspan="2" class="tableTitle">비수기</td>
				<td colspan="2" class="tableTitle">준성수기</td>
				<td colspan="2" class="tableTitle">성수기</td>
			</tr>
			<tr>
				<td class="tableTitle">주중</td>
				<td class="tableTitle">주말</td>
				<td class="tableTitle">주중</td>
				<td class="tableTitle">주말</td>
				<td class="tableTitle">주중</td>
				<td class="tableTitle">주말</td>
			</tr>
			<tr>
				<c:forEach var="rPrice" items="${ room }">
					<td class="tableTitle">${ rPrice.r_price }원</td>
				</c:forEach>
			</tr>
		</table>
	</div>
	</div>
</body>
</html>