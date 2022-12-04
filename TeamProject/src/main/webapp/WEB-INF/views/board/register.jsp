<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>게시글 등록</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<noscript>
	<link rel="stylesheet" href="../assets/css/noscript.css" />
</noscript>
</head>
<body class="no-sidebar is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">

			<!-- Inner -->
			<div class="inner">
				<header>
					<h1>
						<a href="/board/list" id="logo">게시글 등록</a>
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
												<strong>게시글 등록</strong>
											</div>
											<div class="card-body">



												<form role="form" action="register" method="post" >
													<div class="form-group">
														<label style="margin-bottom: 1px;">제목</label> <input
															class="form-control" name='title' id="title"
															style="width: 850px; height: 40px; font-size: 20px;">
													</div>

													<div class="form-group">
														<label style="margin-bottom: 1px; margin-top: 30px;">내용</label>
														<textarea class="form-control" rows="10"
															style="width: 850px; height: 350px; font-size: 25px; resize: none;"
															name='content' id='content'></textarea>
													</div>
													<!-- 파일업로드 추가부분 -->
													<div class="row">
														<div class="col-lg-12">
															<div class="panel panel-default">
																<div class="panel-heading">File Attach</div>
																<!-- /.panel-heading -->
																<div class="panel-body">
																	<div class="form-group uploadDiv">
																		<input type="file" name='uploadFile' multiple>
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
														<label style="display: inline;">작성자</label> <input
															class="form-control" name='writer' id='writer'
															value="${sessionScope.user_nick }" readonly
															style="display: inline; margin-right: 360px">

														<button type="submit" class="btn btn-primary" >등록</button>
														<button type="button" class="btn btn-primary"
															onclick="location.href='list?pageNum=${cri.pageNum}&count=${cri.count }'">취소</button>
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
			


<script src="https://code.jquery.com/jquery-3.6.1.min.js"
		integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
		crossorigin="anonymous"></script>
	
	<script>
	
	
	var formObj = $("form[role='form']");
	
	$("button[type='submit']").on("click", function(e) {
		
		e.preventDefault();
		
		console.log("submit clicked");
		
		var str = "";
		
		$(".uploadResult ul li").each(function(i, obj) {
			
			var jobj = $(obj);
			console.dir(jobj);
			
			str += "<input type='hidden' name='attachList["+i+"].fileName' ";
			str += "value='"+jobj.data("filename")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].uuid' ";
			str += "value='"+jobj.data("uuid")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].uploadPath' ";
			str += "value='"+jobj.data("path")+"'>";
			str += "<input type='hidden' name='attachList["+i+"].fileType' ";
			str += "value='"+jobj.data("type")+"'>";
		});
		formObj.append(str).submit();
		
		
	});
	
	var regex = new RegExp("(.*?)\.(exe|sh|zip|alz)$");
	var maxSize = 5242880;
	
	function checkExtension(fileName, fileSize){
		if(fileSize >= maxSize){
			alert("파일사이즈 초과");
			return false;
		}
		if(regex.test(fileName)){
			alert("해당 종류의 파일은 업로드할 수 없습니다.");
			return false;
		}
		return true;
	}
	
	$(document).ready(function() {
		
		
		$("input[type='file']").change(function(e) {
			var formData = new FormData();
			var inputFile = $("input[name='uploadFile']");
			var files = inputFile[0].files;
			console.log(files);
			for (var i = 0; i < files.length; i++) {
				
				if(!checkExtension(files[i].name, files[i].size) ){
					return false;
				}
				formData.append("uploadFile", files[i]);
			}

			$.ajax({
				url : '/uploadAjaxAction',
				processData : false,
				contentType : false,
				data : formData,
				type : "POST",
				dataType : "json",
				success : function(result) {
					console.log(result);
					showUploadResult(result);
				}
			});
		});
	});
	

	function showUploadResult(uploadResultArr) {
		if(!uploadResultArr || uploadResultArr.length == 0){ return; }
		var uploadUL = $(".uploadResult ul");
		var str = "";
		
		$(uploadResultArr).each(function(i, obj){
			if(obj.image){
				
				var fileCallPath = encodeURIComponent(obj.uploadPath+ "/s_" + obj.uuid+"_"+obj.fileName);
				str += "<li data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"'";
				str += " data-filename='"+obj.fileName+"' data-type='"+obj.image+"'><div>";
				str += "<span>"+obj.fileName+"</span>";
				str += "<button type='button' data-file=\'"+ fileCallPath+"\' data-type='image' class='btn btn-warning btn-circle'>";
				str += "<i class='fa fa-times'></i></button><br>";
				str += "<img src='/display?fileName="+fileCallPath+"'></div></li>";
			} else {
				var fileCallPath = encodeURIComponent(obj.uploadPath+"/"+obj.uuid+"_"+obj.fileName);
				var fileLink = fileCallPath.replace(new RegExp(/\\/g), "/");
				str += "<li data-path='"+obj.uploadPath+"' data-uuid='"+obj.uuid+"'";
				str += " data-filename='"+obj.fileName+"' data-type='"+obj.image+"'><div>";
				str += "<span>"+obj.fileName+"</span>";
				str += "<button type='button' data-file=\'"+ fileCallPath+"\' data-type='file' class='btn btn-warning btn-circle'>";
				str += "<i class='fa fa-times'></i></button><br>";
				str += "<img src='../img/attach.png'></a></div></li>";
			}
		});
		uploadUL.append(str);
	}
	
			$(".uploadResult").on("click", "button", function(e) {
				console.log("delete file");
			
				var targetFile = $(this).data("file");
				var type = $(this).data("type");
				
				var targetLi = $(this).closest("li");
				
				console.log(targetFile);
				
				$.ajax({
					url: '/deleteFile',
					data: {fileName: targetFile, type:type},
					dataType: 'text',
					type : "POST",
					success : function(result) {
						alert(result);
						targetLi.remove();
					}
				
				});	//$.ajax
			});	
	
	
</script>

	
		
	

			<%@include file="../include/footer.jsp"%>