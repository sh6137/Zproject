<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css"> 
a { text-decoration:none } 
	
</style>
<script>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</script>
</head>
<body>
	<h1>Community</h1><p>${login.m_id}</p>
	<table colspan="1" border="1px solid black;">
		<tr>
			<td><a href="/PDS/List?com_id=COM0025">공지사항</a></td>
			<td><a href="/PDS/List?com_id=COM0026">문의</a></td>
			<td><a href="/PDS/List?com_id=COM0027">QnA</a></td>
		</tr>
	</table>
	<c:choose>
		<c:when test="${com_id eq 'COM0025' }"><h1>공지사항</h1></c:when>
		<c:when test="${com_id eq 'COM0026' }"><h1>문의</h1></c:when>
		<c:otherwise><h1>QnA</h1></c:otherwise>
	</c:choose>
   
   <!--  메뉴 -->
   
    <table id="pdslist" border="1px solid black;">
	<tr>
	  <td>번호</td> 
	  <td style="width:200px">제목</td> 
	  <td>작성자</td> 
	  <td>조회수</td> 
	  <td>작성일</td> 
	</tr>
	 <c:forEach var="pdsVo" items="${ pdsList }" >
     <tr>
      <td>${ pdsVo.b_row }</td>
      <td style="width:200px"><a href="/PDS/View?b_idx=${pdsVo.b_idx}&b_row=${pdsVo.b_row}&com_id=${com_id}" >${pdsVo.title}</a></td>
      <td>${ pdsVo.m_name }</td>
      <td>${ pdsVo.readcount }</td>
      <td>${ pdsVo.regdate }</td>
     </tr> 
    </c:forEach>
	</table>
	  <c:if test="${pdsVo.com_id eq pdsVo.com_id}" >
	  <p><a href="/PDS/WriteForm?com_id=${ com_id }&bnum=0&lvl=0&step=0&nref=0">새글 쓰기</a></p>  
	  </c:if>
	  <input type="hidden"  name="b_idx" 		value="${ pdsVo.b_idx }" />
	  <input type="hidden"  name="com_id" 		value="${ pdsVo.com_id }" />
	  <input type="hidden"  name="b_row" 		value="${ pdsVo.b_row }" />
	  <input type="hidden"  name="m_id" 		value="${ pdsVo.m_id }" />
	  	 
</body>
</html>