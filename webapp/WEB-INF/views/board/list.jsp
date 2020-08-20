<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css"/> -->
<title>Community</title>
<style type="text/css">
/* choi */
body {
	width:95%;
	margin: 0 auto;
	padding: 0px 0px 0px 100px;
}
/* end */
a {
	text-decoration: none
}


#pdslist {
	min-width:800px;
}

.td {
	
}

.wrapTitle {
	width: 100%;
	margin-bottom: 20px;
	display: flex;
	flex-direction: row;
	justify-content: space-around;
	background-color: #F2F2F2;
}

.el {
	width: 100px;
	height: 40px;
	text-align: center;
	line-height: 40px;
}

.el-a {
	color: #848484;
	text-decoration: none;
}


</style> 
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="//cdn.datatables.net/1.10.12/js/jquery.dataTables.js"></script>



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
	<%@ include file="../../include/nav.jsp"%>
      <div class="wrapTitle">
         <div class="el"><a class="el-a" href="/PDS/List?com_id=COM0023">공지사항</a></div>
         <div class="el"><a class="el-a" href="/PDS/List?com_id=COM0024">문의</a></div>
         <div class="el"><a class="el-a" href="/PDS/List?com_id=COM0025">QnA</a></div>
      </div>
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
     <td>제목</td> 
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
 		
     
     <div>
     	<div colspan="2">
	     	<c:if test="${ login.m_id eq 'KSJ' }" > <!-- 관리자명 적을것 -->
 		    <a href="/PDS/WriteForm?com_id=${ com_id }&bnum=0&lvl=0&step=0&nref=0&m_id=${ login.m_id }&m_name=${ login.m_name}">새글 쓰기</a>
		    </c:if>
		    <c:if test="${ com_id eq 'COM0024' }" >
				<c:if test="${login.m_id ne 'KSJ' }" >
 		    <a href="/PDS/WriteForm?com_id=${ com_id }&bnum=0&lvl=0&step=0&nref=0&m_id=${ login.m_id }&m_name=${ login.m_name}">새글 쓰기</a>
 		    	</c:if>
		    </c:if>
		  <a href="/">Main</a>	   
		</div>
     </div> 
   

  
     <input type="hidden"  name="b_idx"       value="${ pdsVo.b_idx }" />
     <input type="hidden"  name="com_id"       value="${ pdsVo.com_id }" />
     <input type="hidden"  name="b_row"       value="${ pdsVo.b_row }" />
     <input type="hidden"  name="m_name"       value="${ pdsVo.m_name }" />



</body>
</html>