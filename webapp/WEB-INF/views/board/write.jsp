<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
	.dropdown:hover .dropdown-menu {
		display: block;
	    margin-top: 0;
	}
</style>
<title>Insert title here</title>

<style>
	textarea { width:600px; height:300px; }
	#err_title {color:red; font-wight:bold; }
	#writetable {border:1px solid black; table-align:center; width:60%; hight:80%; margin:auto;}
	#container { padding : 300px; 0px; 0px; 0px; }
	td { border:1px solid #E5E4E4; text-align:center;}
	tr { border:1px solid #E5E4E4; text-align:center;}
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
<div class="container">
  <thead>
  <h3 align="center"> Boarder Write </h3>
  </thead>
  <!-- 메뉴 처리 -->

  <tbody>
  <form action="/PDS/Write" method="POST" id="write">
  <table id="writetable">
    <tr>
      <td>작성자</td>
      <td><input type="text" name="m_id" value="${ login.m_id }" readonly /></td>
    </tr>
    <tr>
      <td>제목</td>
      <td><input type="text" name="title" />
      <span id="err_title"></span>
      </td>
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
  </tbody>
</div>
</body>
</html>