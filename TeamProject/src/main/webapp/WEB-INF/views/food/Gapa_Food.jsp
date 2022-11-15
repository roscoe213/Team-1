<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>가파도 맛집</title>
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
					<a href= "../food/Food_Map" id="logo">가 파 도</a>
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
									<a  class="image fit"><img src="../images/food/해녀촌식당.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/311432070?c=14056774.0226937,3917438.3292606,13,0,0,0,dh&placePath=%2Fhome&entry=plt"><strong>해녀촌식당</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14056774.022693668,3917438.3292606045,%EA%B0%80%ED%8C%8C%EB%8F%84%ED%95%B4%EB%85%80%EC%B4%8C%EC%8B%9D%EB%8B%B9,311432070,PLACE_POI/-/transit?c=14056774.0226937,3917438.3292606,13,0,0,0,dh&entry=plt">제주 서귀포시 대정읍 가파로 76-1</a></p>
								</div>
								
								<div class="col-4">
									<a  class="image fit"><img src="../images/food/봉이네.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/1712536501?c=14056470.0202962,3918469.0480975,13,0,0,0,dh&placePath=%2Fhome"><strong>봉이네</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14056470.020296264,3918469.0480975043,%EB%B4%89%EC%9D%B4%EB%84%A4%20%ED%95%B4%EB%AC%BC%EC%A7%9C%EC%9E%A5%EC%A7%AC%EB%BD%95,1712536501,PLACE_POI/-/transit?c=14054606.8677323,3918469.0480975,13,0,0,0,dh">제주 서귀포시 대정읍 가파로 239</a></p>
								</div>
								
								<div class="col-4">
									<a  class="image fit"><img src="../images/food/용궁정식.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/1348027270?c=14056642.2649444,3917408.7268479,13,0,0,0,dh"><strong>용궁정식</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14056642.264944363,3917408.726847889,%EA%B0%80%ED%8C%8C%EB%8F%84%EC%9A%A9%EA%B6%81%EC%A0%95%EC%8B%9D,1348027270,PLACE_POI/-/transit?c=14056642.2649444,3917408.7268479,13,0,0,0,dh">제주 서귀포시 대정읍 가파리 71-2</a></p>
								</div>
								
								<div class="col-4">
									<a  class="image fit"><img src="../images/food/블랑로쉐.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/1030981622?c=14056470.020296264,3918469.0480975043,13,0,0,0,dh"><strong>블랑로쉐</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14056470.020296264,3918469.0480975043,%EB%B8%94%EB%9E%91%EB%A1%9C%EC%89%90,1030981622,PLACE_POI/-/transit?c=14054606.8677321,3918469.0480973,13,0,0,0,dh">제주 서귀포시 대정읍 가파로 239</a></p>
								</div>
								
								<div class="col-4">
									<a  class="image fit"><img src="../images/food/꼬닥꼬닥걸으멍.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/1823141807?c=14056271.3150052,3918262.4661374,13,0,0,0,dh&placePath=%2Fhome&entry=plt"><strong>꼬닥꼬닥걸으멍</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14056271.315005202,3918262.466137439,%EA%BC%AC%EB%8B%A5%EA%BC%AC%EB%8B%A5%EA%B1%B8%EC%9C%BC%EB%A9%8D,1823141807,PLACE_POI/-/transit?c=14054408.1624399,3918262.4661376,13,0,0,0,dh&entry=plt">제주 서귀포시 대정읍 가파로67번길 87</a></p>
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