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
   <div>UpdateInfo</div>
   <form action="/MYINFO/updateInfo" method="POST">
      <table>
         <tr>
            <th>이름</th>
            <td><input type="text" name="m_name" value="${ m_name }" readonly="readonly" /></td>
         </tr>
         <tr>
            <th>전화번호</th>
            <td><input type="text" name="tel" /></td>
         </tr>
         <tr>
            <th>이메일</th>
            <td><input type="text" name="email" /></td>
         </tr>
         <tr>
            <th>비밀번호</th>
            <td><input type="text" name="m_pw" /></td>
         </tr>
         <tr>
            <td colspan="2">
               <input type="submit" value="정보수정" onclick="" id="updateInfo"/>
               <input type="button" value="탈퇴" onclick="" id="dropInfo"/>
            </td>
         </tr>
      </table>
      <input type="hidden" name="m_id" value="${ m_id }" />
      <input type="hidden" name="lvl" value="${ lvl }" />
   </form>
</body>
</body>
</html>