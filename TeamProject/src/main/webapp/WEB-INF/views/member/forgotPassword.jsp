<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		<link rel="stylesheet" href="../assets/css/sb-admin-2.css" />
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
 <div class="p-5">
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-2">비밀번호 찾기</h1>
                                        <p class="mb-4">아이디와 이메일을 입력해주세요!</p>
                                    </div>
                                    <form class="user" action="findPwForm" method="post">
                                       <div class="form-group">
                                            <input type="email" class="form-control form-control-user"
                                                id="email" name="email"
                                                placeholder="이메일을 입력하세요....">
                                        </div>
                                        <div class="form-group">
                                            <input type="text class="form-control form-control-user"
                                                id="name" name="name"
                                                placeholder="이름을 입력하세요...">
                                        </div>
                                         
                                        <button type="submit" class="btn btn-primary btn-user btn-block">
                                            Find PW
                                        </button>
                                    </form>
                                    <hr>
                                     
                                        <hr>
                                       <div class="text-center">
                                        <a class="small" href="/">메인페이지</a>
                                    </div>
                                    </div>
                                    
</body>
<%@include file="../include/footer.jsp"%>
