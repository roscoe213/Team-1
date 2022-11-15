<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>차귀도 관광지</title>
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
					<a href= "../attraction/Attraction_Map" id="logo">차 귀 도</a>
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
									<a  class="image fit"><img src="../images/attraction/차귀도.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/13491454?c=14043229.6132693,3936835.7712188,13,0,0,0,dh"><strong>차귀도</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14043229.613269616,3936835.7712189574,%EC%B0%A8%EA%B7%80%EB%8F%84,13491454,PLACE_POI/-/transit?c=14041366.4607048,3936835.7712190,13,0,0,0,dh">제주 제주시 한경면 고산리 차귀도</a></p>
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