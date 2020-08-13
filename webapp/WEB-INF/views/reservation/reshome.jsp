<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>예약페이지</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#startdate" ).datepicker({dateFormat:"yy-mm-dd"}).val();
   
  } );
 
  $(function(){
	  $("body").on("click","#btn1",function(){
		  $.ajax({
			  url: "/Res/Search",
			  type :"POST",
			  data: {startdate: $('#startdate').val() },
			  dataType:"json",
			  async: false,
			  success:function(datas){
				  var strHTML = "";
				   console.log(datas);
				  
				   strHTML += "<form action = 'Res/Detail' method = 'GET'>";
				   strHTML += "<table>";
				   strHTML += "<tr>";
				   
	                strHTML += "<td> 선택 </td>";
	                strHTML += "<td> 번호 </td>";
	                strHTML += "<td> 방이름 </td>";
	                strHTML += "<td> 형태 </td>";
	                strHTML += "<td> 크기 </td>";	                
	                strHTML += "<td> 최대인원 </td>";
	                strHTML += "<td> 가격 </td>";
	                strHTML += "<td> 예약상태 </td>";
	                strHTML += "</tr>";
	              
				  $.each(datas, function(index, item){
	              
	             
                    
                    if( item.status == '예약완료')   {
                    	strHTML += "<tr>";
                    	strHTML += "<td><input type='checkbox' name='room_checkBox' disabled></td>";
    	                strHTML += "<td>" + item.r_idx + "</td>";
    	           
    	                strHTML += "<td>" + item.r_name + "</td>";
    	             
    	                strHTML += "<td>" + item.r_style + "</td>";
    	              
    	                strHTML += "<td>" + item.r_size + "</td>";   	                    	             	                   	        
    	             
    	                strHTML += "<td>" + item.max_cap + "</td>";
    	                
    	                strHTML += "<td>" + item.r_price + "</td>";
    	       
    	                strHTML += "<td><input type = 'button' value ='" +item.status +"' style = ' background-color:tomato;'disabled></td>";
    	                
    	                strHTML += "</tr>";
                    }
                    else if ( item.status == '예약가능'  )  {
                    	strHTML += "<tr>";
                     	strHTML += "<td><input type='checkbox' name='room_CheckBox' ></td>";//0
                     	
    	                strHTML += "<td>" + item.r_idx + "</td>";//1
    	             
    	                strHTML += "<td>" + item.r_name + "</td>";//2
    	             
    	                strHTML += "<td>" + item.r_style + "</td>";//3
    	              
    	                strHTML += "<td>" + item.r_size + "</td>";//4
    	             
    	                strHTML += "<td>" + item.max_cap + "</td>";//5
    	                //strHTML += "<td>" + $('#startdate').val() + "</td>";
    	       
    	               // strHTML += "<td><input type = 'button'  id = 'btn2' value ='" +item.status +"' style = 'background-color:#3399ff;'></td>";
    	                strHTML += "<td>" + item.r_price + "</td>"; //6
    	               
    	                strHTML += "<td>" +item.status +"</td>";//7
    	                
    	                
    	                strHTML += "<td style ='visibility:hidden;'>" + $('#startdate').val() + "</td>";//8
    	                
    	                strHTML += "</tr>"; 
                    }
                    else {
                    	
                    	
                    }
                		
	                  });
	             
		 	      //strHTML += "<td> <input type = 'button'  id ='btn2' value ='예약하기' > </td>"; 
		 	      strHTML += "<td> <input type = 'button'  id ='btn2' value ='예약하기' > </td>"; 
				  strHTML += "</table>"; 
				  strHTML += "</form>";
	                  $('#div1').html(strHTML); 
					
	                  
	                  $("#div1").on("click","#btn2",function(){
	                	
	                	
	          			var rowData = new Array();
	          			var tdArr = new Array();
	          			var checkbox = $("input[name=room_CheckBox]:checked");
	          			
	          			
	          			checkbox.each(function(i) {

	          		
	          				var tr = checkbox.parent().parent().eq(i);
	          				var td = tr.children();
	          				
	          				
	          				rowData.push(tr.text());
	          				
	          				var r_idx	  = td.eq(1).text();
	          				var r_name    = td.eq(2).text();
	          				var max_cap    = td.eq(5).text();
	          				var r_price   = td.eq(6).text();
	          				var startdate = td.eq(8).text();
	          				var status    = td.eq(7).text();
	          			
	          				tdArr.push(r_idx);//0
	          				tdArr.push(r_name);//1
	          				tdArr.push(max_cap);//2
	          				tdArr.push(r_price);//3
	          				tdArr.push(startdate);//4
	          				tdArr.push(status);//5
		
	          			});
	          		
	          			console.log(tdArr);
	          			$("#div2").html(" * 체크된 Row의 모든 데이터 = "+rowData);	
	          			$("#div2").html(tdArr);	
	          			location.href = "/Res/Detail?r_idx="+tdArr[0]+"&r_name="+tdArr[1]+"&r_price="+tdArr[3]+
	          					"&max_cap="+tdArr[2]+"&startdate="+tdArr[4]+"&status="+tdArr[5]+"";
	          			
	                  })
	              
			  },
			  error:function(xhr){
                  alert('이거 아니거덩요?!' + xhr.status + ',' + xhr.textStatus);
                  alert($('#startdate').val());
              }
			  
			  
			  
			  
		  });
		 
	  });
	
			

	  
	 
	  
	  
 });// out function


	
	  


  
  </script>
</head>
<body>


<p> 입실일자: <input type="text" id="startdate" name= "startdate"><input type  ="button" id = "btn1" value ="조회"></p>



 
 <div id ="div1">
 예약테이블
 </div>
 
 <div id ="div2">
결과값 *한개만 선택할수있도록 조건 걸어야함*
 </div>
 
 
</body>
</html>