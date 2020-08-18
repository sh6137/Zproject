<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/>
<title>Insert title here</title>
<style type="text/css"> 
a { text-decoration:none } 
#boardmenu{overflow: hidden; text-align :center;
 		   display: inline-block;
   		   padding: 10px;
           margin-bottom: 5px;
           border: 1px solid #efefef;
           font-size: 15px;
           cursor: pointer;
           width: 100%;
           font-color:white;
 			 }
#pdslist{  width:80%; height:60%}

.nav {
  display: table-cell;
  float: left;
  width: 90%;
  background:white;
  color: #fff;
  margin-right: 10px;
}

.td {


}
</style> 
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>

<script>

	$(document).ready(function() {
	    $('#pdslist').dataTable( {
	        "scrollY":        300,
	        "scrollCollapse": true,
	        "pageLength": 5,
	        "order" : false
	    } );
	} );
</script>
</head>
<body>
   <h1>Community</h1>
   <table colspan="1" border="1px solid black;" id="boardmenu" >
   
      <tr class="nav">
         <td width="300px;"><a href="/PDS/List?com_id=COM0023">공지사항</a></td>
         <td width="300px;"><a href="/PDS/List?com_id=COM0024">문의</a></td>
         <td width="300px;"><a href="/PDS/List?com_id=COM0025">QnA</a></td>
      </tr>
    
   </table>
   <c:choose>
      <c:when test="${com_id eq 'COM0023' }"><h1>공지사항</h1></c:when>
      <c:when test="${com_id eq 'COM0024' }"><h1>문의</h1></c:when>
      <c:otherwise><h1>QnA</h1></c:otherwise>
   </c:choose>
   
   <!--  메뉴 -->
   
    <table id="pdslist" border="1px solid black;">
   <thead>
   <tr>
     <td>번호</td> 
     <td style="width:200px">제목</td> 
     <td>작성자</td> 
     <td>조회수</td> 
     <td>작성일</td> 
   </tr>
   </thead>
   <tbody>
    <c:forEach var="pdsVo" items="${ pdsList }" >
     <tr>
      <td>${ pdsVo.b_row }</td>
       <td><a href="/PDS/View?b_idx=${pdsVo.b_idx}&b_row=${pdsVo.b_row}&lvl=${pdsVo.lvl}&step=${pdsVo.step}&nref=${pdsVo.nref}&com_id=${ com_id }&m_id=${ login.m_id }" >${pdsVo.title}</a></td>
      <td>${ pdsVo.m_id }</td>
      <td>${ pdsVo.readcount }</td>
      <td>${ pdsVo.regdate }</td>
     </tr> 
    </c:forEach>
    </tbody>
   </table>
 		
     <c:if test="${pdsVo.com_id eq pdsVo.com_id}" >
     <div>
     	<div colspan="2">
     <a href="/PDS/WriteForm?com_id=${ com_id }&bnum=0&lvl=0&step=0&nref=0&m_id=${ login.m_id }&m_name=${ login.m_name}">새글 쓰기</a>
		</div>
		<div colspan="2">
	 <a href="/">Main</a>	     
		</div>
     </div> 
     </c:if>

  
     <input type="hidden"  name="b_idx"       value="${ pdsVo.b_idx }" />
     <input type="hidden"  name="com_id"       value="${ pdsVo.com_id }" />
     <input type="hidden"  name="b_row"       value="${ pdsVo.b_row }" />
     <input type="hidden"  name="m_name"       value="${ pdsVo.m_name }" />



</body>
</html>