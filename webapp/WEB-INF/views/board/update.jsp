<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/common.css" />
<style>
	textarea { width:400px; height:150px; }
	#err_title {color:red; font-wight:bold; }
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
function inputCheck() {
	  if( $("[name=title]").val() == '' ) {
		  $('#err_title').html("<b>제목을 입력하세요</b>");
		  alert('수정');
		  return false;
	  }
	  if( $("[name=m_name]").val() == '' ) return false;
	  if( $("[name=cont]").val() == '' ) return false;  
	  
	  return true;
}

$( function() {
	  $('#form1').on('submit', function(e) {
		  var isValid = inputCheck();
		  if(isValid) {
			  return true;
		  } else {
			  return false;
		  }
	  })
} );
	
</script>
</head>
<body>
	<h1> 글 수정하기 </h1>
	
	<br  />
	<br  />
	
	<!-- 수정할 자료 입력  -->
   <form  id="form1" action="/PDS/Update" method="POST" >   
   <input type="hidden"  name="b_idx" 		value="${ pdsVo.b_idx }" />
   <input type="hidden"  name="m_id" 	    value="${login.m_id }" />			<!-- 아이디 받아오기  -->
   
   <table>
   <tr>
     <td>작성자</td>
     <td><input type="text" name="m_id" value="${ login.m_id }" readonly /> ${login.m_id }</td>
     <td>작성일</td>
     <td><input type="text" name="regdate" value="${ pdsVo.regdate }" readonly/>${ pdsVo.regdate }</td>        
   </tr> 
   <tr>
     <td>글번호</td>
     <td><input type="hidden" name="b_idx" value="${ pdsVo.b_idx }" readonly />${ pdsVo.b_idx }</td>
     <td>조회수</td>
     <td><input type="hidden" name="readcount" value="${ pdsVo.readcount }" readonly/>${ pdsVo.readcount }</td>        
   </tr> 
   <tr>
     <td>글제목</td>
     <td colspan="3">
        <input type="text" name="title" value="${ pdsVo.title }" />
        <span id="err_title"></span>
      </td>   
   </tr> 
   <tr>
     <td style="height:300px;">글내용</td>
     <td colspan="3">
        <textarea name="cont">${  pdsVo.cont  }</textarea>
      </td>   
   </tr>    
   <tr>
     <td colspan="4" style="text-align:center">
        <input type="submit" value="수정" />              
     </td>           
   </tr> 
  
   </table> 
   </form> 
</body>
</html>