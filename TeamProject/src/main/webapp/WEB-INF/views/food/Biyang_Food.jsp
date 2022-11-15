<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>비양도 맛집</title>
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
					<a href= "../food/Food_Map" id="logo">비 양 도</a>
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
									<a  class="image fit"><img src="../images/food/호돌이식당.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/32628262?c=14051880.406438041,3949378.6519270055,13,0,0,0,dh"><strong>호돌이식당</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14051880.40674645,3949378.6554824077,%ED%98%B8%EB%8F%8C%EC%9D%B4%EC%8B%9D%EB%8B%B9,32628262,PLACE_POI/-/transit?c=14051880.4064380,3949378.6519270,13,0,0,0,dh">제주 제주시 한림읍 비양도길 284</a></p>
								</div>
								
								<div class="col-4">
									<a  class="image fit"><img src="../images/food/민경이네식당.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/38291021?c=14051978.3345025,3949377.6820205,13,0,0,0,dh&placePath=%2Fhome"><strong>민경이네식당</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14051978.3345025,3949377.682020504,%EB%AF%BC%EA%B2%BD%EC%9D%B4%EB%84%A4%EC%8B%9D%EB%8B%B9,38291021,PLACE_POI/-/transit?c=14050115.1819377,3949377.6820206,13,0,0,0,dh">제주 제주시 한림읍 비양도길 275</a></p>
								</div>
								
								<div class="col-4">
									<a  class="image fit"><img src="../images/food/까페섬.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/1619315430?c=14051666.0054072,3949228.1165718,13,0,0,0,dh&placePath=%2Fhome"><strong>CAFE 섬</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14051666.00540718,3949228.116571773,%EC%84%AC,1619315430,PLACE_POI/-/transit?c=14049802.8528426,3949228.1165716,13,0,0,0,dh">제주 제주시 한림읍 비양도길 32-5</a></p>
								</div>
								
								<div class="col-4">
									<a  class="image fit"><img src="../images/food/쉼그대머물다.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/1001143964?c=14051994.7986552,3949412.9667329,13,0,0,0,dh&placePath=%2Fhome"><strong>쉼그대머물다</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14051994.798655186,3949412.966732947,%EC%89%BC%EA%B7%B8%EB%8C%80%EB%A8%B8%EB%AC%BC%EB%8B%A4,1001143964,PLACE_POI/-/transit?c=14050131.6460903,3949412.9667333,13,0,0,0,dh">제주 제주시 한림읍 비양도길 274-2</a></p>
								</div>
								
								<div class="col-4">
									<a  class="image fit"><img src="../images/food/고사리2020식당.jpg"
										alt="" /></a>
								</div>
								<div class="col-8">
									<h4><a href="https://map.naver.com/v5/entry/place/1813331069?c=14051805.6891042,3949372.4146596,13,0,0,0,dh&placePath=%2Fhome&entry=plt"><strong>고사리2020식당</strong></a></h4>
									<p align="center"><a href="https://map.naver.com/v5/directions/-/14051805.689104225,3949372.4146595728,%EA%B3%A0%EC%82%AC%EB%A6%AC2020%EC%8B%9D%EB%8B%B9,1813331069,PLACE_POI/-/transit?c=14049942.5365401,3949372.4146599,13,0,0,0,dh&entry=plt">제주 제주시 한림읍 비양도길 10-6</a></p>
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