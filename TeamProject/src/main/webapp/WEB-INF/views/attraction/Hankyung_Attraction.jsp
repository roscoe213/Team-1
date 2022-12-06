<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>한경면 관광지(8)</title>
<meta charset="utf-8" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
	<link rel="stylesheet"
	href="../assets/css/page.css" />
</head>
<body class="no-sidebar is-preload">


	<!-- Header -->
	<div id="header">

		<!-- Inner -->
		<div class="inner">
			<header>
				<h1>
					<a href= "../attraction/Attraction_Map" id="logo">한 경 면</a>
				</h1>
			</header>
		</div>

		<%@include file="../include/nav.jsp"%>

		<!-- Main -->
		<div class="wrapper style1">
			<div class="container">
				<article id="main" class="special">
					<div class="col-8 col-12-mobile" id="content">
						<section>
							<hr size="50" style="top: 30px; margin-bottom: 30px">
							<c:choose>
								<c:when test="${sessionScope.user_admin == 1}">
									<button type="button"
										style="margin-top: 30px; margin-left: 1200px"
										class='btn btn-default'
										onclick="location.href='/admin/adRegister'">게시물 등록</button>
								</c:when>
							</c:choose>
							<div class="row gtr-50" style="align-items: center">
								<c:forEach var="admin" items="${fa_list }">
									<c:choose>
										<c:when test="${admin.lnum == 8 && admin.fanum == 1}">
											<div class="col-4">
												<a class="image fit"><img src="${admin.ilink }" alt="" /></a>
											</div>
											<div class="col-8">
												<h4>
													<a href="adMapf?num=${admin.nno}"><strong>${admin.name }</strong></a>
												</h4>
												<p align="center">
													<a href="adMapf?num=${admin.nno}">${admin.addr }</a>
												</p>
												<c:choose>
											<c:when test="${sessionScope.user_admin == 1}">
											<button type="button" class="btn btn-default" onclick="location.href='/admin/adModify?num=${admin.nno}'"style="margin-bottom: 50px">수정</button>
										    </c:when>
										    </c:choose>
											</div>
										</c:when>
									</c:choose>
								</c:forEach>
								</div>
								<div class="page_wrap">
									<div class="page_nation">
											<!-- 1. 이전 페이지 활성화 여부  -->
											<c:if test="${adpageMaker.prev }">
												<a class="arrow prev"
													href="Hankyung_Attraction?pageNum=${adpageMaker.adStartPage -1 }">Previous</a>
											</c:if>
											<!-- 2. 페이지번호 활성화 여부 -->
											<c:forEach var="num" begin="${adpageMaker.adStartPage }"
												end="${adpageMaker.adEndPage}">
												<a class="${adpageMaker.adcri.pageNum == num ? 'active':'' }" href="Hankyung_Attraction?num1=8&count_oracle=${adpageMaker.adcri.count_oracle}&adpageStart=${adpageMaker.adcri.adpageStart}&pageNum=${num }">${num }</a>
											</c:forEach>
											<!-- 3. 다음 버튼 활성화 여부 -->
											<c:if test="${adpageMaker.next }">
												<a class="arrow next"
													href="Hankyung_Attraction?pageNum=${adpageMaker.adEndPage +1 }">Next</a>
											</c:if>
										
									</div>
								</div>
							
						</section>
					</div>
				</article>
			</div>
		</div>
	</div>

	<%@include file="../include/footer.jsp"%>