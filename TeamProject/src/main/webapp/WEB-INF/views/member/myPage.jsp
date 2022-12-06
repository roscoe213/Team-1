<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../assets/css/sb-admin-2.css" />
<title>마이 페이지</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<link rel="stylesheet" href="../assets/css/sb-admin-2.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
</head>
<body>
<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="${pageContext.request.contextPath}" id="logo">마이페이지</a></h1>
							</header>
						</div>

					<%@include file="../include/nav.jsp"%>	

				</div>

<div class="container">
			<div class="card o-hidden board-0 shadow-lg my-5">
				<!-- nested Row within Card Body -->
				<div class="row" >
					<div class="col-lg-3"></div>
					
					<div class="col-lg-6">
						<div class="p-5">
							<div class="text-content">
								<h1 class="h4 text-gray-900 mb-4" align="center">마이페이지</h1>
							</div>
							<div class="form-group">									
									<a  class="image fit" style="margin-bottom: 40px;">
									<a href = "/member/imgRegister">
									<img src="../images/food/휴일로.jpg" style="border-radius: 70%; margin-left:75px; height: 40px; width: 40px; display: inline-block" alt="" /></a>
									<strong style="display: inline-block">&nbsp;&nbsp;${sessionScope.user_nick}</strong>
									&nbsp;&nbsp;${sessionScope.user_email}
									<input type="button" class="btn btn-primary btn-user btn-block" style="margin-left:10px; height: 20px; width: 20px; font-size: 9pt; padding: 2px 52px 7.800px 5px;" value="로그아웃" onclick="location.href='logout'">	
									</a>
																									
								</div>		
							
							<!-- 자바스크립트(제이쿼리)를 사용하기 전에 input 태그의 id속성을 확인 -->
								<!-- 아이디 -->
								<div class="form-group">									
										<input type="button" class="btn btn-primary btn-user btn-block col-7" style="margin-left: 100px" value="회원정보 변경" onclick="location.href='updatePage'">																
								</div>								
								<!-- 비밀번호 -->
								<div class="form-group">									
										<input type="button" class="btn btn-primary btn-user btn-block col-7" style="margin-left: 100px" value="비밀번호 변경" onclick="location.href='pwUpdatePage'">																
								</div>
								<div class="form-group">									
										<input type="button" class="btn btn-primary btn-user btn-block col-7" style="margin-left: 100px" value="회원탈퇴" onclick="location.href='deletePage'">				
								</div>
								<div class="form-group">									
																
								</div>
											
							<hr>
							<div class="text-center">
								<a class="small" href="/">메인으로</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


</body>
<%@include file="../include/footer.jsp"%>
