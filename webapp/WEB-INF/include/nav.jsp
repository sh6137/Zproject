<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<style>
	.dropdown:hover .dropdown-menu {
		display: block;
	    margin-top: 0;
	}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light rounded">
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExample10" aria-controls="navbarsExample10" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse justify-content-md-around" id="navbarsExample10">
			<ul class="navbar-nav">
				<a class="nav-link" href="/">MAIN&nbsp;&nbsp;</a>
				<c:forEach var="main" items="${ menuList }">
					<c:if test="${main.parent_id eq 'COM0010'}">
						<li class="nav-item dropdown">
							<a class="nav-link dropdown-toggle" href="" id="dropdown10" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">${main.com_val}</a>
							<div class="dropdown-menu" aria-labelledby="dropdown10">
								<c:forEach var="sub" items="${ menuList }">
									<!-- about -->
									<c:if test="${main.com_id eq 'COM0011'}">
										<c:if test="${main.com_id eq sub.parent_id}">
												<a class="dropdown-item" href="/${ main.com_val }/${ sub.com_id }">${ sub.com_val }</a>
										</c:if>
									</c:if>
									<!-- rooms -->
									<c:if test="${main.com_id eq 'COM0012'}">
										<c:if test="${main.com_id eq sub.parent_id}">
												<a class="dropdown-item" href="/${ main.com_val }/List?r_id=${ sub.com_val }">${ sub.com_val }호</a>
										</c:if>
									</c:if>
									<c:if test="${main.com_id eq 'COM0013'}">
										<c:if test="${main.com_id eq sub.parent_id}">
												<a class="dropdown-item" href="/Res">${ sub.com_val }</a>
										</c:if>
									</c:if>
									<c:if test="${main.com_id eq 'COM0014'}">
										<c:if test="${main.com_id eq sub.parent_id}">
												<a class="dropdown-item" href="/PDS/List?com_id=${ sub.com_id }">${ sub.com_val }</a>
										</c:if>
									</c:if>
									<c:if test="${main.com_id eq 'COM0015'}">
										<c:if test="${main.com_id eq sub.parent_id}">
												<a class="dropdown-item" href="/INFO/SerInfo?m_id=${ login.m_id }">${ sub.com_val }</a>
										</c:if>
									</c:if>
								</c:forEach>
							</div>
						</li>
					</c:if>  
				</c:forEach>
				<a class="nav-link" href="/logout" >로그아웃</a>
			</ul>
		</div>
	</nav>
</body>
</html>