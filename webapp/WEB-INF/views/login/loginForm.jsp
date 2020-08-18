<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>
<title>Insert title here</title>
<link rel="stylesheet" href="/css/login.css"/>
</head>
<body>
	<main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
		<div class="container">
			<div class="card login-card">
				<div class="row no-gutters">
					<div class="col-md-5">
						<img src="/img/1.gif" alt="login" class="login-card-img">
					</div>
					<div class="col-md-7">
						<div class="card-body" style="height: 700px; padding: 28% 25% 20% 25%;">
							<p class="login-card-description">LOGIN</p>
							<form action="/loginProcess" method="POST">
								<div class="form-group">
									<input type="text" name="m_id" class="form-control"
										placeholder="ID를 입력하세요." />
								</div>
								<div class="form-group mb-4">
									<input type="password" name="m_pw" class="form-control"
										placeholder="***********">
								</div>
								<input name="login" id="login"
									class="btn btn-block login-btn mb-4" type="submit"
									value="Login">
							</form>
							<a href="/FindIDForm" class="forgot-password-link">비밀번호를 잊으셨나요?</a>
							<p class="login-card-footer-text">
								아직 회원이 아니신가요?&nbsp;&nbsp;<a href="/JoinForm"
									class="text-reset">여기서 가입하세요!</a>
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- 	<h1>로그인</h1>
	<form action="/loginProcess" method="POST">
		<div><input type="text" name="m_id" placeholder="아이디 입력"></div>
		<div><input type="password" name="m_pw" placeholder="암호"></div>
		<div><input type="submit" value="로그인"></div>
		
	</form>
		<a href="/JoinForm">회원가입</a>
		<a href="/FindIDForm">아이디 비밀번호 찾기</a> -->
</body>
</html>