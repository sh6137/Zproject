<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/fac.css">
<title>부대시설</title>
<style>
	.aName{
		width: 100%;
		display: flex;
		flex-direction: row;
		justify-content: space-around;
		background-color: #F2F2F2;
	}
	
	.aDiv {
		width: 100px;
		height: 40px;
		text-align : center;
		line-height: 40px;
	}
	
	.aNameColor {
		color: #848484;
		text-decoration: none;
	}
</style>
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
	
	<!-- 부대시설 -->
	<!-- 인사말 -->
	<div class="bg-frame">
		<div class="bg-div">
			<img class="bg" src="/img/fac_1.jpeg" style="width: 100%;"/>
		</div>
		<div class="cover"></div>
		<div class="content">
			<div class="content-title">야외 바베큐,</div>
			<div class="content-p">
				숯향 가득한 바베큐 파티를 즐겨보세요.<br>
				아득아득하게 떨어지는 해와 노을지는 바다 풍경과 함께 하루의 마무리로.<br>
		        객실 마다 즐길 수 있는 바베큐장이 마련되어 있습니다.<br>
			</div>
		</div>
		<div class="content_img">
			<img class="bbq" src="/img/fac_bbq_1.jpeg" style="width: 100%; height: 100%;" />
		</div>
	</div>
</body>
</html>