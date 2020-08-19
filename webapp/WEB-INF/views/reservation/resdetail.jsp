<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<!-- <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" /> -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
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

	<%@ include file="../../include/nav.jsp"%>
	<div style="width: 100%;">
		<div style="margin: 10px; float: left; width: 50%;">
			<h3>선택객실 정보</h3>
			<table style="width: 100%" class="table table-hover">
				<tr class='table-active'>
					<td style="font-size: 20px;">사진</td>
					<td style="font-size: 20px;">객실정보</td>
					<td style="font-size: 20px;">이용일</td>
				</tr>

				<tr>
					<td><img src='/img/${map.r_id}.jpg' width='200px'
						height='120px'></td>
					<td style="font-size: 20px;"><span class="badge badge-info"
						style="font-size: 15px;">${map.status}</span><br /> ${map.r_name}

					</td>
					<td style="font-size: 20px;">${map.startdate}</td>

				</tr>



				<tr>
					<td style="font-size: 20px;">인원</td>
					<td colspan="2"><select name="selectBox" id="selectBox"
						class="form-control" style="width: 150px;">
							<option>-</option>
							<script>

for(i=2;i<= ${map.max_cap}; i++){
 document.write("<option value="+i+">"+ i +"</option>");
}

</script>
					</select></td>
				</tr>

				<tr>
					<td style="font-size: 20px;">기간</td>
					<td colspan="2"><select name="selectBox2" id="selectBox2"
						class="form-control" style="width: 150px;">
							<option>-</option>
							<option>1</option>
							<option>2</option>
					</select></td>
				</tr>

				<tr>
					<td style="font-size: 20px;">가격</td>
					<td colspan="2" style="font-size: 20px;">${map.r_price}원</td>
				</tr>

				<tr>
					<td style="font-size: 20px;">총가격</td>
					<td id="here" colspan="2" style="font-size: 20px; color: tomato;"></td>
				</tr>

				<tr>
					<td style="font-size: 20px;">예약자 이름</td>
					<td colspan="2"><input type="text" id="book_name"
						placeholder="이름을 입력하세요" class="form-control-plaintext"
						style="width: 300px; font-size: 20px;" /></td>
				</tr>
				<tr>
					<td style="font-size: 20px;">휴대폰번호</td>
					<td colspan="2"><input type="text" id="book_tel"
						placeholder="-제외하고 입력하세요" class="form-control-plaintext"
						style="width: 300px; font-size: 20px;" /></td>
				</tr>

				<tr>
					<td style="font-size: 20px;">이메일주소</td>
					<td colspan="2"><input type="text" id="book_email"
						placeholder="예시:example@naver.com" class="form-control-plaintext"
						style="width: 300px; font-size: 20px;" /></td>
				</tr>



				<tr>
					<td colspan="3" align="center"><input type="button"
						id="btnRes" value="예약하기" class="btn btn-primary"></td>
				</tr>

			</table>
		</div>




		<div style=" margin: 10px; width: 45%; float: left;">
			<div>
			<h4>결제안내</h4> 
				<hr style="border: solid 1px #b37700; width: 70%; text-align: left; margin-left: 0">
				<h5>모든 결제는 무통장입금 으로만 가능합니다.</h5>
				<br>
				<ul >
				<li>신한은행   : 110-482-114458</li>
				<li>농협은행   : 815-1258-7315-14</li>
				<li>우리은행   : 4158-357-152345</li>
				<li>카카오뱅크 : 4321-15-7258925</li>
				<li>하나은행   : 147-146284-13469</li>
				</ul>
				입금자명은 예약자명과 동일해야 합니다.<br>
				입금자명과 예약자명이 다른 경우 010-1248-1592로 연락바랍니다. 
				</table>
			</div>
			
			<div style="padding:50px 0 0 0;">
			<h4>예약안내</h4>
				<hr style="border: solid 1px #b37700; width: 70%; text-align: left; margin-left: 0">
			<ul>
		<li>
		체크인/아웃 안내 체크인:15:00, 체크아웃:11:00
		</li>	
		<li>
		개별 바비큐:25,000원(숯,그릴,토치,망 제공),단 비바람시 불가능.당일 5시까지 결제에 한함.객실내 고기 및 생선요리 불가. (냄새로 인하여 재판매불가.1박의 객실료가 청구될 수 있습니다.)
		</li>		
			</ul>
			
			</div>
			<div style="padding:50px 0 0 0;">

				<h4>예약취소 규정안내</h4>
				<hr style="border: solid 1px #b37700; width: 70%; text-align: left; margin-left: 0">
				<table class="table table-hover">
					<tr class="table-active">
						<td>숙박 7일전 취소</td>
						<td>숙박 6일 ~ 2일전 취소</td>
						<td>숙박 1일전 18:00이전 취소</td>
						<td>숙박 1일전 18:00이후 취소 및 NO SHOW</td>
					</tr>
					<tr class="table-light">
						<td>취소 수수료 없음</td>
						<td>객실 요금의 20% 부과</td>
						<td>객실 요금의 50% 부과</td>
						<td>객실 요금의 100% 부과</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
</body>
</html>