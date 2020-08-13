<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
function inputCheck() {
	  if( $("[name=title]").val() == '' ) {
		  $('#err_title').html("<b>제목을 입력하세요</b>");
		  alert('작성해주세요');
		  return false;
	  }
	  if( $("[name=m_name]").val() == '' ) return false;
	  if( $("[name=cont]").val() == '' ) return false;  
	  
	  return true;
}

$( function() {
	  $('#write').on('submit', function(e) {
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

  <h1> 새글쓰기</h1>
  <!-- 메뉴 처리 -->
  
  <h2>메뉴아이디:<c:out value="${com_id}" ></c:out> </h2>
  
  <form action="/PDS/Write" method="POST" id="write">
  <table>
    <tr>
      <td>작성자</td>
      <td><input type="text" name="m_name" /></td>
    </tr>
    <tr>
      <td>제목</td>
      <td><input type="text" name="title" /></td>
    </tr>
    <tr>
      <td>내용</td>
      <td><textarea name="cont" rows="5" cols="60"></textarea></td>
    </tr>  
     <tr>
      <td colspan="2">
         <input type="submit" value="저장" />
      </td>
    </tr>
    
    <!--  com_id,m_id,readcount --> 
    <input type="hidden" name="com_id"  value="${com_id}" /> 
    <input type="hidden" name="m_id"  value="sky"  />
    <input type="hidden" name="readcount"  value="0"  />
    <input type="hidden" name="bnum"  value="${ pdsVo.bnum }"  />
    <input type="hidden" name="lvl"   value="${ pdsVo.lvl }"  />
    <input type="hidden" name="step"  value="${ pdsVo.step }"  />
    <input type="hidden" name="nref"  value="${ pdsVo.nref }"  />
   

  </table>
  </form>
</body>
</html>