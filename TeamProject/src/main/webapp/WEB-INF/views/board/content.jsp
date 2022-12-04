<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>게시글 보기</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/sb-admin-2.min.css" />
<link rel="stylesheet" href="../assets/css/reply.css" />
<script src="../assets/js/jquery.min.js"></script>
<script src="../assets/js/bootstrap.bundle.min.js"></script>

</head>
<body class="right-sidebar is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<div id="header">

			<!-- Inner -->
			<div class="inner">
				<header>
					<h1>
						<a href="/board/list" id="logo">게시글</a>
					</h1>
				</header>
			</div>

			<%@include file="../include/nav.jsp"%>
		</div>
	</div>

	<!-- Main -->
	<div class="wrapper style1">

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
										<div class="card-header bg-primary text-white"></div>
										<div class="card-body">

											<div class="form-group">
												<label>번호</label> <input class="form-control" value="${board.bno }" readonly="readonly">
												<!-- 읽기만 가능 readonly속성 -->
											</div>
											<br>
											<div class="form-group">
												<label>제목</label> <input class="form-control" value="${board.title }" readonly="readonly" style="height: 40px; font-size: 20px;">
											</div>
											<br>
											<div class="form-group">
												<label>내용</label>
												<textarea class="form-control" rows="10" style="height: 350px; font-size: 25px; resize: none;" readonly="readonly">${board.content } </textarea>
											</div>
											<br>
											<div class="form-group" style="display: inline;">
												<label>작성자</label> <input class="form-control" value="${board.writer }" readonly="readonly">
											</div>
											<form name="readForm" role="form" method="post">
												<span style="display: inline;">파일 목록</span>
												<div class="form-group" style="border: 1px solid #dbdbdb; display: inline;">
													<c:forEach var="file" items="${file}">
														<a href="#" onclick="fn_fileDown('${file.FILE_NO}'); return false;">${file.ORG_FILE_NAME}</a>(${file.FILE_SIZE}kb)<br>
													</c:forEach>
												</div>
											</form>
											<!-- 페이징 -->
											<!-- 9. 목록으로 이동시 pageNum과 count값을 넘김 -->
											<!-- 10. 변경을 클릭시 pageNum과 count값을 넘김 -->
											<c:choose>
												<c:when test="${sessionScope.user_email != null || board.writer == sessionScope.user_nick || sessionScope.user_admin==1}">
													<button type="button" class="btn btn-primary" style="float: right; margin-left: 20px;" onclick="location.href='modify?num=${board.bno}&pageNum=${cri.pageNum}&count=${cri.count }'">수정</button>
													<button type="button" class="btn btn-dark" style="float: right;" onclick="location.href='list?pageNum=${cri.pageNum}&count=${cri.count }'">목록</button>

												</c:when>
												<c:otherwise>
													<button type="button" class="btn btn-dark" style="float: right;" onclick="location.href='list?pageNum=${cri.pageNum}&count=${cri.count }'">목록</button>

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
					<br> <br>
					<header>
						<h3>
							<a href="#">조회수 Top5 게시물</a>
						</h3>
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
			<!-- 댓글등록 -->
			<div class="row">
				<div class="col-lg-12">
					<div class="panel panel-default">
						<div class="panel-heading">
							<i class="fa fa-comment fa-fw"></i> Reply
							<c:choose>
								<c:when test="${sessionScope.user_email == null }">
									<button id="addReplyBtn" class="btn btn-primary btn-sm pull-right" onclick="replyCheck()">New Reply</button>
								</c:when>
								<c:otherwise>
									<button id="addReplyBtn" class="btn btn-primary btn-sm pull-right">New Reply</button>
								</c:otherwise>
							</c:choose>

						</div>
						<div class="panel-body">
							<ul class="chat">
								<li class="left clearfix" data-rno='12'>
									<div>
										<div class="header">
											<strong class="primary-font">user00</strong> <small class="pull-right text-muted">2022-09-29 11:22</small>
										</div>
										<p>Good job!</p>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<!-- Modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="mymodalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">REPLY MODAL</h4>
						</div>
						<div class="modal-body">
							<div class="form-group">
								<label>Reply</label> <input class="form-control" name="reply">
							</div>
							<div class="form-group">
								<label>Replyer</label> <input class="form-control" name="replyer" id="replyer" value="${sessionScope.user_nick }" readonly>
							</div>


							<div class="form-group">
								<label>Reply Date</label> <input class="form-control" name="replyDate" value="">
							</div>
						</div>
						<div class="modal-footer">
							<button id="modalModifyBtn" type="button" class="btn btn-warning">Modify</button>
							<button id="modalRemoveBtn" type="button" class="btn btn-danger">Remove</button>
							<button id="modalRegisterBtn" type="button" class="btn btn-primary">Register</button>
							<button id="modalCloseBtn" type="button" class="btn btn-default">Close</button>
						</div>
					</div>
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
				
	<script src="../assets/js/reply.js"></script>

	<script>
		function replyCheck() {
			alert("로그인이 필요한 서비스입니다.");
			location.href = '/member/join_loginPage';
		}
	</script>

	<script>
	    $(document).ready(function() {
	        var bnoValue = '<c:out value="${board.bno}"/>';
	        var replyUL = $(".chat");
	        showList(1); // 1은 페이지 번호입니다.
	
	        function showList(page) {
	            replyService.getList({
	                    bno: bnoValue,
	                    Page: page || 1
	                },
	                function(list) {
	                    var str = "";
	                    if (list == null || list.length == 0) {
	                        replyUL.html("")
	                        return;
	                    }
	                    for (var i = 0, len = list.length || 0; i < len; i++) {
	                        str += "<li class='left clearfix' data-rno='" + list[i].rno + "'>";
	                        str += "<div><div class='header'><strong class='primary-font'>" + list[i].replyer + "</strong>";
	                        str += "<small class='pull-right text-muted'>" + replyService.displayTime(list[i].replyDate) + "</small>";
	                        str += "	<p>" + list[i].reply + "</p></div></li>";
	                    }
	                    replyUL.html(str);
	                }); //end function
	        } //end showList
	
	        // 모달창 이벤트 처리 : 새로운 댓글 추가 버튼 이벤트 처리
	        var modal = $(".modal");
	        var modalInputReply = modal.find("input[name='reply']");
	        var modalInputReplyer = modal.find("input[name='replyer']");
	        var modalInputReplyDate = modal.find("input[name='replyDate']");
			
	        var modalModifyBtn = $("#modalModifyBtn");
	        var modalRemoveBtn = $("#modalRemoveBtn");
	        var modalRegisterBtn = $("#modalRegisterBtn");
	        var modalCloseBtn = $("#modalCloseBtn");
	
	        // 새 댓글 등록하기 모달 창
	        $("#addReplyBtn").on("click",function(e) {
				modal.find("input[name='reply']").val("");
	            modal.find("input[name='replyer']").val("${sessionScope.user_nick}");
	          	modalInputReplyDate.closest("div").hide();
	            modal.find("button[id != 'modalCloseBtn']").hide();
				modalRegisterBtn.show();
				$("#myModal").modal("show");
			});
	
	        //등록 버튼 동작
	        modalRegisterBtn.on("click", function(e) {
	
	            var reply = {
	                reply: modalInputReply.val(),
	                replyer: modalInputReplyer.val(),
	                replyDate: modalInputReplyDate.val(),
	                bno: bnoValue
	            };
	
	            replyService.add(reply, function(result) {
	                alert(result);
	
	                modal.find("input").val();
	                modal.modal("hide");
	
	                showList(1);
	
	            });
	        });
	        // 취소 버튼 동작
	        modalCloseBtn.on("click", function(e) {
	            modal.modal('hide');
	        });
	
	        // 댓글 클릭 이벤트
	        $(".chat").on("click","li",function(e) {
	        	var rno = $(this).data("rno");
	        	var nick = "<%=(String) session.getAttribute("user_nick")%>";
	
	            replyService.get(rno, function(reply) {
	
	            modalInputReply.val(reply.reply);
	            modalInputReplyer.val(reply.replyer);
	            modalInputReplyDate.val(replyService.displayTime(reply.replyDate)).attr("readonly","readonly");
	
	            modal.data("rno",reply.rno);
	            if(nick!=null){
	            	if(${sessionScope.user_admin==1} || nick == reply.replyer){
	            modal.find("button[id != 'modalCloseBtn']").hide();
	            	
	                	modalModifyBtn.show();
	                    modalRemoveBtn.show();
	            
	            	$("#myModal").modal("show");
	            	}
				}
	            });
	         });
	
	        // 댓글 수정 버튼
	        modalModifyBtn.on("click", function(e) {
	
	            var reply = {
	                rno: modal.data("rno"),
	                reply: modalInputReply.val()
	            };
	
	            replyService.update(reply, function(result) {
	
	                alert(result);
	                modal.modal("hide");
	                showList(1);
	
	            });
	
	        });
	
	        // 댓글 삭제 버튼 
	        modalRemoveBtn.on("click", function(e) {
	            var rno = modal.data("rno");
	            replyService.remove(rno, function(result) {
	                alert(result);
	                modal.modal("hide");
	                showList(1);
	            });
	
	        });
	    }); 
	</script>
	<%@include file="../include/footer.jsp"%>
</body>
</html>
