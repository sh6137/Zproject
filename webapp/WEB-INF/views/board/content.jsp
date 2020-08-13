<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/css/common.css" />
</head>

<body>
   <h1>내용보기</h1>
   
   <table border="1px solid black;" style ="width :80%;">
     <tr>
       <th>작성자</th>
       <td>${ pdsVo.m_name }</td>
       <th>작성일</th>
       <td>${ pdsVo.regdate  }</td>
     </tr>
     <tr>
       <th>작성번호</th>
       <td>${ pdsVo.b_idx  }</td>
       <th>조회수</th>
       <td>${ pdsVo.readcount  }</td>
     </tr>
     <tr>
       <th>글제목</th>
       <td colspan="3">${ pdsVo.title  }</td>     
     </tr>
     <tr>       
       <td colspan="4" style="height:300px;">
          ${ pdsVo.cont }
          
	  </tr>

	 	
     <tr>       
       <td colspan="4">          
          <a href="/PDS/List?com_id=COM0025">리스트로</a>                      
          <a href="/PDS/Delete?b_idx=${pdsVo.b_idx}"> 삭제 </a>
         
        
          <a href="/PDS/WriteForm?bnum=${pdsVo.bnum}&com_id=COM0026&lvl=${pdsVo.lvl}&step=${pdsVo.step}&nref=${pdsVo.nref}">답글쓰기</a>
		
          <a href="/PDS/UpdateForm?b_idx=${pdsVo.b_idx}"> 수정 </a>
       </td>     
     </tr>
   </table>
   		<input type = "hidden" name= "com_id"  value ="<c:out value='${ map.com_id}'/>" />
		<input type = "hidden" name= "bnum"    value ="<c:out value='${ map.bnum}'/>" />
		<input type = "hidden" name= "lvl"     value ="<c:out value='${ map.lvl}'/>" />
		<input type = "hidden" name= "step"    value ="<c:out value='${ map.step}'/>" />
		<input type = "hidden" name= "nref"    value ="<c:out value='${ map.nref}'/>" />
	
</body>
</html>