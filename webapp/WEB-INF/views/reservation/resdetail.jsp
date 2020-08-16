<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />

 <script> 


 window.onload = function (){

	
$('select').on('change',function(){ 
	 	

		 var select_id   = document.getElementById("selectBox2");
		 var selected   =  select_id[document.getElementById("selectBox2").selectedIndex].value;
	
		 console.log(selected);
 
		 var strHTML = "";
		 
		 strHTML +=""+selected * ${map.r_price}+" 원";
		  $('#here').html(strHTML); 
})	;
	 
$(function(){
	$("body").on("click","#btnRes",function(){
		

		var select_id   = document.getElementById("selectBox");
		var total   =  select_id[document.getElementById("selectBox").selectedIndex].value;
		
		var select_id2   = document.getElementById("selectBox2");
		var peri   =  select_id2[document.getElementById("selectBox2").selectedIndex].value;
		  
		var book_tel   = document.getElementById("book_tel").value;
		var book_name  = document.getElementById("book_name").value;
		var book_email  = document.getElementById("book_email").value;
		
		var m_id = "${login.m_id}";
		var start_date = "${map.startdate}";
	
		if(book_tel == ""){
			
			alert ("전화번호를 입력하세요");
		
            return false;
		}
        if(book_name == ""){
			
			alert ("이름을 입력하세요");

            return false;
		}
		if(book_email == ""){
			
			alert ("이메일을 입력하세요");

            return false;
		}
		if(total == "-"){
			
			alert ("인원수를 선택하세요");

            return false;
		}
		if(peri == "-"){
			
			alert ("기간을 선택하세요");

            return false;
		}
			
		  location.href ="/Res/Confirm?m_id="+m_id+"&r_id="+${map.r_id}+"&book_name="+book_name+"&book_tel="+book_tel+"&book_email="+book_email+"&start_date="+start_date+"&peri="+peri+"&total="+total+"";
		  });

});
 
 }	 
 

 </script>


</head>

<body>
<div style = "margin:10px">
<h1> 선택객실 정보</h1>
<table  style = "width:80%" class="table table-hover"  >
<tr>
<td style = "font-size:20px;">사진</td>
<td style = "font-size:20px;">객실정보</td>
<td style = "font-size:20px;">이용일</td>
</tr>

<tr>
<td><img src='/img/${map.r_id}.jpg'></td>
<td style = "font-size:20px;"><span class="badge badge-info" style = "font-size:15px;">${map.status}</span><br/>
${map.r_name} 

 </td>
<td style = "font-size:20px;">${map.startdate} </td>

</tr>



<tr>
<td style = "font-size:20px;">인원</td>
<td colspan="2">
<select name ="selectBox" id= "selectBox" class="form-control" style="width:150px;" >
<option>-</option>
<script>

for(i=2;i<= ${map.max_cap}; i++){
 document.write("<option value="+i+">"+ i +"</option>");
}

</script>
</select> 
</td>
</tr>

<tr>
<td style = "font-size:20px;">기간</td>
<td colspan="2">
<select name = "selectBox2"  id = "selectBox2" class="form-control" style="width:150px;">
<option>-</option>
<option>1</option>
<option>2</option>
</select>
</td>
</tr>

<tr>
<td style = "font-size:20px;">가격</td>
<td  colspan="2" style = "font-size:20px;">${map.r_price} 원</td>
</tr>

<tr>
<td style = "font-size:20px;">총가격</td>
<td id ="here"  colspan="2" style = "font-size:20px;color:tomato;"></td>
</tr>

<tr>
<td style = "font-size:20px;">예약자 이름</td>
<td colspan="2"><input type ="text" id="book_name" placeholder = "이름을 입력하세요" class="form-control-plaintext" 
style="width:300px;font-size:20px;" /></td> 
</tr>
<tr>
<td style = "font-size:20px;">휴대폰번호</td>
<td colspan="2"><input type ="text" id="book_tel" placeholder = "-제외하고 입력하세요" class="form-control-plaintext" 
style="width:300px;font-size:20px;"/></td> 
</tr>

<tr>
<td style = "font-size:20px;">이메일주소</td>
<td colspan="2"><input type ="text" id= "book_email" placeholder = "예시:example@naver.com" class="form-control-plaintext" 
style="width:300px;font-size:20px;"/></td> 
</tr>



<tr>
<td colspan="3" align ="center"><input type = "button" id = "btnRes" value="예약하기"  class="btn btn-primary"></td>
</tr>

</table>
</div>
</body>
</html>