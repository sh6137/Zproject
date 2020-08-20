<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/mypage.css"/>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
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
	<div>개인정보</div>
	<form action="/INFO/ConInfo" method="POST">
		<table>
			<tr>
				<th>이름</th>
				<td><input type="text" name="m_name" value="${ infoVO.m_name }"
					readonly="readonly" /></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="m_pw"
					placeholder="비밀번호를 입력해주세요" required="required" /></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="본인확인"
					id="updateInfo" /></td>
			</tr>
		</table>
		<input type="hidden" name="m_id" value="${ map.m_id }" /> <input
			type="hidden" name="lvl" value="${ map.lvl }" />
	</form>
</body>
</body>
</html>