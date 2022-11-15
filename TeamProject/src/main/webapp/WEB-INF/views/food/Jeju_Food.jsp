<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>제주시 맛집</title>
<meta charset="utf-8" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
</head>
<body class="no-sidebar is-preload">


	<!-- Header -->
	<div id="header">

		<!-- Inner -->
		<div class="inner">
			<header>
				<h1>
					<a href= "../food/Food_Map" id="logo">제 주 시</a>
				</h1>
			</header>
		</div>

		<%@include file="../include/nav.jsp"%>

		<!-- Main -->
		<div class="wrapper style1">
			<div class="container">
				<article id="main" class="special">
					<div class="col-8 col-12-mobile" id = "content">
						<section>
							<hr size="50" style="top: 30px; margin-bottom: 30px">
							<div class="row gtr-50" style="align-items: center">

								<div class="col-4">
									<a href="#" class="image fit"><img src="../images/food/우진해장국.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/13418405?c=14083672.7805627,3963400.7014592,15,0,0,0,dh">
									<h4>우진해장국</h4></a>
									
									<p align="center">
									<a href="https://map.naver.com/v5/directions/-/14084138.568788525,3963400.7042435203,%EC%9A%B0%EC%A7%84%ED%95%B4%EC%9E%A5%EA%B5%AD,13418405,PLACE_POI/-/transit?c=14083672.7805627,3963400.7014592,15,0,0,0,dh">제주 제주시 서사로 11</a></p>
									
									</div>
									<div class="col-4">
									<a href="#" class="image fit"><img src="../images/food/지지지제주흑돼지.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/38262430?c=14081025.0131633,3960253.4645770,15,0,0,0,dh">
									<h4>지지지제주흑돼지</h4></a>
									
									<p align="center">
									<a href="https://map.naver.com/v5/directions/-/14081490.801304158,3960253.4645768423,%EC%A7%80%EC%A7%80%EC%A7%80%EC%A0%9C%EC%A3%BC%ED%9D%91%EB%8F%BC%EC%A7%80,38262430,PLACE_POI/-/transit?c=14081025.0131633,3960253.4645770,15,0,0,0,dh">제주 제주시 신대로 104 1층</a></p>
								</div>
									<div class="col-4">
									<a href="#" class="image fit"><img src="../images/food/어마장장.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/search/%EC%96%B4%EB%A7%88%EC%9E%A5%EC%9E%A5/place/35317471?c=14084774.7879944,3963340.2365353,15,0,0,0,dh&isCorrectAnswer=true">
									<h4>어마장장</h4></a>
									
									<p align="center">
									<a href="https://map.naver.com/v5/directions/-/14085240.576087635,3963340.2365074717,%EC%96%B4%EB%A7%88%EC%9E%A5%EC%9E%A5,35317471,PLACE_POI/-/transit?c=14084774.7879944,3963340.2365353,15,0,0,0,dh&isCorrectAnswer=true">제주 제주시 성지로 62</a></p>
								</div>
									<div class="col-4">
									<a href="#" class="image fit"><img src="../images/food/고슬.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/1896647116?c=14081129.6646164,3960253.6114007,15,0,0,0,dh&isCorrectAnswer=true">
									<h4>고슬</h4></a>
									
									<p align="center">
									<a href="https://map.naver.com/v5/directions/-/14081595.452757452,3960253.6114008036,%EA%B3%A0%EC%8A%AC,1896647116,PLACE_POI/-/transit?c=14081129.6646164,3960253.6114007,15,0,0,0,dh&isCorrectAnswer=true">제주 제주시 문송길 22 고슬</a></p>
									
								</div>
									<div class="col-4">
									<a href="#" class="image fit"><img src="../images/food/자매국수.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/37060300?c=14083342.1840237,3964106.0999888,15,0,0,0,dh&isCorrectAnswer=true">
									<h4>자매국수</h4></a>
									
									<p align="center">
									<a href="https://map.naver.com/v5/directions/-/14083807.972164769,3964106.0999887995,%EC%9E%90%EB%A7%A4%EA%B5%AD%EC%88%98,37060300,PLACE_POI/-/transit?c=14083342.1840237,3964106.0999888,15,0,0,0,dh&isCorrectAnswer=true">제주 제주시 탑동로11길 6</a></p>
								</div>
							</div>
							<hr size="50" style="top: 10px; margin: 70px">
						</section>
					</div>
				</article>
			</div>

		</div>
	</div>

	<%@include file="../include/footer.jsp"%>