<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>중문 맛집</title>
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
					<a href= "../food/Food_Map" id="logo">중 문</a>
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
									<a href="#" class="image fit"><img src="../images/food/형제도식당.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/37293796?c=14071959.8525164,3928026.3815559,12.21,0,0,0,dh">
									<h4>형제도식당</h4></a>
									
									<p align="center">
									<a href="https://map.naver.com/v5/directions/-/14072207.011806827,3929570.2256063614,%ED%98%95%EC%A0%9C%EB%8F%84%EC%8B%9D%EB%8B%B9,37293796,PLACE_POI/-/transit?c=14071959.8525164,3928026.3815559,12.21,0,0,0,dh">제주 서귀포시 일주서로 915</a></p>
								</div>
							
							
							<div class="col-4">
									<a href="#" class="image fit"><img src="../images/food/천돈가.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/search/%EC%B2%9C%EB%8F%88%EA%B0%80/place/1707288186?c=14071959.8525164,3928026.3815559,12.21,0,0,0,dh&isCorrectAnswer=true">
									<h4>천돈가</h4></a>
									
									<p align="center">
									<a href="https://map.naver.com/v5/directions/-/14072567.597901408,3929559.975095514,%EC%B2%9C%EB%8F%88%EA%B0%80%20%EC%A4%91%EB%AC%B8%EB%B3%B8%EC%A0%90,1707288186,PLACE_POI/-/transit?c=14071959.8525164,3928026.3815559,12.21,0,0,0,dh&isCorrectAnswer=true">제주 서귀포시 일주서로 873</a></p>
								</div>
							
							
							<div class="col-4">
									<a href="#" class="image fit"><img src="../images/food/연돈.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/1142108083?c=14071379.3522954,3929766.4936411,16.75,0,0,0,dh&isCorrectAnswer=true">
									<h4>연돈</h4></a>
									
									<p align="center">
									<a href="https://map.naver.com/v5/directions/-/14071578.936107825,3929713.5606440566,%EC%97%B0%EB%8F%88,1142108083,PLACE_POI/-/transit?c=14071379.3522954,3929766.4936411,16.75,0,0,0,dh&isCorrectAnswer=true">제주 서귀포시 일주서로 968-10</a></p>
								</div>
							
							
							<div class="col-4">
									<a href="#" class="image fit"><img src="../images/food/더클리프.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/1667822207?c=14072306.7406140,3927796.7420975,16.75,0,0,0,dh&isCorrectAnswer=true">
									<h4>더클리프</h4></a>
									
									<p align="center">
									<a href="https://map.naver.com/v5/directions/-/14072445.536079753,3927796.7420974597,%EB%8D%94%ED%81%B4%EB%A6%AC%ED%94%84,1667822207,PLACE_POI/-/transit?c=14072306.7406140,3927796.7420975,16.75,0,0,0,dh&isCorrectAnswer=true">제주 서귀포시 중문관광로 154-17</a></p>
								</div>
							
							
							<div class="col-4">
									<a href="#" class="image fit"><img src="../images/food/숙성도.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<a href = "https://map.naver.com/v5/entry/place/1146342571?c=14071481.9299790,3929643.1775552,16.75,0,0,0,dh&isCorrectAnswer=true">
									<h4>숙성도</h4></a>
									
									<p align="center">
									<a href="https://map.naver.com/v5/directions/-/14071620.725444663,3929643.1775548905,%EC%88%99%EC%84%B1%EB%8F%84%20%EC%A4%91%EB%AC%B8%EC%A0%90,1146342571,PLACE_POI/-/transit?c=14071481.9299790,3929643.1775552,16.75,0,0,0,dh&isCorrectAnswer=true">제주 서귀포시 일주서로 966</a></p>
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