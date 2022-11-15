<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호 인증</title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="stylesheet" href="../assets/css/sb-admin-2.css" />
</head>
<body>
<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="/member/myPage" id="logo">마이페이지</a></h1>
							</header>
						</div>

					<%@include file="../include/nav.jsp"%>	
					
					</div>


		<div class="container">
			<div class="card o-hidden board-0 shadow-lg my-5">
				<!-- nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-3"></div>
					
					<div class="col-lg-6">
						<div class="p-5">
							<div class="text-content">
								<h1 class="h4 text-gray-900 mb-4" align="center">비밀번호를 입력해주세요</h1>
							</div>
							
							<!-- 자바스크립트(제이쿼리)를 사용하기 전에 input 태그의 id속성을 확인 -->
							<form action="confirmForm" method="post" id="regForm">
							<div class="form-group">									
										<input type="hidden" class="form-control form-control-user" value="${sessionScope.user_email }" readonly id="email" name="email">
																										
								</div>
								<!-- 아이디 -->
								<div class="form-group">									
										<input type="password" class="form-control form-control-user col-8" style="margin: 20px 0 0 70px" placeholder="비밀번호를 입력하세요" id="pw" name="pw">																
								</div>
								<div class="form-group">										
									<input type="submit" class="btn btn-primary btn-user btn-block col-4" style="margin: 20px 0 0 60px" value="확인">
									<input type="button" class="btn btn-primary btn-user btn-block col-4" style="margin: 20px 0 0 10px" value="취소" onclick="history.back()">
								</div>
							</form>							
							<hr>
							<div class="text-center">
								<a class="small" href="/">메인으로</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
 <script type="text/javascript">
  	$(document).ready(function() {
  		var msg = '${msg }';
  		if(msg 1='') {
  		alert(msg);
  		}
  	});  	
  </script>
<script src="../assets/js/jquery.min.js"></script>
</body>
<%@include file="../include/footer.jsp"%>
</html>