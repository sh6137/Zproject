<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
<link rel="stylesheet" href="/css/common.css" />
<script>
$(document).ready(function(){
    $("#btnLogin").click(function(){
        // 태크.val() : 태그에 입력된 값
        // 태크.val("값") : 태그의 값을 변경 
        var m_id = $("#m_id").val();
        var m_pw = $("#m_pw").val();
        if(m_id == ""){
            alert("아이디를 입력하세요.");
            $("#m_id").focus(); // 입력포커스 이동
            return; // 함수 종료
        }
        if(m_pw == ""){
            alert("비밀번호를 입력하세요.");
            $("#m_pw").focus();
            return;
        }
        // 폼 내부의 데이터를 전송할 주소
        document.form1.action="${path}/Member/loginCheck"
        // 제출
        document.form1.submit();
    });
});
</script>
</head>
<body>
	<h1>로그인 페이지</h1>
	<h2>로그인</h2>
    <form name="form1" method="post">
        <table border="1" width="400px">
            <tr>
                <td>아이디</td>
                <td><input type="text" name="m_id" id="m_id"></td>
            </tr>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="m_pw" id="m_pw"></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <button type="button" id="btnLogin">로그인</button>
                <c:if test="${msg == 'failure'}">
                    <div style="color: red">
                        아이디 또는 비밀번호가 일치하지 않습니다.
                    </div>
                </c:if>
                <c:if test="${msg == 'logout'}">
                    <div style="color: red">
                        로그아웃되었습니다.
                    </div>
                </c:if>
                </td>
            </tr>
            <tr>
            <td td colspan="2" align="center"><a href="/Member/JoinForm">회원가입 페이지</a></td>
            </tr>
        </table>
    </form>
	
	
	
	
   <p><a href="/Member/JoinForm">회원가입 페이지</a></p>
   
   
</body>
</html>