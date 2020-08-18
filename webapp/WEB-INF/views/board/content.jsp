<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="/css/common.css" />
<style>

</style>
</head>
<body>
   <h1>Content</h1>
   
   <table border="1px solid black;" style ="width :80%;">
     <tr>
       <th>작성자</th>
       <td>${ pdsVo.m_id }</td>
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
          <a href="/PDS/List?com_id=COM0023">리스트로</a>    
        <c:choose>
          <c:when test="${login.m_id eq pdsVo.m_id }" >               
          <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="/PDS/Delete?b_idx=${pdsVo.b_idx}" id="deletePds" > 삭제 </a>
          </c:when>
          <c:when test="${login.m_name eq '관리자'}" >               
          <a onclick="return confirm('정말로 삭제하시겠습니까?')" href="/PDS/Delete?b_idx=${pdsVo.b_idx}" id="deletePds" > 삭제 </a>
          </c:when>
         </c:choose>
   			<c:if test="${com_id eq 'COM0024'}" >   
            <a  href="/PDS/WriteForm?bnum=${pdsVo.bnum}&com_id=COM0024&lvl=${pdsVo.lvl}&step=${pdsVo.step}&nref=${pdsVo.nref}&m_id=${login.m_id}&m_name=${pdsVo.m_name}">답글쓰기</a>
			</c:if>
		  <c:if test="${login.m_id eq pdsVo.m_id }" >  
          <a href="/PDS/UpdateForm?b_idx=${pdsVo.b_idx}"> 수정 </a>
          </c:if>
       </td>     
     </tr>
   </table>
   		<input type = "hidden" name= "com_id"  value ="<c:out value='${ com_id }'/>" />
		<input type = "hidden" name= "bnum"    value ="<c:out value='${ pdsVo.bnum}'/>" />
		<input type = "hidden" name= "lvl"     value ="<c:out value='${ pdsVo.lvl}'/>" />
		<input type = "hidden" name= "step"    value ="<c:out value='${ pdsVo.step}'/>" />
		<input type = "hidden" name= "nref"    value ="<c:out value='${ pdsVo.nref}'/>" />
	
</body>
</html>