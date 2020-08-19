<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	.aName{
		width: 100%;
		margin-bottom: 50px;
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
	
</body>
</html>