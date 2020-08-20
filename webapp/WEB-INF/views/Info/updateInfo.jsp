<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>정보 수정 및 탈퇴</title>
<link rel="stylesheet" href="/css/mypage.css" />
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {

		$('#msg1').html('비밀번호가 일치하지않습니다.');
		$('#msg1').attr('class', 'badge badge-danger');

		$('#omv_pw').focusout(function() {

			var om_pw = $('#om_pw').val();
			var omv_pw = $('#omv_pw').val();

			if (om_pw != omv_pw) {
				$('#msg1').html('비밀번호가 일치하지않습니다.');
				$('#msg1').attr('class', 'badge badge-danger');
			} else {
				$('#msg1').html('비밀번호가 일치합니다.');
				$('#msg1').attr('class', 'badge badge-info');
			}

		});

		$('#conPw').focusout(function() {

			var pwd1 = $('#pw').val();
			var pwd2 = $('#conPw').val();

			if (pwd1 != '' && pwd2 == '') {
				null;
			} else if (pwd1 != "" || pwd2 != "") {
				if (pwd1 == pwd2) {
					$('#msg2').html('비밀번호가 일치합니다.');
					$('#msg2').attr('class', 'badge badge-info');
				} else {
					$('#msg2').html('비밀번호가 일치하지않습니다.');
					$('#msg2').attr('class', 'badge badge-danger');
				}
			}

		});

		$('#dropInfo').on('click', function(e) {

			var m_id = $('#m_id').val();

			if ($('#om_pw').val() == $('#omv_pw').val()) {

				if (confirm("탈퇴하시려면 예를 누르시고 아니면 취소를 눌러주세요")) {
					location.href = "/INFO/ConPW?m_id=" + m_id;
				} else {
					alert('취소 되었습니다.');
				}

			}

		})

		$('#updateInfo').on('click', function(e) {

			if ($('#om_pw').val() == $('#omv_pw').val()) {
				if ($('#pw').val() == $('#conPw').val()) {
					$('#updateFrm').submit();
				}
			}

		});

	});
</script>
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
	<form action="/INFO/UpdateInfo" method="POST" id="updateFrm">
		<p class="f-color">정보 수정 및 탈퇴</p>
		<table class="table table-hover">
			<tr>
				<th class="f-color">이름</th>
				<td><input type="text" name="m_name" value="${ infoVO.m_name }" style="color: white; text-shadow: 1px 1px 2px black, 0 0 25px lightgray, 0 0 5px darkblue;"
					readonly="readonly" class="form-control-plaintext" /></td>
			</tr>
			<tr>
				<th class="f-color">전화번호</th>
				<td><input type="text" name="tel" value="${ infoVO.tel }" style="color: white; text-shadow: 1px 1px 2px black, 0 0 25px lightgray, 0 0 5px darkblue;"
					required="required" class="form-control-plaintext" /></td>
			</tr>
			<tr>
				<th class="f-color">이메일</th>
				<td><input type="text" name="email" value="${ infoVO.email }" style="color: white; text-shadow: 1px 1px 2px black, 0 0 25px lightgray, 0 0 5px darkblue;"
					required="required" class="form-control-plaintext" /></td>
			</tr>
			<tr>
				<th class="f-color">현재 비밀번호</th>
				<td><input type="password" name="omv_pw" id="omv_pw" style="color: white; text-shadow: 1px 1px 2px black, 0 0 25px lightgray, 0 0 5px darkblue;"
					required="required" class="form-control-plaintext" /> <span
					id="msg1" class="badge badge-info"></span></td>
			</tr>
			<tr>
				<th class="f-color">변경 비밀번호</th>
				<td><input type="password" name="m_pw" id="pw" style="color: white; text-shadow: 1px 1px 2px black, 0 0 25px lightgray, 0 0 5px darkblue;"
					class="form-control-plaintext" /></td>
			</tr>
			<tr>
				<th class="f-color">변경 비밀번호 확인</th>
				<td><input type="password" name="m_pw2" id="conPw" style="color: white; text-shadow: 1px 1px 2px black, 0 0 25px lightgray, 0 0 5px darkblue;"
					class="form-control-plaintext" /> <span id="msg2"></span></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input
					type="button" value="정보수정" id="updateInfo" class="btn btn-primary" />
					<input type="button" value="탈퇴" id="dropInfo"
					class="btn btn-primary" style="align: center;" /></td>
			</tr>
		</table>
		<input type="hidden" name="m_id" value="${ map.m_id }" id="m_id" /> <input
			type="hidden" name="om_pw" value="${ map.m_pw }" id="om_pw" /> <input
			type="hidden" name="lvl" value="${ map.lvl }" />
	</form>
	</div>
</body>
</body>
</html>