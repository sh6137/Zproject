<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>아이디부터 찾기</title>
</head>
<body>
<h1>아이디 찾기</h1>
<form action="/FindID" method="POST">

	<table>
			<tr>
				<td>이름</td>
				<td><input type="text" name="m_name" /></td>
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
					<input type="submit" value="아이디찾기" />
				</td>
			</tr>
	</table>
</form>
<a href="/FindPWFrom">비밀번호 찾기</a>

</body>
</html>