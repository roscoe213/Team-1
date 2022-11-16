<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>게시글 등록</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="../assets/css/noscript.css" />
</noscript>
</head>
<body class="right-sidebar is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">

			<!-- Inner -->
			<div class="inner">
				<header>
					<h1>
						<a href="/board/list" id="logo">게시글 지도</a>
					</h1>
				</header>
			</div>
			<%@include file="../include/nav.jsp"%>
			
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3328.4949829609072!2d126.30807571557212!3d33.46246155602527!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x350cf5aba36ac7ff%3A0x98b5b3b3ab7e1313!2z64aA66eo!5e0!3m2!1sko!2skr!4v1668592474145!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
			
</body>
<%@include file="../include/footer.jsp"%>
</html>