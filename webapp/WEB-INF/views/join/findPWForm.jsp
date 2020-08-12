<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 찾는 창</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-2.1.4.js"></script> 
</head>
<script>
	$(function(){
		$("#findPw").on('click', function(){
			$.ajax({
				url : "/FindPW",
				type : "POST",
				data : {
                    "m_name" : $("#m_name").val(), "m_id" : $("#m_id").val(),
                    "email" : $("#email").val(), "tel" : $("#tel").val()
	            },
				dataTyte : "json",
				success : function(findpw){
					
				},
				error : function(xhr){
					alert("실패")
				}
			})
		})
	})
</script>
<body>
<h2>비밀번호 찾기</h2>
<form action="/FindPW" method="POST">

	<table>
			<tr>
				<td>이름</td>
				<td><input type="text" id="m_name" /></td>
			</tr>
			<tr>
				<td>아이디</td>
				<td><input type="text" id="m_id" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" id="tel" /></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" id="email" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" id = "findPw" value="비밀번호찾기" />
				</td>
			</tr>
	</table>
</form>
</body>
</html>