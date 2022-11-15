
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



        <form role="form" action="update?pageNum=${cri.pageNum}&count=${cri.count }" method="post" id="regForm">
          
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
            <button type="button" class="btn btn-primary" onclick="buttonCheck('modify')">수정</button>
            <button type="button" class="btn btn-secondary" onclick="buttonCheck('delete')">삭제</button>
            <button type="button" class="btn btn-dark" onclick="buttonCheck('list')">목록</button>
          </div>
          
          
          <!-- 12. 목록으로 이동시 pageNum과 count값을 전달 -->
          <%--
          <button type="submit" class="btn btn-primary">변경</button>
          <button type="button" class="btn btn-secondary" onclick="location.href='delete?num=${board.bno}'">삭제</button>
          <button type="button" class="btn btn-dark" onclick="location.href='list?pageNum=${cri.pageNum}&count=${cri.count }'">목록</button>
           --%>
          <!-- 자바스크립트 페이징 처리 -->
          
          
          
          <input type="hidden" name="pageNum" value="${cri.pageNum }">
          <input type="hidden" name="count" value="${cri.count }">
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
	function buttonCheck(e){
		if(e=='delete'){
			if(confirm("삭제하겠습니까?")){
				//$("#아이디") or $(아이디)는 HTML 아이디 속성에 바로 접근
				//attr(속성, 변경할 값) 함수는 태그의 내부 속성을 변경하는 함수
				$("#regForm").attr("action","delete");
				$("#regForm").submit();
				return;
			}else{
				return;
			}
		}else if(e=='modify'){
			if($("#title").val()==""){
				alert("제목과 내용은 필수입니다.");
			}else if($("#writer").val()==""){
				alert("작성자는 필수입니다.");
			}else if(confirm("수정하겠습니까?")){
				$("#regForm").submit();
				
			}
		}else{
			$("#regForm").attr("action","list");
			$("#regForm").submit();
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