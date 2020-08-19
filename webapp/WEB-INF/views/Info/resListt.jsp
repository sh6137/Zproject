<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약 리스트</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>

   $(function() {
      
      $('#startdate').datepicker({
         
         dataFormat:'yy/mm/dd',
         changeMonth:true,
         changeYear:true,
         minDate:'-1Y',
         maxDate:'+0D'
         
      });
      
      $('#enddate').datepicker({
         
         dataFormat:'yy/mm/dd',
         changeMonth:true,
         changeYear:true,
         minDate:'-1Y',
         maxDate:'+0D'
         
      });
      
      
	$('#resList').on(
				'click',
				function(e) {

					var m_id = $('#m_id').val();
					var strDate = $("#startdate").datepicker({
						dateFormat : "yy/mm/dd"
					}).val();
					var endDate = $("#enddate").datepicker({
						dateFormat : "yy/mm/dd"
					}).val();

					//08/05/2020-08/06/2020
					//2/0/0
					strDate = strDate.substring(8, 10) + '/'
							+ strDate.substring(0, 2) + '/'
							+ strDate.substring(3, 5);
					endDate = endDate.substring(8, 10) + '/'
							+ endDate.substring(0, 2) + '/'
							+ endDate.substring(3, 5);

					var search = 1;
					
					if (strDate == '//' || endDate == '//') {
						strDate = '';
						endDate = '';
					} else {
						search = 0;
					}

					$.ajax({
						
						url:'/RES/ResList',
						data:'m_id=' + m_id + '&start_date=' + strDate + '&end_date=' + endDate + '&search=' + search,
						datatype:'json',
						contentType:'application/json; charset=UTF-8',
						success:function(datas) {
							//alert(JSON.stringify(datas));
							
							var strHTML = '';
							strHTML += '<tr><th>순서</th><th>날짜</th><th>방</th><th>예약자 성명</th><th>구분</th><th>금액</th></tr>';
							$.each(datas, function(index, items) {
								
								//alert(items.rn);
								
								if (items.rn == 0) {
									strHTML += '<tr><td colspan="6">조회 내역이 없습니다.</td></tr>'; 
								} else {
									strHTML += '<tr>';
									strHTML += '<td>' + items.rn + '</td>';
									strHTML += '<td>' + items.start_date + ' ~ ' + items.end_date + '</td>';
									strHTML += '<td>' + items.r_name + '</td>';
									strHTML += '<td>' + items.book_name + '</td>';
									strHTML += '<td>' + items.res_status_info + '</td>';
									strHTML += '<td>' + items.r_price + '</td>';
									strHTML += '</tr>';
								}
								
							})
							
							$('#resList_TBL').html('');
							$('#resList_TBL').html(strHTML);
							
						},
						error:function() {
							alert('error');
						}
						
						
					})

				});

	});
   
</script>
</head>
<body>
 <%@ include file="../../include/nav.jsp" %>
	<div>
		<p>검색하실 날짜를 선택해주세요</p>
		<input type="text" id="startdate" readonly="readonly"> ~ <input type="text" id="enddate" readonly="readonly">
		<input type="button" value="검색" id="resList" />
	</div>
	<table id="resList_TBL">
		<tr id="title">
			<th>순서</th>
			<th>날짜</th>
			<th>방</th>
			<th>예약자 성명</th>
			<th>구분</th>
			<th>금액</th>
		</tr>
		<!-- <div id="result">
		</div> -->
		<!-- 
		<c:forEach var="resVO" items="${ resList }">
			<c:choose>
				<c:when test="${ resVO.rn eq 0 }">
					<tr>
						<td colspan="6">예약이 없습니다.</td>
					</tr>
				</c:when>
				<c:otherwise>
					<tr>
						<td>${ resVO.rn }</td>
						<td>${ resVO.start_date } ~ ${ resVO.end_date }</td>
						<td>${ resVO.r_name }</td>
						<td>${ resVO.book_name }</td>
						<td>${ resVO.res_status_info }</td>
						<td>${ resVO.r_price }</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</c:forEach>
		 -->
	</table>
	<input type="hidden" id="m_id" value="${ map.m_id }" />
</body>
</html>