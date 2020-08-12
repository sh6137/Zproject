<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
</head>
<body>
   <form action="/INFO/DropInfo" method="POST">
      <input type="password" id="dropOK" value="네" onclick="location.href='/INFO/DropInfo'" />
      <input type="button" id="dropNo" value="아니오" />
   </form>
</body>
</body>
</html>