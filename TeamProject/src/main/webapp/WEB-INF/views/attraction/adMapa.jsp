<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>애월읍 관광지(1)</title>
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
					<a href= "../attraction/Attraction_Map" id="logo">게시글 지도</a>
				</h1>
			</header>
		</div>

		<%@include file="../include/nav.jsp"%>
		
		<iframe src="https://www.google.com/maps/embed?pb=!${link.link }" width="1690" height="700" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

<%@include file="../include/footer.jsp"%>