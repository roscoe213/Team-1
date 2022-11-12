<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 탈퇴</title>
<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="stylesheet" href="../assets/css/sb-admin-2.css" />
</head>
<body>
<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="${pageContext.request.contextPath}" id="logo">회원 탈퇴</a></h1>
							</header>
						</div>

					<%@include file="../include/nav.jsp"%>	
					
					</div>


		<div class="container">
			<div class="card o-hidden board-0 shadow-lg my-5">
				<!-- nested Row within Card Body -->
				<div class="row">
					<div class="col-lg-3"></div>
					
					<div class="col-lg-6">
						<div class="p-5">
							<div class="text-content">
								<h1 class="h4 text-gray-900 mb-4" align="center">회원 탈퇴</h1>
							</div>
							
							<!-- 자바스크립트(제이쿼리)를 사용하기 전에 input 태그의 id속성을 확인 -->
							<form action="deleteForm" method="post" id="delete">
							<div class="form-group">									
										<input type="text" class="form-control form-control-user col-8" style="margin: 20px 0 0 70px" value="${sessionScope.user_email }" readonly name="email">
																										
								</div>
								<!-- 아이디 -->
								<div class="form-group">									
										<input type="password" class="form-control form-control-user col-8" style="margin: 20px 0 0 70px" placeholder="비밀번호를 입력하세요" id="pw" name="pw">																
								</div>
								<div class="form-group">									
															
								</div>
								<div class="form-group">									
										<input type="password" class="form-control form-control-user col-8" style="margin: 20px 0 0 70px" placeholder="비밀번호 확인을 입력하세요" id="pwck" name="pwck">						
								</div>								
								<div class = "form-group">
									<input type="button" class="btn btn-primary btn-user btn-block col-4" style="margin: 20px 0 0 60px" value="탈퇴" onclick="mypage_delete()">
									<input type="button" class="btn btn-primary btn-user btn-block col-4" style="margin: 20px 0 0 10px" value="취소" onclick="location.href='myPage'">
								</div>
							</form>							
							<hr>
							<div class="text-center">
								<a class="small" href="/">메인으로</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
<script>
function mypage_delete(){	
	if($("#pw").val()==""){
		alert("비밀번호를 입력하세요");
		return;
	//	$("#myModal").modal("show");
	}else if($("#pwck").val()==""){
		alert("비밀번호 확인을 입력하세요.");
		return;
		//$("#myModal").modal("show");
	}else if($("#pwck").val()==""){
		alert("비밀번호 확인을 입력하세요.");
		return;
	}else if($("#pw").val() != $("#pwck").val()){
		alert("비밀번호를 확인하세요");
		return;
	}else {
		if(confirm("회원탈퇴하시겠습니까?")){
			$("#delete").submit();
			return;
			
		}else{
			history.go(-1)
		}
		
	}
}
</script>
<script src="../assets/js/jquery.min.js"></script>
</body>
<%@include file="../include/footer.jsp"%>
</html>