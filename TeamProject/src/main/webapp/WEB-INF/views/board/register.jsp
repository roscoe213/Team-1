<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<title>게시글 등록</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<noscript><link rel="stylesheet" href="../assets/css/noscript.css" /></noscript>
	</head>
	<body class="no-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="/board/list" id="logo">게시글 등록</a></h1>
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
      <div class="card-header bg-primary text-white" align="center"><strong>게시글 등록</strong></div>
      <div class="card-body">



        <form role="form" action="register" method="post" id="regForm" enctype="multipart/form-data">
          <div class="form-group">
            <label style="margin-bottom: 1px;">제목</label>
            <input class="form-control" name='title' id="title" style="width:850px;height:40px;font-size:20px;">
          </div>

          <div class="form-group">
            <label style="margin-bottom: 1px; margin-top: 30px;">내용</label>
            <textarea class="form-control" rows="10" style="width:850px;height:350px;font-size:25px;resize: none;" name='content' id='content'></textarea>
          </div>
			 <!-- 파일업로드 추가부분 -->
          <div class="row">
          	<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">이미지 첨부</div>				
					<!-- /.panel-heading -->
					<div class="panel-body">
						<div class="form-group uploadDiv">
							<input type="file" name='file' value="" id="input-image" accept="image/*">				
							<img id="preview-image" src="#" alt="" class="img-thumbnail" style="margin-left: auto; margin-right: auto; display: block; box-sizing:border-box; width:550px; height:350px;">
						</div>					
						<div class='uploadResult'>
							<ul>
							</ul>
						</div>
					</div>
				</div>          	
          	</div>
          </div>
          <div class="form-group" style="margin-top: 30px;">
            <label style="display: inline;">작성자</label>
            <input class="form-control" name='writer' id='writer' value="${sessionScope.user_nick }" readonly style="display: inline; margin-right: 360px">
          
          <button type="button" class="btn btn-primary" onclick="register()">등록</button>
          <button type="button" class="btn btn-primary" onclick="location.href='list?pageNum=${cri.pageNum}&count=${cri.count }'">취소</button>
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
																						
								</article>
							</div>
							
							
							
						</div>
						
						
						<hr />
						
					</div>

				</div>
<script type="text/javascript">
  function register(){
	  //$("#아이디") or $(아이디)는 HTML의 아이디 속성에 한번에 접근
	  //val()함수는 해당 아이디에 값에 접근하여 반환
	  if( $("#title").val() == ""){
		  alert("글제목은 필수 입니다");
		  return;
	  }else{
		  $("#regForm").submit();
		  return;
	  }
  }
	function readImage(input){
		if(input.files && input.files[0]){
			//FileReader 인스턴스 생성
			const reader = new FileReader()	

			//이미지파일만 넣을 수 있도록하기

			//이미지가 로드 된 경우
			reader.onload = e => {
				const previewImage = document.getElementById("preview-image")
				previewImage.src = e.target.result
			}
			// reader가 이미지 읽도록 하기
			reader.readAsDataURL(input.files[0])
		}
	}
    // input file에 change 이벤트 부여
    const inputImage = document.getElementById("input-image")
    inputImage.addEventListener("change", e => {
    	readImage(e.target)
    })
</script>
<script src="../assets/js/jquery.min.js"></script>

<%@include file="../include/footer.jsp"%>