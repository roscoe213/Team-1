<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>애월읍(1)</title>
<meta charset="utf-8" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/main.css" />
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body class="no-sidebar is-preload">


	<!-- Header -->
	<div id="header">

		<!-- Inner -->
		<div class="inner">
			<header>
				<h1>
					<a href="../food/Food_Map" id="logo">애 월 읍</a>
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
										<c:when test="${admin.lnum == 1 && admin.fanum == 2}">
											<div class="col-4">
												<a class="image fit"><img src="${admin.ilink }" alt="" /></a>
											</div>
											<div class="col-8" style="">
												<h4>
													<a href="adMapf?num=${admin.nno}"><strong>${admin.name }</strong></a>
												</h4>
												<p align="center">
													<a href="${admin.link }">${admin.addr }</a>
												</p>

												<c:choose>
													<c:when test="${sessionScope.user_admin == 1}">
														<button type="button" class='btn btn-default'
															onclick="location.href='/admin/adModify?num=${admin.nno}'">수정</button>
													</c:when>
												</c:choose>
											</div>
										</c:when>
									</c:choose>
								</c:forEach>
								</div>
								<div class="container">
								<div class="row">
									<div class="col">
										<ul class="pagination justify-content-center"
											style="margin-top: 30px;">
											<!-- 1. 이전 페이지 활성화 여부  -->
											<c:if test="${adpageMaker.prev }">
												<li class="page-item"><a class="page-link"
													href="Aewol_Food?pageNum=${adpageMaker.adStartPage -1 }">Previous</a></li>
											</c:if>
											<!-- 2. 페이지번호 활성화 여부 -->
											<c:forEach var="num" begin="${adpageMaker.adStartPage }"
												end="${adpageMaker.adEndPage}">
												<li
													class="page-item ${adpageMaker.adcri.pageNum == num ? 'active':'' }"><a
													class="page-link" href="Aewol_Food?num1=1&pageNum=${num }">${num }</a></li>
											</c:forEach>
											<!-- 3. 다음 버튼 활성화 여부 -->
											<c:if test="${adpageMaker.next }">
												<li class="page-item"><a class="page-link"
													href="Aewol_Food?pageNum=${adpageMaker.adEndPage +1 }">Next</a></li>
											</c:if>
										</ul>
									</div>
								</div>
							</div>
						</section>
					</div>
				</article>
			</div>
		</div>
	</div>

	<%@include file="../include/footer.jsp"%>