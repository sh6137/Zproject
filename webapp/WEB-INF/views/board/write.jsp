<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	textarea { width:400px; height:150px; }
	#err_title {color:red; font-wight:bold; }
	#writetable {border:1px solid black; table-align:center; width:60%; hight:80%; margin:auto;}
	td { border:1px solid cyan; text-align:center;}
	tr { border:1px solid cyan; text-align:center;}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<script>
function inputCheck() {
	  if( $("[name=title]").val() == '' ) {
		  $('#err_title').html("<b>제목을 입력하세요</b>");
		  alert('작성해주세요');
		  return false;
	  }
	  if( $("[name=m_id]").val() == '' ) return false;
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

  <h1 align="center"> Boarder Write </h1>
  <!-- 메뉴 처리 -->

  
  <form action="/PDS/Write" method="POST" id="write">
  <table id="writetable">
    <tr>
      <td>작성자</td>
      <td><input type="text" name="m_id" value="${ login.m_id }" /></td>
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
      <td colspan="2" align="right">
          <input type="submit" value="저장"  />
          <a href ="/PDS/List?com_id=${ com_id }" > 뒤로가기 </a>
      </td>
    </tr>
    
    <!--  com_id,m_id,readcount --> 
    <input type="hidden" name="com_id"  value="${com_id}" /> 
    <input type="hidden" name="readcount"  value="0"  />
    <input type="hidden" name="bnum"  value="${ pdsVo.bnum }"  />
    <input type="hidden" name="lvl"   value="${ pdsVo.lvl }"  />
    <input type="hidden" name="step"  value="${ pdsVo.step }"  />
    <input type="hidden" name="nref"  value="${ pdsVo.nref }"  />
 	<input type="hidden" name="m_name" value="${ pdsVo.m_name }" />
   

  </table>
  </form>

</body>
</html>