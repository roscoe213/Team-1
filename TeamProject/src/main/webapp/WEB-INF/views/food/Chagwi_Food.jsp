<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>차귀도 맛집</title>
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
					<a href= "../food/Food_Map" id="logo">차 귀 도</a>
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
									<a  class="image fit"><img src="../images/food/놀빛바다.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/1108893848?c=14044568.92032725,3936240.391930219,13,0,0,0,dh"><strong>놀빛바다</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14044568.92032725,3936240.391930219,%EC%B0%A8%EA%B7%80%EB%8F%84%EB%86%80%EB%B9%9B%EB%B0%94%EB%8B%A4,1108893848,PLACE_POI/-/transit?c=14042705.7677635,3936240.3919303,13,0,0,0,dh">제주 제주시 한경면 노을해안로 1142 2층</a></p>
								</div>
								
								<div class="col-4">
									<a  class="image fit"><img src="../images/food/아리아해물라면.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/1184038199?c=14044706.0821546,3936277.6617545,13,0,0,0,dh&placePath=%2Fhome"><strong>아리아 해물라면</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14044706.077071857,3936277.661349306,%EC%95%84%EB%A6%AC%EC%95%84%ED%95%B4%EB%AC%BC%EB%9D%BC%EB%A9%B4&%EA%B9%80%EB%B0%A5,1184038199,PLACE_POI/-/transit?c=14042842.9245075,3936277.6613490,13,0,0,0,dh">제주 제주시 한경면 노을해안로 1174</a></p>
								</div>
								
								<div class="col-4">
									<a  class="image fit"><img src="../images/food/다금바리스타.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/36883768?c=14044649.7008484,3936364.2479139,13,0,0,0,dh&placePath=%2Fhome"><strong>다금바리스타</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14044649.704881717,3936364.241948189,%EB%8B%A4%EA%B8%88%EB%B0%94%EB%A6%AC%EC%8A%A4%ED%83%80,36883768,PLACE_POI/-/transit?c=14042786.5523174,3936364.2419480,13,0,0,0,dh">제주 제주시 한경면 노을해안로 1166 노을해안로 1166</a></p>
								</div>
								
								<div class="col-4">
									<a  class="image fit"><img src="../images/food/만덕식당.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/11596025?c=14044652.0648549,3936327.5450156,13,0,0,0,dh&placePath=%2Fhome&entry=plt"><strong>만덕식당</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14044652.064854924,3936327.545015551,%EB%A7%8C%EB%8D%95%EC%8B%9D%EB%8B%B9,11596025,PLACE_POI/-/transit?c=14042788.9122904,3936327.5450156,13,0,0,0,dh&entry=plt">제주 제주시 한경면 노을해안로 1168 만덕식당</a></p>
								</div>
								
								<div class="col-4">
									<a  class="image fit"><img src="../images/food/한경가든.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/19344844?c=14045597.0560106,3935747.6023524,13,0,0,0,dh&placePath=%2Fhome"><strong>한경가든</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14045597.056012262,3935747.6023532934,%ED%95%9C%EA%B2%BD%EA%B0%80%EB%93%A0,19344844,PLACE_POI/-/transit?c=14043733.9034485,3935747.6023534,13,0,0,0,dh">제주 제주시 한경면 노을해안로 1259 한경가든</a></p>
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