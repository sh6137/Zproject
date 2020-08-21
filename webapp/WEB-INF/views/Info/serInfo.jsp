<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MY INFO</title>
<link rel="stylesheet" href="/css/mypage.css"/>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
	.dropdown:hover .dropdown-menu {
		display: block;
	    margin-top: 0;
	}
</style>
</head>
<body>
	<%@ include file="../../include/nav.jsp"%>
	<div class="wrapMypage">
		<c:forEach var="main" items="${ menuList }">
			<c:if test="${main.com_id eq 'COM0015'}">
				<c:forEach var="sub" items="${ menuList }">
					<c:if test="${main.com_id eq sub.parent_id}">
						<c:if test="${sub.com_id eq 'COM0026'}">
							<div class="divSub">
								<a class="subMypage" href="/INFO/SerInfo?m_id=${ login.m_id }">${ sub.com_val }</a>
							</div>
						</c:if>
						<c:if test="${sub.com_id eq 'COM0027'}">
							<div class="divSub">
								<a class="subMypage" href="/RES/ResInfo?m_id=${ login.m_id }">${ sub.com_val }</a>
							</div>
						</c:if>
						<c:if test="${sub.com_id eq 'COM0028'}">
							<div class="divSub">
								<a class="subMypage"
									href="/RES/ResListForm?m_id=${ login.m_id }">${ sub.com_val }</a>
							</div>
						</c:if>
					</c:if>
				</c:forEach>
			</c:if>
		</c:forEach>
	</div>
	
	<div class="bg-frame">
		<img class="bg" src="/img/my_bg.jpg">
	</div>

	<div class="tableWrap">
		<form action="/INFO/ConInfo" method="POST">
			<p class="f-color">정보 수정을 위한 비밀번호를 확인합니다.</p>
			<table class="table table-hover">
				<tr>
					<th class="f-color">이름</th>
					<td><input type="text" name="m_name" style="color: white;"
						value="${ infoVO.m_name }" readonly="readonly"
						class="form-control-plaintext f-color" /></td>
				</tr>
				<tr>
					<th class="f-color">비밀번호</th>
					<td><input type="password" name="m_pw" style="color: white; text-shadow: 1px 1px 2px black, 0 0 25px lightgray, 0 0 5px darkblue;"
						placeholder="비밀번호를 입력해주세요" required="required"
						class="form-control-plaintext" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="본인확인"
						id="updateInfo" class="btn btn-primary" /></td>
				</tr>
			</table>
			<input type="hidden" name="m_id" value="${ map.m_id }" /> <input
				type="hidden" name="lvl" value="${ map.lvl }" />
		</form>
	</div>
</body>
</body>
</html>