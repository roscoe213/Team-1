
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  
    
<!DOCTYPE html>
<html>
	<head>
		<title>게시판</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

  
  
</head>
	<body class="right-sidebar is-preload">
		<div id="page-wrapper">

			<!-- Header -->
				<div id="header">


					<!-- Inner -->
					<div class="inner">
							<header>
								<h1><a href="/board/list" id="logo">게시판</a></h1>
							</header>
					</div>

			<%@include file="../include/nav.jsp"%>		

			<!-- Main -->
		<div class="wrapper style1">
			<div class="container">
				
					
						
						<br>
                    <%--페이징 : register.jsp의 취소 버튼을 사용시 동작하게 설정 --%>
                 	   <br>
				
			
			
						<div class="row gtr-200">
						
							<div class="col-8 col-12-mobile" id="content">
							
								<article id="main">
									<header>
										<h2 align="center"><a href="#">제주 여행지 공유 공간</a></h2>
					<c:choose>
							<c:when test="${sessionScope.user_email == null }">
                 					<button type="button" class="btn btn-primary btn-sm float-right col-1" style="float: right; margin-right: 20px;" onclick="regiCheck()">등록</button>
                 			</c:when>
                 			<c:otherwise>
                 	 				<button type="button" class="btn btn-primary btn-sm float-right col-1" style="float: right; margin-right: 20px;" onclick="location.href='register?pageNum=${pageMaker.cri.pageNum}&count=${pageMaker.cri.count }'">등록</button>
                 		    </c:otherwise>
                 	</c:choose>
										<br>
										<br>
			<div class="card-body">
				<div class="table-responsive">
					<table class="table table-bordered" width="100%" cellspacing="0">
						<thead>
							<tr>
								<th>번호</th>
								<th>작성자</th>
								<th>제목</th>
								<th>작성일</th>
								<th>수정일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<c:forEach var="article" items="${board_list }">
						<tbody>
							<tr>
								<td>${article.bno }</td>
								<td>${article.writer }</td>
								<td>
									<!-- 7.조회 페이지 이동 -->
									<a class="move" href='<c:out value="${article.bno}"/>'> <c:out value="${article.title}"/></a>
								</td>
								
								<td>
									<fmt:formatDate pattern="yyyy-MM-dd hh:mm:ss" value="${article.regdate }" />
								</td>
								<td>
									<fmt:formatDate pattern="yyyy-MM-dd" value="${article.updatedate }" />
								</td>
								<td>${article.hit }</td>
								
							</tr>
						</tbody>
						</c:forEach>
					</table>
					
					
			<div class='row'>
				<div class="col-lg-12">
				<form id = 'searchForm' action="list" method='get'>
					<div class="form-group">
					<select name='type' class="col-2" style="padding-left: 0px; display: inline-block">
						<option style="text-align-last: center" value="" <c:out value="${pageMaker.cri.type == null?'selected':''}"/>>선택</option>
						<option style="text-align-last: center" value="T" <c:out value="${pageMaker.cri.type eq 'T'?'selected':''}"/>>제목</option>
						<option style="text-align-last: center" value="C" <c:out value="${pageMaker.cri.type eq 'C'?'selected':''}"/>>내용</option>
						<option style="text-align-last: center" value="W" <c:out value="${pageMaker.cri.type eq 'W'?'selected':''}"/>>작성자</option>
					</select>					
					<input type="text" class="col-8" style="display: inline-block; margin-left: 20px; margin-right: 10px" name="keyword" value="<c:out value='${pageMaker.cri.keyword}'/>"> 
					<button type="button" style="margin-left: 10px;" class='btn btn-default'>검색</button>
					</div>
				</form>
				</div>
			</div>
					
			<div class="container">
			<div class="row">
				<div class="col">
					<ul class="pagination justify-content-center" style="margin-top: 30px; ">
					<!-- 1. 이전 페이지 활성화 여부  -->
					<c:if test="${pageMaker.prev }">
						<li class="page-item"><a class="page-link" href="list?pageNum=${pageMaker.startPage -1 }">Previous</a></li>
					</c:if>
					 <!-- 2. 페이지번호 활성화 여부 -->
					 <c:forEach var="num" begin="${pageMaker.startPage }" end="${pageMaker.endPage}">
						<li class="page-item ${pageMaker.cri.pageNum == num ? 'active':'' }"><a class="page-link" href ="${num }">${num }</a></li>
					</c:forEach>
					 <!-- 3. 다음 버튼 활성화 여부 -->
					 <c:if test="${pageMaker.next }">
						<li class="page-item"><a class="page-link" href="list?pageNum=${pageMaker.endPage +1 }">Next</a></li>
					</c:if>
					</ul>
				</div>
			</div>
		</div>
							
					</header>
					</article>
					
					
					
					
				</div>
				
							<div class="col-4 col-12-mobile" id="sidebar">
								<br>
								<br>
								<br><br><br>
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
						<form id="moveForm" method="get">	
							<input type="hidden" name="pageNum" value="${pageMaker.cri.pageNum }">
							<input type="hidden" name="count" value="${pageMaker.cri.count }">
							<input type="hidden" name="keyword" value="${pageMaker.cri.keyword }">	
							<input type="hidden" name="type" value="${pageMaker.cri.type }">	
						</form>
				</div>
<script src="../assets/js/jquery.min.js"></script>

<script>

	var moveForm = $("#moveForm");
	
	$(".move").on("click", function(e){
		e.preventDefault();
		
		moveForm.append("<input type='hidden' name='num' value='"+ $(this).attr("href")+ "'>");
		moveForm.attr("action", "/board/content");
		moveForm.submit();
	});
	
	$(".page-item a").on("click", function(e){
		e.preventDefault();
		moveForm.find("input[name='pageNum']").val($(this).attr("href"));
		moveForm.attr("action", "/board/list");
		moveForm.submit();
		
	});	
	
	
	var searchForm = $('#searchForm');
	$('#searchForm button').on('click', function(e) {
		e.preventDefault();
		let type = $("#searchForm select").val();
		let keyword = $("#searchForm input[name='keyword']").val();
		
		if(!type){
			alert("검색 종류를 선택하세요.");
			return false;
		}
		
		if(!keyword){
			alert("키워드를 입력하세요.");
			return false;
		}
		
		moveForm.find("input[name='type']").val(type);
		moveForm.find("input[name='keyword']").val(keyword);
		moveForm.find("input[name='pageNum']").val("1");
		moveForm.submit();
	});

	function regiCheck(){	
				alert("로그인이 필요합니다.");
				console.log("submit clicked");
				location.href='/member/join_loginPage';
	}
</script>


		
				
<%@include file="../include/footer.jsp"%>