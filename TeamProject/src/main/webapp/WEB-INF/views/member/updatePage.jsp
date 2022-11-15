<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보수정</title>
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="stylesheet" href="../assets/css/sb-admin-2.css" />
		<noscript><link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/noscript.css" /></noscript>		
</head>
<body>
<div id="header">

					<!-- Inner -->
						<div class="inner">
							<header>
								<h1><a href="${pageContext.request.contextPath}" id="logo">회원정보 수정</a></h1>
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
								<h1 class="h4 text-gray-900 mb-4" align="center">회원정보 수정</h1>
							</div>
							
							<!-- 자바스크립트(제이쿼리)를 사용하기 전에 input 태그의 id속성을 확인 -->
							<form action="updateForm" method="post" id="regForm">
								<!-- 아이디 -->
								<div class="form-group">									
										<input type="text" class="form-control form-control-user" value="${sessionScope.user_email }" readonly name="email">																
								</div>								
								<div class="form-group">									
										<input type="text" class="form-control form-control-user" placeholder="${sessionScope.user_name }" readonly name="name">						
								</div>
								<div class="form-group">									
										<input type="text" class="form-control form-control-user col-8"  style="display: inline-block" placeholder="${sessionScope.user_nick }" name="nickName" id="nickName">
										<input type="button" class="btn btn-primary btn-user btn-block col-3" style="margin-left: 30px; padding-left: 25px;" onclick="nickNameCheck()" value="중복체크">						
								</div>
								<div class = "form-group">
									<input type="submit" class="btn btn-primary btn-user btn-block col-4" style="margin: 20px 0 0 50px" value="수정">
									<input type="button" class="btn btn-primary btn-user btn-block col-4" style="margin: 20px 0 0 40px" value="취소" onclick="location.href='myPage'">
								</div>
							</form>							
							<hr>
							<div class="text-center">
								<a class="small" href="/MyWeb">메인으로</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>	
<script>
function nickNameCheck() {
		
		var nickName = $("#nickName").val(); //email태그 값에 접근
		var userNickName = {"nickName":nickName};	// 전송할 데이터의 key : value 값설정
		
		if(nickName == "") {
			alert("닉네임을 입력하세요");
		} else { // 아이디 중복 체크  			
			// 먼저 ajax가 지원하는 JSON (데이터포멧)을 사용하기 위해서 라이브러리가 필요함
			// JSON 은 {키:갑}을 구조로 사용하는 데이터 묶음입니다.
			
			// ajax문법
			$.ajax({
				type : "post", 		// 요청형식
				url : "checkNickName",	// 요청할 주소
				data : userNickName,		// 서버에 전송할 테이터 json형식 {key:value}
				dataType : "text",
				// datatype : "json", // 서버에서 요청후 리턴해 주는 타입
				error : function(request, error) {
					alert(error + "\n" + request.status)
				},
				success : function(result){
					// ajax통신에 성공했을 때, 호출될 자바스크립트 함수, 결과 여부가
					// result 매개변수로 전달됨.
					console.log("성공(1) 실패(0) 여부 : " + result);
					
					
					if(result == "<Integer>1</Integer>") {	
						alert("이미 사용중인 닉네임입니다.");  
						return
					
					} else {
						alert("사용가능한 닉네임 입니다.");
						$("#nickName").attr("readonly", true);
					}
				}
			});
		}	// else가 끝나는 부분
			console.log(userNickName);
	}
</script>
<script src="../assets/js/jquery.min.js"></script>
</body>
<%@include file="../include/footer.jsp"%>
</html>