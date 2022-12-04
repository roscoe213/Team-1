
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>게시글 수정</title>
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
								<h1><a href="/" id="logo">게시글 수정</a></h1>
							</header>
						</div>

			<%@include file="../include/nav.jsp"%>		

			<!-- Main -->
				<div class="wrapper style1">

					<div class="container">
						<div class="row gtr-200">
							<div class="col-8 col-12-mobile" id="content" style="margin-left: 275px">
								<article id="main">
									
										
										
<div class="row">
  <div class="col-lg-12">
    <h1 class="page-header">　</h1>
  </div>
  <!-- /.col-lg-12 -->
</div>
<!-- /.row -->

<div class="row">
  <div class="col-lg-12">
    <div class="card">
      <div class="card-header bg-primary text-white" align="center"><strong>수정 페이지</strong></div>
      <div class="card-body">



        <form role="form" action="update" method="post" id="modifyForm">
          
          <div class="form-group">
            <label style="margin-bottom: 1px;">번호</label>
            <input class="form-control" name='bno' value="${board.bno }" readonly>
          </div>
          
          <div class="form-group">
            <label style="margin-bottom: 1px; margin-top: 30px;">제목</label>
            <input class="form-control" name='title' value="${board.title }" id="title" style="width:850px;height:40px;font-size:20px;">
          </div>

          <div class="form-group">
            <label style="margin-top: 30px; margin-bottom: 1px;">내용</label>
            <textarea class="form-control" rows="10" style="width:850px;height:350px;font-size:25px;resize: none;"name='content'>${board.content }</textarea>
          </div>

          <div class="form-group" style="margin-top: 30px;">
            <label style="display: inline;">작성자</label>
            <input class="form-control" style="margin-right: 230px;" name='writer' value="${board.writer }" id="writer">
            <button type="button" id="modify_btn" class="btn btn-primary" >수정</button>
            <button type="button" id="delete_btn" class="btn btn-secondary" >삭제</button>
            <button type="button" id="list_btn" class="btn btn-dark" >목록</button>
          </div>
          
          
          <!-- 12. 목록으로 이동시 pageNum과 count값을 전달 -->
          <%--
          <button type="submit" class="btn btn-primary">변경</button>
          <button type="button" class="btn btn-secondary" onclick="location.href='delete?num=${board.bno}'">삭제</button>
          <button type="button" class="btn btn-dark" onclick="location.href='list?pageNum=${cri.pageNum}&count=${cri.count }'">목록</button>
           --%>
          <!-- 자바스크립트 페이징 처리 -->
          
                  
  
        </form>
		<form id="infoForm" action="modify" method="get">
			<input type="hidden" id="bno" name="num" value='<c:out value="${board.bno}"/>'>
			<input type="hidden" name="pageNum" value='<c:out value="${cri.pageNum}"/>'>
			<input type="hidden" name="count" value='<c:out value="${cri.count}"/>'>	
			<input type="hidden" name="type" value="${cri.type }">
			<input type="hidden" name="keyword" value="${cri.keyword }">	
		</form>
			  


      </div>
      <!--  end card-body -->
    </div>
    <!--  end card-body -->
  </div>
  <!-- end card -->
</div>
<!-- /.row -->

<script src="../assets/js/jquery.min.js"></script>
<script>
	var form = $("#infoForm");		// 페이지 이동 form(리스트 페이지 이동, 조회 페이지 이동)
	var mForm = $("#modifyForm");	// 페이지 데이터 수정 from
	
	/* 목록 페이지 이동 버튼 */
	$("#list_btn").on("click", function(e){
		form.find("#bno").remove();
		form.attr("action", "/board/list");
		form.submit();
	});
	
	/* 수정 하기 버튼 */
	$("#modify_btn").on("click", function(e){
		if($("#title").val()==""){
			alert("제목과 내용은 필수입니다.");
		}else if($("#writer").val()==""){
			alert("작성자는 필수입니다.");
		}else if(confirm("수정하겠습니까?")){
			mForm.submit();
		}
	});
	
		/* 삭제 버튼 */
	$("#delete_btn").on("click", function(e){
		if(confirm("삭제하겠습니까?")){
			form.attr("action", "/board/delete");
			form.attr("method", "post");
			form.submit();
		}else{
			return;
		}
	});	
	
</script>										
									
							</div>
						</div>
						<hr />
						
					</div>

				</div>

<%@include file="../include/footer.jsp"%>