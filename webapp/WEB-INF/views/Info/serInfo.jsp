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
<%@ include file="../../include/nav.jsp" %>
   <div>개인정보</div>
   <form action="/INFO/ConInfo" method="POST">
      <table>
         <tr>
            <th>이름</th>
            <td><input type="text" name="m_name" value="${ infoVO.m_name }" readonly="readonly" /></td>
         </tr>
         <tr>
            <th>비밀번호</th>
            <td><input type="password" name="m_pw" placeholder="비밀번호를 입력해주세요" required="required"/></td>
         </tr>
         <tr>
            <td colspan="2">
               <input type="submit" value="본인확인" id="updateInfo"/>
            </td>
         </tr>
      </table>
      <input type="hidden" name="m_id" value="${ map.m_id }" />
      <input type="hidden" name="lvl" value="${ map.lvl }" />
   </form>
</body>
</body>
</html>