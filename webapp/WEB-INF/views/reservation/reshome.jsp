<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>예약페이지</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!--   <link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" /> -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
 <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
	  var date = new Date();
      var today = new Date(date.getFullYear(), date.getMonth(), date.getDate());

    $( "#startdate" ).datepicker({dateFormat:"yy-mm-dd",minDate: 0}).val();
    
    $('#startdate').datepicker('setDate', today);
   
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
				   strHTML += "<table class='table table-hover'  style = 'font-size:20px; text-align:center' >";
				   strHTML += "<tr class='table-active' >";
				   
	                strHTML += "<td style='width:80px'> 선택 </td>";
	                strHTML += "<td> 사진 </td>";
	                strHTML += "<td> 번호 </td>";
	                strHTML += "<td> 방이름 </td>";
	                strHTML += "<td> 형태 </td>";
	                strHTML += "<td> 크기 </td>";	                
	                strHTML += "<td> 최대인원 </td>";
	                strHTML += "<td> 구분 </td>";
	                strHTML += "<td> 가격 </td>";
	                strHTML += "<td> 예약상태 </td>";
	                strHTML += "</tr>";
	              
				  $.each(datas, function(index, item){
	              
	             
                    
                    if( item.status == '예약완료')   {
                    	strHTML += "<tr>";
                    	strHTML += "<td style='width:80px;'><input type='checkbox' name='room_checkBox'   class='form-check-input' disabled></td>";
                      	strHTML += "<td><img src='/img/"+item.r_id+".jpg' width='200px'height='120px'></td>";
    	                strHTML += "<td>" + item.r_idx + "</td>";
    	           
    	                strHTML += "<td>" + item.r_name + "</td>";
    	             
    	                strHTML += "<td>" + item.r_style + "</td>";
    	              
    	                strHTML += "<td>" + item.r_size + "</td>";   	                    	             	                   	        
    	             
    	                strHTML += "<td>" + item.max_cap + "</td>";
    	                
    	                strHTML += "<td><span class='badge badge-warning'>" +item.com_val  +"</span></td>"; 
    	                
    	                strHTML += "<td>" + item.r_price + "</td>";
    	       
    	                strHTML += "<td><span class='badge badge-danger'>" +item.status  +"</span></td>";
    	                
    	                strHTML += "</tr>";
                    }
                    else if ( item.status == '예약가능'  )  {
                    	strHTML += "<tr>";
                     	strHTML += "<td align='center'><input type='checkbox' name='room_CheckBox'  class='form-check-input' ></td>";//0
                      	strHTML += "<td style='width:300px;'><img src='/img/"+item.r_id+".jpg' width='200px'height='120px'></td>";//1
    	                strHTML += "<td>" + item.r_idx + "</td>";//2
    	             
    	                strHTML += "<td>" + item.r_name + "</td>";//3
    	             
    	                strHTML += "<td>" + item.r_style + "</td>";//4
    	              
    	                strHTML += "<td>" + item.r_size + "</td>";//5
    	             
    	                strHTML += "<td>" + item.max_cap + "</td>";//6
    	                //strHTML += "<td>" + $('#startdate').val() + "</td>";
    	       
    	               // strHTML += "<td><input type = 'button'  id = 'btn2' value ='" +item.status +"' style = 'background-color:#3399ff;'></td>";
    	                strHTML += "<td><span class='badge badge-warning'>" +item.com_val  +"</span></td>"; //7

						strHTML += "<td>" + item.r_price + "</td>"; //8
    	               
    	                strHTML += "<td><span class='badge badge-info'>" +item.status  +"</span></td>";//9
    	                
    	                
    	                strHTML += "<td style ='visibility:hidden;'>" + $('#startdate').val() + "</td>";//10
    	                strHTML += "<td style ='visibility:hidden;'>" + item.r_id + "</td>";//11
    	                
    	                strHTML += "</tr>"; 
                    }
                    else {
                    	
                    	
                    }
                		
	                  });
	             
		 	      //strHTML += "<td> <input type = 'button'  id ='btn2' value ='예약하기' > </td>"; 
		 	      strHTML += "<td colspan='9' align='center'> <input type = 'button'  id ='btn2'   class='btn btn-primary' value ='예약하기' style=' font-size:25px' > </td>"; 
				  strHTML += "</table>"; 
				  strHTML += "</form>";
	                  $('#div1').html(strHTML); 
	                  
	                //checkbox하나만 선택가능하게 만듬
	                  $('input[type="checkbox"][name="room_CheckBox"]').click(function(){
	                      
	                      if ($(this).prop('checked')) {
	                          
	                          $('input[type="checkbox"][name="room_CheckBox"]').prop('checked', false);
	                          $(this).prop('checked', true);
	                      		
	                          
	                      }
	                      if( $('input[type="checkbox"][name="room_CheckBox"]').size() < 1){
	                    	  
	                    	  return false;
	                      }
	                      
	                  });  

	                  //예약하기 눌렀을때 선택한 값 넘기기
	                  $("#div1").on("click","#btn2",function(){
	                	
	          			var rowData = new Array();
	          			var tdArr = new Array();
	          			var checkbox = $("input[name=room_CheckBox]:checked");
	          			var chk =false;
	          			for(var i=0 ; i<checkbox.length ; i++) { 
	          				if(checkbox[i].checked) { chk = true; }
	          				else { chk = false; } 
	          				}

	          			if(chk){
	          			
	          			checkbox.each(function(i) {

	          		
	          				var tr = checkbox.parent().parent().eq(i);
	          				var td = tr.children();
	          				
	          				
	          				rowData.push(tr.text());
	          				
	          				var r_idx	  = td.eq(2).text();
	          				var r_name    = td.eq(3).text();
	          				var max_cap    = td.eq(6).text();
	          				var r_price   = td.eq(8).text();
	          				var startdate = td.eq(10).text();
	          				var status    = td.eq(9).text();
	          				var r_id      = td.eq(11).text();
	          				
	          				
	          				tdArr.push(r_idx);//0
	          				tdArr.push(r_name);//1
	          				tdArr.push(max_cap);//2
	          				tdArr.push(r_price);//3
	          				tdArr.push(startdate);//4
	          				tdArr.push(status);//5
	          				tdArr.push(r_id);//6
		
	          			});
	          			}
	          			else { 
	          				swal({text:"원하는 객실을 선택해 주세요",dangerMode: true,icon: "warning"}) 
	          				return false;}
	          			console.log(tdArr);
	          		
	          			location.href = "/Res/Detail?r_idx="+tdArr[0]+"&r_name="+tdArr[1]+"&r_price="+tdArr[3]+
	          					"&max_cap="+tdArr[2]+"&startdate="+tdArr[4]+"&status="+tdArr[5]+"&r_id="+tdArr[6]+"";
	          			
	                  })//div1 click
	                  
	                  
			  },//sucess
			  error:function(xhr){
                  alert('이거 아니거덩요?!' + xhr.status + ',' + xhr.textStatus);
                  alert($('#startdate').val());
              }
			  
			  
			  
			  
		  });
		 
	  });
	
			

	  
	 
	  
	  
 });// out function


	
	  


  
  </script>
<style>

</style>
</head>
<body>

<%@ include file="../../include/nav.jsp" %>

<div>
<h2> 객실&요금 조회 </h2> 
<input type="text" id="startdate" name= "startdate" class="form-control-plaintext" placeholder="여기를 클릭해주세요" style = " display: inline-block;width:300px;border:1px solid black;"><input type  ="button"   class='btn btn-primary' id = "btn1" value ="조회">
</div>




 
 <div id ="div1">

 </div>
 

 
 
</body>
</html>