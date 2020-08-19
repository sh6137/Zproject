<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>객실정보</title>
<style>
	body{
	margin: 0 auto;
	padding: 0;
	}
	.wrapRoomName {
		width: 100%;
		margin-bottom: 50px;
		display: flex;
		flex-direction: row;
		justify-content: space-around;
		background-color: #F2F2F2;
	}
	
	.roomName {
		width: 100px;
		height: 40px;
		text-align : center;
		line-height: 40px;
	}
	
	.roomName .roomNameColor{
		color: #848484;
		text-decoration: none;
	}
	
	.picTitle {
		text-align: center;
	}
	
	.rImages {
		margin: 0 auto;
		margin-bottom: 50px;
		width: 40%;
		height: 350px;
		/* border: 1px dashed black; */
	}	

	.rTable {
		margin: 0 auto;
		/* margin-bottom: 10px; */
		width: 80%;
		height: 140px;
		/* border: 1px dashed black; */
	}
	
	.roomDescription, .seasonPrice {
		border-collapse: collapse;
		border : 2px solid gray;
		width: 100%;
		text-align: center;
		font-size: 16px;
	}
	
	td.tableTitle{
		background-color : #F2F2F2;
	}
	
	tr, td{
		border : 1px solid #7C7C7D;
		width: 100px;
		height : 50px;
	}

</style>
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
				<img src="${ rDetail.get(0).f_name }"class="d-block w-100" width="100%" height="350px">
			</div>
			<div class="carousel-item">
				<img src="${ rDetail.get(1).f_name }" class="d-block w-100" width="100%" height="350px">
			</div>
			<div class="carousel-item">
				<img src="${ rDetail.get(2).f_name }" class="d-block w-100" width="100%" height="350px">
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
					<td>${room.r_id}</td>
					<td>${room.r_name}</td>
					<td>${room.r_style}</td>
					<td>${room.r_size}평</td>
					<td>${room.max_cap}</td>
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
					<td>${ rPrice.r_price }원</td>
				</c:forEach>
			</tr>
		</table>
	</div>
</body>
</html>