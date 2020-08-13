<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MY RESERVATION</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function () {
		
		$('#rec_cc').on('click', function(e) {
				 
				var m_id = $('#m_id').val();
				var res_idx = $('#res_idx').val();
				var r_id = $('#r_id').val();
				
				if(confirm("취소하시려면 예를 누르시고 아니면 취소를 눌러주세요")) {				
					location.href="/RES/CanRE?res_idx=" + res_idx + "&m_id=" + m_id + "&r_id=" + r_id;
				} else {
					alert('취소 되었습니다.');
				}
					
		})
		
	})
</script>
</head>
<body>
	<div style="height:30px;"></div>
	<h3>예약현황</h3>
	<c:forEach var="resVO" items="${ recresList }" >
		<c:choose>
			<c:when test="${ resVO.rn eq 0 }">
				<div>
					<div>
						<h3>예약이 없습니다.</h3>
						<input type="button" value="OK"
							onclick="location.href='/INFO/ConInfo?m_id=${ map.m_id }'">
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<table>
					<tr>
						<th>예약자 이름</th>
						<td><input type="text" name="book_name"
							value="${ resVO.book_name }" /></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="text" name="r_tel" value="${ resVO.r_tel }" /></td>
					</tr>
					<tr>
						<th>이용일자</th>
						<td><input type="text" name="usedate"
							value="${ resVO.start_date } ~ ${ resVO.end_date }" /></td>
					</tr>
					<tr>
						<th>금액</th>
						<td><input type="text" name="r_price"
							value="${ resVO.r_price }" /></td>
					</tr>
					<tr>
						<th>확정여부</th>
						<td><c:choose>
								<c:when test="${ resVO.res_status eq 1 }">
	                        ${ resVO.res_status_info }
	                     </c:when>
								<c:otherwise>
									<c:choose>
										<c:when test="${ resVO.res_status eq 0 }">
	                        		${ resVO.res_status_info }
	                        	</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${ resVO.res_status eq 2 }">
					                        		${ resVO.res_status_info }
					                        	</c:when>
												<c:otherwise>
													<c:choose>
														<c:when test="${ resVO.res_status eq 3 }">
					                        				${ resVO.res_status_info }
					                        			</c:when>
													</c:choose>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
					<tr>
						<td colspan="2">
							<c:choose>
								<c:when test="${ resVO.cc_true eq 'T' }">
									<input type="button" name="" value="취소" id="rec_cc"/>
								</c:when>
								<c:otherwise>
			
								</c:otherwise>
							</c:choose>
						</td>
					</tr>
				</table>
				<input type="hidden" id="m_id" value="${ resVO.m_id }" />
				<input type="hidden" id="res_idx" value="${ resVO.res_idx }" />
				<input type="hidden" id="r_id" value="${ resVO.r_id }" />
	 		</c:otherwise>
		</c:choose>
	</c:forEach>
</body>
</html>