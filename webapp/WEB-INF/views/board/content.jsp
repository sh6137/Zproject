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
	body {
	margin: 0 auto;
	padding: 0px;
	
}
table.type09 {
    border-collapse: collapse;
    text-align: center;
    line-height: 1.5;

}
table.type09 thead th {
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    color: #369;
    border-bottom: 3px solid #036;
}
table.type09 tbody th {
    width: 150px;
    padding: 10px;
    font-weight: bold;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
    background: #f3f6f7;
}
table.type09 td {
    width: 350px;
    padding: 10px;
    vertical-align: top;
    border-bottom: 1px solid #ccc;
}
</style>
</head>
<body>
	<div align="center">
    <c:choose>
      <c:when test="${com_id eq 'COM0023' }"><h1>공지사항</h1></c:when>
      <c:when test="${com_id eq 'COM0024' }"><h1>문의</h1></c:when>
      <c:otherwise><h1>QnA</h1></c:otherwise>
   </c:choose>
	</div>
   <table border="1px solid black;" style ="width :80%;" class="type09">
     <tr>
       <th scope="cols">글제목</th>
       <td scope="cols" colspan="3">${ pdsVo.title  }</td>     
     </tr>
     <tr>
       <th scope="row">작성자</th>
       <td>${ pdsVo.m_id }</td>
       <th scope="row">작성일</th>
       <td>${ pdsVo.regdate  }</td>
     </tr>
     <tr>
       <th scope="row">작성번호</th>
       <td>${ pdsVo.b_idx  }</td>
       <th scope="row">조회수</th>
       <td>${ pdsVo.readcount  }</td>
     </tr>
     <tr>       
       <td scope="row" colspan="4" style="height:300px;" >
          ${ pdsVo.cont }
          
	  </tr>

	 	
     <tr>       
       <td colspan="4">          
          <a href="/PDS/List?com_id=${ com_id }">리스트로</a>    
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