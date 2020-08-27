<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/css/mypage.css" />
<title>MY RESERVATION</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css"
	integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<style>
	.dropdown:hover .dropdown-menu {
		display: block;
	    margin-top: 0;
	}
</style>
<script>

   function canRE(i) {
      
      var m_id = $('#m_id' + i).val();
      var res_idx = $('#res_idx' + i).val();
      var r_id = $('#r_id' + i).val();
      
      if(confirm("취소하시려면 예를 누르시고 아니면 취소를 눌러주세요")) {            
         location.href="/RES/CanRE?res_idx=" + res_idx + "&m_id=" + m_id + "&r_id=" + r_id;
      } else {
         alert('취소 되었습니다.');
      }
      
   }

</script>
</head>
<body>
	<%@ include file="../../include/nav.jsp"%>
	<div class="wrapMypage">
		<c:forEach var="main" items="${ menuList }">
			<c:if test="${main.com_id eq 'COM0015'}">
				<c:forEach var="sub" items="${ menuList }">
					<c:if test="${main.com_id eq sub.parent_id}">
						<c:if test="${sub.com_id eq 'COM0026'}">
							<div class="divSub">
								<a class="subMypage" href="/INFO/SerInfo?m_id=${ login.m_id }">${ sub.com_val }</a>
							</div>
						</c:if>
						<c:if test="${sub.com_id eq 'COM0027'}">
							<div class="divSub">
								<a class="subMypage" href="/RES/ResInfo?m_id=${ login.m_id }">${ sub.com_val }</a>
							</div>
						</c:if>
						<c:if test="${sub.com_id eq 'COM0028'}">
							<div class="divSub">
								<a class="subMypage"
									href="/RES/ResListForm?m_id=${ login.m_id }">${ sub.com_val }</a>
							</div>
						</c:if>
					</c:if>
				</c:forEach>
			</c:if>
		</c:forEach>
	</div>
<!-- 
	<div class="bg-frame">
		<img class="bg" src="/img/my_bg.jpg">
	</div>
	 -->
	<div class="tableWrap2" style="margin: 0 auto; width: 50%;">
	<div style="height: 30px;"></div>
	<h3 style="text-align: center">예약현황</h3>
	<c:forEach var="resVO" items="${ recresList }">
		<c:choose>
			<c:when test="${ resVO.rn eq 0 }">
				<div>
					<div>
						<h3 style="text-align: center">예약이 없습니다.</h3>
						<input type="button" value="My info로 이동하기"
							onclick="location.href='/INFO/ConInfo?m_id=${ map.m_id }'"
							class="btn btn-primary">
					</div>
				</div>
			</c:when>
			<c:otherwise>
				<table class="table table-hover">
					<tr>
						<th>예약자 이름</th>
						<td><input type="text" name="book_name"
							value="${ resVO.book_name }" class="form-control-plaintext" readonly="readonly"/></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="text" name="r_tel" value="${ resVO.r_tel }"
							class="form-control-plaintext" readonly="readonly"/></td>
					</tr>
					<tr>
						<th>이용일자</th>
						<td><input type="text" name="usedate"
							value="${ resVO.start_date } ~ ${ resVO.end_date }"
							class="form-control-plaintext" readonly="readonly"/></td>
					</tr>
					<tr>
						<th>금액</th>
						<td><input type="text" name="r_price"
							value="${ resVO.r_price }" class="form-control-plaintext" readonly="readonly"/></td>
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
							</c:choose></td>
					</tr>
					<tr>
						<td colspan="2"><c:choose>
								<c:when test="${ resVO.cc_true eq 'T' }">
									<input type="button" name="" value="취소"
										id="rec_cc${ resVO.rn }" onclick="canRE(${ resVO.rn })"
										class="btn btn-primary" align="center" />
								</c:when>
								<c:otherwise>

								</c:otherwise>
							</c:choose></td>
					</tr>
				</table>
				<input type="hidden" id="m_id${ resVO.rn }" value="${ resVO.m_id }" />
				<input type="hidden" id="res_idx${ resVO.rn }"
					value="${ resVO.res_idx }" />
				<input type="hidden" id="r_id${ resVO.rn }" value="${ resVO.r_id }" />
			</c:otherwise>
		</c:choose>
	</c:forEach>
	<input type="hidden" id="maxRN" value="${ maxRn }">
	</div>
</body>
</html>