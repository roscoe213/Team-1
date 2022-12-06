
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>게시물 수정</title>
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
						<a href="../food/Food_Map" id="logo">게시물 수정</a>
					</h1>
				</header>
			</div>

			<%@include file="../include/nav.jsp"%>

			<!-- Main -->
			<div class="wrapper style1">

				<div class="container">
					<div class="row gtr-200">
						<div class="col-8 col-12-mobile" id="content"
							style="margin-left: 275px">
							<article id="main">



								<div class="row">
									<div class="col-lg-12">
										<h1 class="page-header"></h1>
									</div>
									<!-- /.col-lg-12 -->
								</div>
								<!-- /.row -->

								<div class="row">
									<div class="col-lg-12">
										<div class="card">
											<div class="card-header bg-primary text-white" align="center">

											</div>
											<div class="card-body">



												<form role="form" action="adUpdate" method="post"
													id="regForm">

													<div>
														
															<label style="margin-bottom: 1px;">고유번호</label> <input
																value="${adf.nno }" readonly class="form-control" name='nno'
																id="nno"
																style="width: 850px; height: 40px; font-size: 20px;">
														</div>
														<div>
															<label style="margin-bottom: 1px;">지역 번호</label> <input
																value="${adf.lnum }" class="form-control" name='lnum'
																id="lnum"
																style="width: 850px; height: 40px; font-size: 20px;">
														</div>
													<div>
														<label style="margin-bottom: 1px;">이름</label> <input
															value="${adf.name }" class="form-control" name="name"
															id="name"
															style="width: 850px; height: 40px; font-size: 20px;">
													</div>

													<div>
														<label style="margin-bottom: 1px;">주소</label> <input
															value="${adf.addr }" class="form-control" name="addr"
															id="addr"
															style="width: 850px; height: 40px; font-size: 20px;">
													</div>

													<div>
														<label style="margin-bottom: 1px;">링크</label> <input
															value="${adf.link }" class="form-control" name="link"
															id="link"
															style="width: 850px; height: 40px; font-size: 20px;">
													</div>

													<div>
														<label style="margin-bottom: 1px;">이미지 경로</label> <input
															value="${adf.ilink }" class="form-control" name="ilink"
															id="ilink"
															style="width: 850px; height: 40px; font-size: 20px;">
													</div>

													<div>
														<label style="margin-bottom: 1px;">구분번호</label> <input
															value="${adf.fanum }" class="form-control" name="fanum"
															id="fanum"
															style="width: 850px; height: 40px; font-size: 20px;">
													</div>


													<div class="form-group" style="margin-top: 30px;">
														<label style="display: inline;">작성자</label> <input
															class="form-control" name='writer' id='writer'
															value="${sessionScope.user_nick }" readonly
															style="display: inline; margin-right: 360px">
													</div>
													<div class="form-group" style="margin-top: 30px; margin-left: 520px">
														<button type="button" class="btn btn-primary"
															onclick="buttonCheck('adModify')">수정</button>
														<button type="button" class="btn btn-secondary"
															onclick="buttonCheck('delete')">삭제</button>
														<button type="button" class="btn btn-dark"
															onclick="buttonCheck('list')">목록</button>
													</div>
												</form>




											</div>
											<!--  end card-body -->
										</div>
										<!--  end card-body -->
									</div>
									<!-- end card -->
								</div>
								<!-- /.row -->

								<script type="text/javascript">
									function buttonCheck(e) {
										if (e == 'delete') {
											if (confirm("삭제하겠습니까?")) {
												//$("#아이디") or $(아이디)는 HTML 아이디 속성에 바로 접근
												//attr(속성, 변경할 값) 함수는 태그의 내부 속성을 변경하는 함수
												$("#regForm").attr("action",
														"delete");
												$("#regForm").submit();
												return;
											} else {
												return;
											}
										} else if (e == 'adModify') {
											if ($("#lnum").val() == "") {
												alert("지역번호는 필수입니다.");
											} else if ($("#name").val() == "") {
												alert("이름은 필수입니다.");
											} else if ($("#addr").val() == "") {
												alert("주소는 필수입니다.");
											} else if ($("#link").val() == "") {
												alert("링크주소는 필수입니다.");
											} else if ($("#fanum").val() == "") {
												alert("구분번호는 필수입니다.");
											}
											else if (confirm("수정하겠습니까?")) {
												$("#regForm").submit();

											}
										} else {
											history.go(-1);
										}
									}
								</script>
						</div>
					</div>
					<hr />

				</div>

			</div>
			<script src="../assets/js/jquery.min.js"></script>
			<%@include file="../include/footer.jsp"%>