<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>회원가입</h1>
	<form action="/Member/Join" method="POST">
		<table>
			<tr>
				<td>아이디</td>
				<td><input type="text" name="m_id" /></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><input type="text" name="m_name" /></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><input type="text" name="m_pw" /></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><input type="text" name="tel" /></td>
			</tr>
			<tr>
				<td>이메일</td>
				<td><input type="text" name="email" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="submit" value="가입하기" />
				</td>
			</tr>
		</table>
		<input type="hidden" name="lvl" value="1" />
	</form>
</body>
</html>