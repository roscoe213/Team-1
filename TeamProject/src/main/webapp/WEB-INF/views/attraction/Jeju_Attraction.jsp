<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>제주시 관광지</title>
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
					<a href= "../attraction/Attraction_Map" id="logo">제 주 시</a>
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
									<a href="#" class="image fit"><img src="../images/attraction/이호테우해수욕장.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/11491767?c=14076165.8223301,3961542.5173393,15,0,0,0,dh&isCorrectAnswer=true">
									<h4>이호테우해수욕장</h4></a>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14076631.605343495,3961542.517339263,%EC%9D%B4%ED%98%B8%ED%85%8C%EC%9A%B0%ED%95%B4%EC%88%98%EC%9A%95%EC%9E%A5,11491767,PLACE_POI/-/transit?c=14076165.8223301,3961542.5173393,15,0,0,0,dh&isCorrectAnswer=true">제주 제주시 이호일동</a></p>
								</div>
								
								<div class="col-4">
									<a href="#" class="image fit"><img src="../images/attraction/한라수목원.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/11607760?c=14080574.6084991,3957821.5014082,15,0,0,0,dh&isCorrectAnswer=true">
									<h4>한라수목원</h4></a>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14081040.391512457,3957821.501408167,%ED%95%9C%EB%9D%BC%EC%88%98%EB%AA%A9%EC%9B%90,11607760,PLACE_POI/-/transit?c=14080574.6084991,3957821.5014082,15,0,0,0,dh&isCorrectAnswer=true">제주 제주시 수목원길 72</a></p>
								</div>
								
								<div class="col-4">
									<a href="#" class="image fit"><img src="../images/attraction/남국사.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/16771104?c=14086825.1422474,3956482.9060480,15,0,0,0,dh&isCorrectAnswer=true">
									<h4>남국사</h4></a>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14087290.925260756,3956482.9060479775,%EB%82%A8%EA%B5%AD%EC%82%AC,16771104,PLACE_POI/-/transit?c=14086825.1422474,3956482.9060480,15,0,0,0,dh&isCorrectAnswer=true">제주 제주시 중앙로 738-16</a></p>
								</div>
								
								<div class="col-4">
									<a href="#" class="image fit"><img src="../images/attraction/도두봉.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/13481038?c=14077926.5070562,3962926.2366126,15,0,0,0,dh&isCorrectAnswer=true">
									<h4>도두봉</h4></a>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14078392.290069621,3962926.23661259,%EB%8F%84%EB%91%90%EB%B4%89,13481038,PLACE_POI/-/transit?c=14077926.5070562,3962926.2366126,15,0,0,0,dh&isCorrectAnswer=true">제주 제주시 도두항길 4-17</a></p>
								</div>
								
								<div class="col-4">
									<a href="#" class="image fit"><img src="../images/attraction/용연계곡.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/13481072?c=14083086.8556354,3963809.9412179,15,0,0,0,dh&isCorrectAnswer=true">
									<h4>용연계곡</h4></a>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14083552.638648737,3963809.9412179254,%EC%9A%A9%EC%97%B0%EA%B3%84%EA%B3%A1,13481072,PLACE_POI/-/transit?c=14083086.8556354,3963809.9412179,15,0,0,0,dh&isCorrectAnswer=true">제주 제주시 용담1동  2581-4</a></p>
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