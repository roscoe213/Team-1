
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>게시글 보기</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<noscript><link rel="stylesheet" href="../assets/css/noscript.css" /></noscript>
	</head>
	<body class="right-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="/board/list" id="logo">게시글</a></h1>
							</header>
						</div>

			<%@include file="../include/nav.jsp"%>		

			<!-- Main -->
				<div class="wrapper style1" >

					<div class="container">
						<div class="row gtr-200">
							<div class="col-8 col-12-mobile" id="content">
								<article id="main">
									<header>
										
										
										<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header" style="margin-top: 30px;">게시글 작성</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-header bg-primary text-white">　</div>
      <div class="card-body">

          <div class="form-group">
            <label>번호</label>
            <input class="form-control" value="${board.bno }" readonly="readonly"><!-- 읽기만 가능 readonly속성 -->
          </div>
          <br>
          <div class="form-group">
            <label>제목</label>
            <input class="form-control" value="${board.title }" readonly="readonly" style="width:850px;height:40px;font-size:20px;">
          </div>
			<br>
          <div class="form-group">
            <label>내용</label>
            <textarea class="form-control" rows="10" style="width:850px;height:350px;font-size:25px;resize: none;" readonly="readonly">${board.content } </textarea>
          </div>
			<br>
          <div class="form-group" style="display: inline;">
            <label>작성자</label>
            <input class="form-control" value="${board.writer }" readonly="readonly">
          </div>
          <form name="readForm" role="form" method="post">
			<span style="display: inline;">파일 목록</span>
				<div class="form-group" style="border: 1px solid #dbdbdb; display: inline;" >
					<c:forEach var="file" items="${file}">
						<a href="#" onclick="fn_fileDown('${file.FILE_NO}'); return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)<br>
					</c:forEach>
				</div>
			</form>
          <!-- 페이징 -->
          <!-- 9. 목록으로 이동시 pageNum과 count값을 넘김 -->
          <!-- 10. 변경을 클릭시 pageNum과 count값을 넘김 -->
        <c:choose>
				<c:when test="${sessionScope.user_email == null || board.writer != sessionScope.user_nick }">
         	 			<button type="button" id="list_btn" class="btn btn-dark" style="float: right;">목록</button>
         		 </c:when>
          <c:otherwise>
        	  <button type="button" id="modify_btn" class="btn btn-primary" style="float: right; margin-left: 20px;" >수정</button>
          	<button type="button" id="list_btn" class="btn btn-dark" style="float: right;" >목록</button>
        	  
          </c:otherwise>
          
        </c:choose>
			
 

      </div>
      <!--  end card-body -->
    </div>
    <!--  end card-body -->
  </div>
  <!-- end card -->
</div>
<!-- /.row -->
									</header>
								</article>
							</div>
							
							
							<div class="col-4 col-12-mobile" id="sidebar">
								<br>
								<br>						
									<header>
										<h3><a href="#">조회수 Top5 게시물</a></h3>
									</header>
								<c:forEach var="articles" items="${top_list }">
									
								<section>
									<div class="row gtr-100">
										<div class="col-4">
											<a href="#" class="image fit" style="margin-bottom: 50px;"><img src="${pageContext.request.contextPath}/images/food/해조네.jpg" alt="" /></a>
										</div>
										<div class="col-8">											
											<p style="margin-bottom: 3px;">
												<font size="4"><a href="content?num=${articles.bno }">${articles.title }</a></font>
											</p>
											<h8>${articles.writer }</h8>
										</div>
									</div>
								</section>
								</c:forEach>
									
							</div>
						</div>
						
						<hr />
						
					</div>

				</div>
				<form id="infoForm" action="modify" method="get">
					<input type="hidden" id="bno" name="num" value='<c:out value="${board.bno}"/>'>
					<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
					<input type="hidden" name="count" value='<c:out value="${cri.count}"/>'>	
					<input type="hidden" name="type" value="${cri.type }">
					<input type="hidden" name="keyword" value="${cri.keyword }">	
				</form>
			
			
<script src="../assets/js/jquery.min.js"></script>			
	
<script>
	var form = $("#infoForm");
	
	$("#list_btn").on("click", function(e){
		form.find("#bno").remove();
		form.attr("action", "/board/list");
		form.submit();
	});
	
	$("#modify_btn").on("click", function(e){
		form.attr("action", "/board/modify");
		form.submit();
	});	
</script>		
				





<%@include file="../include/footer.jsp"%>