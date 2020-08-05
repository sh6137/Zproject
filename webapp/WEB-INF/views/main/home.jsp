<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:if test="${msg == 'success'}">
    <h2>${sessionScope.u_id}(${sessionScope.u_pw})님 환영합니다.</h2>
    </c:if>
</body>
</html>