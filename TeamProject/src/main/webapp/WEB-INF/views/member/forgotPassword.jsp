<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
<title>비밀번호 찾기</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/sb-admin-2.css" />
<noscript>
	<link rel="stylesheet"
		href="${pageContext.request.contextPath}/assets/css/noscript.css" />
</noscript>
</head>
<body>
	<div id="header">

		<!-- Inner -->
		<div class="inner">
			<header>
				<h1 id="logo">비밀번호 변경</h1>
			</header>
		</div>

		<%@include file="../include/nav.jsp"%>

	</div>

	<script type="text/javascript">
		var msg = "${msg}";

		if (msg != "") {
			alert(msg);
		}
	</script>
	<div class="container">
		<div class="card o-hidden board-0 shadow-lg my-5">
			<!-- nested Row within Card Body -->
			<div class="row" align="center">
				<div class="col-lg-3"></div>

				<div class="col-lg-6">
					<div class="p-5">
						<div class="text-content">
							<h1 class="h4 text-gray-900 mb-4" align="center">비밀번호 찾기</h1>
							<p class="mb-4">임시비밀번호를 받으실 이메일을 입력해주세요!</p>
						</div>
						<form action="gofindPwForm" method="post" id = "gofindPwForm">
							<div class="form-group">
								<input type="email" class="form-control form-control-user col-8"
									style="margin: 20px 0 0 70px" id="email" name="email"
									placeholder="이메일을 입력하세요">
							</div>
							
                                        <button type="button" class="btn btn-primary btn-user btn-block" onclick="searchCheck()">
                                            이메일로 인증코드 전송
                                        </button>
                                        
                                        <input type="text" placeholder="인증번호 입력" id="authNum" name = "authNum">
                                        
                                        <input type="button" class="button" value="비밀번호 변경" onclick="passwordCheck()">
                                    
							<div class="form-group">
								<input type="submit"
									class="btn btn-primary btn-user btn-block col-4"
									style="margin: 20px 0 0 60px" value="확인"> <input
									type="button" class="btn btn-primary btn-user btn-block col-4"
									style="margin: 20px 0 0 10px" value="취소"
									onclick="location.href='join_loginPage'">
							</div>
						</form>
						<hr>
						<div class="text-center">
							<a class="small" href="/">메인페이지</a>
						</div>
						<script src="../assets/js/jquery.min.js"></script>
           <script>
           	function searchCheck(){
           		var email = $("#email").val();
           		
           		if(email == ""){
           			alert("이메일을 입력하세요!");
           			$("#email").focus();
           			return false; 
           		}else
           			alert(email+"이 맞습니까?");
           		$.ajax({
        			
        			type:"GET",
        			url:"mailCheck?email=" + email,
        			success:function(data){
        				alert("이메일을 확인해주세요")
        				auth_code = data;
        			}
        	});
           			
           	}
           	
           	function passwordCheck(){
           		if($('#authNum').val()==""){
        			alert("인증번호를 입력해 주세요.");
        			return;
        		}else if($('#authNum').val()!=auth_code){
        			alert("인증번호를 제대로 입력해 주세요.");
        			return;
        		} else {			
        			alert("인증번호 입력 완료");
        			$("#gofindPwForm").submit();
        			return;
        		}
           	}
           </script>                         
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
<%@include file="../include/footer.jsp"%>
