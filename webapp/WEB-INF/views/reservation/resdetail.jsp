<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
 <script> 


 window.onload = function (){

	
$('select').on('change',function(){ 
	 	

		 var select_id   = document.getElementById("selectBox2");
		 var selected   =  select_id[document.getElementById("selectBox2").selectedIndex].value;
	
		 console.log(selected);
 
		 var strHTML = "";
		 
		 strHTML +=""+selected * ${map.r_price}+"";
		  $('#here').html(strHTML); 
})	;
	 
$(function(){
	$("body").on("click","#btnRes",function(){
		/* var rowData = new Array();
		var tdArr   = new Array();  */
		
		var select_id   = document.getElementById("selectBox");
		var total   =  select_id[document.getElementById("selectBox").selectedIndex].value;
		
		var select_id2   = document.getElementById("selectBox2");
		var peri   =  select_id2[document.getElementById("selectBox2").selectedIndex].value;
		  
		var book_tel   = document.getElementById("book_tel").value;
	
		
		console.log(book_tel); 
		 
		  location.href ="/Res/Confirm&peri="+peri+"&total="+total+"&book_tel="+book_tel+"";
		  });

});
 
 }	 
 

 </script>


</head>

<body>
예약하기 정보입력 셀렉트안하면 못넘기게 조건걸어야함


<table>
<tr>
<td>예약상황</td>
<td>${map.status} </td>
</tr>
<tr>
<td>방이름</td>
<td>${map.r_name} </td>
</tr>
<tr>
<td>이용일</td>
<td>${map.startdate} </td>
</tr>
<tr>
<td>인원</td>
<td>
<select name ="selectBox" id= "selectBox" >
<option disabled>-</option>
<script>

for(i=2;i<= ${map.max_cap}; i++){
 document.write("<option value="+i+">"+ i +"</option>");
}

</script>
</select> 
</td>
</tr>

<tr>
<td>기간</td>
<td>
<select name = "selectBox2"  id = "selectBox2">
<option disabled>-</option>
<option>1</option>
<option>2</option>
</select>
</td>
</tr>

<tr>
<td>가격</td>
<td>${map.r_price} </td>
</tr>

<tr>
<td>예약자 이름</td>
<td><input type ="text" placeholder = "이름을 입력하세요"/></td> 
</tr>
<tr>
<td>휴대폰번호</td>
<td><input type ="text" id="book_tel" placeholder = "-제외하고 입력하세요"/></td> 
</tr>

<tr>
<td>이메일주소</td>
<td><input type ="text" placeholder = "example"/></td> 
<td>@</td>>
<td><input type ="text" placeholder = "naver.com"/></td> 
</tr>

<tr>
<td>총가격</td>
<td id ="here"></td>
</tr>

<tr>
<td><input type = "button" id = "btnRes" value="예약하기"></td>
</tr>

</table>
</body>
</html>