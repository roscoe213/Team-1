<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 회원가입</title>
		<link rel="stylesheet" href="../assets/css/joinPage.css" />
		<link rel="stylesheet" href="../assets/css/sb-admin-2.css" />
		
	</head>
	<body>
	
<div class="login-wrap">
  <div class="login-html">      
    <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">로그인</label>
    <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">회원가입</label>
    <div class="login-form">
    <form action="loginForm" method="post" id="loginRegForm">
      <div class="sign-in-htm">
        <div class="group">
          <label for="user" class="label">이메일</label>
          <input name ="email" id="email" type="text" class="input">
        </div>
        <div class="group">
          <label for="pass" class="label">비밀번호</label>
          <input name="pw" id="pw" type="password" class="input" data-type="password">
        </div>
        <div class="group">
          <input id="saveBtn" type="checkbox" class="check" checked>
          <label for="saveBtn"><span class="icon"></span> 아이디 저장</label>
        </div>
        <div class="group">
          <input type="button" class="button" value="로그인" onclick="loginCheck()">
        </div>
        
        <div class="hr"></div>
        <div class="foot-lnk">
          <a href="../member/forgotPassword">비밀번호을 잊으셨나요?</a><br><br>
          <label for="tab-1"><a href="/">홈으로</a> 
        </div>
      </div>
      </form>      
      <div class="sign-up-htm">
      <form action="joinForm" method="post" id="joinRegForm">
      <div class="form-group row">      
        <div class="group col-sm-8 mb-3 mb-sm-0" >        
          <label for="user" class="label">이메일</label>
          <input id="email2" type="email" name="email" class="input">
          </div>
        <div class="group col-sm-4" >
        	<label for="user" class="label">　</label>
			<input type="button" class="button" value="중복체크" onclick="emailCheck()">										
		</div>
		</div>	
        <div class="group">
          <label for="name" class="label">이름</label>
          <input id="name" type="text" name="name" placeholder="이름은 등록 후 변경이 불가능 합니다." class="input">
        </div>
        <div class="form-group row">
        <div class="group col-sm-8 mb-3 mb-sm-0">
          <label for="nickname" class="label">닉네임</label>
          <input id="nickName" type="text" name="nickName" class="input">
        </div>
        <div class="group col-sm-4" >
        	<label for="user" class="label">　</label>
			<input type="button" class="button" value="중복체크" onclick="nickNameCheck()">										
		</div>
		</div>
        <div class="group">
          <label for="pass" class="label">비밀번호</label>
          <input id="pw2" type="password" name="pw"class="input" data-type="password">
        </div>
        <div class="group">
          <label for="pass" class="label">비밀번호 확인</label>
          <input id="pwcheck" type="password" class="input" data-type="password">
        </div><br>
        <div class="group">
          <input type="button" class="button" value="회원가입" onclick="joinCheck()">
        </div>
        </form>
        <div class="hr"></div>
        <div class="foot-lnk">
          <label for="tab-1"><a href="/member/join_loginPage">이미 회원이신가요?</a><br><br>
          <label for="tab-1"><a href="/">홈으로</a>          
        </div>
      </div>
    </div>
  </div>
</div>
<script src="../assets/js/jquery.min.js"></script>
<script>
	function loginCheck(){	
		var email = $("#email").val();
		  var pw = $("#pw").val();
		  var idChk = $("#saveBtn").is(":checked");	// 체크박스가 체크되었는지를 담아준다. ( true/false 로 담긴다.)

		  if(email == ""){			// 아이디가 입력이 안된 채 로그인 버튼을 누른 경우
		    alert("이메일을 입력하새요");	// 입력하라는 메세지 출력
		    $("#email").focus();		// 아이디 인풋창에 포커스를 맞춰준다.
		    return false;		// return false를 해줘서 서버이동을 막는다.
		  }else if(pw ==""){
		    alert("패스워드를 입력하세요");
		    $("#pw").focus();
		    return false;
		  }else if(idChk){			// 아이디, 비밀번호 저장 체크박스가 체크 된 경우 (true)
		    setCookie("Cookie_mail", email, 7);	// 쿠키에 저장하는 이벤트를 호출한다. Cookie_mail 이름으로 id가 7일동안 저장		
		  }else{				// 체크가 해제 된 경우 (false)
		    deleteCookie("Cookie_mail");	// 쿠키 정보를 지우는 이벤트를 호출한다.
		  }
		  $("#loginRegForm").submit();				
		}
		
		$(function(){
			  // 쿠키값 읽어오기
			  var email = getCookie("Cookie_mail");

			  if(email){
			    $("#email").val(email);
			    $("#saveBtn").attr("checked", true);
			  }
			});
		
		function setCookie(cookieName, value, exdays){
			  var exdate = new Date();
			  exdate.setDate(exdate.getDate() + exdays);	// 쿠키 저장 기간
			  var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
			  document.cookie = cookieName + "=" + cookieValue;
			}
		
		function getCookie(cookieName) {
			  cookieName = cookieName + '=';
			  var cookieData = document.cookie;
			  var start = cookieData.indexOf(cookieName);
			  var cookieValue = '';
			  
			  if(start != -1){
			    start += cookieName.length;
			    var end = cookieData.indexOf(';', start);
			  if(end == -1)end = cookieData.length;
			  	cookieValue = cookieData.substring(start, end);
			  }
			  return unescape(cookieValue);
			}
		
		function deleteCookie(cookieName){
			  var expireDate = new Date();
			  expireDate.setDate(expireDate.getDate() - 1);
			  document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
			}
			
			
		

	function joinCheck() {	
		if (!$("#email2").attr("readonly")) {
  			alert("아이디 중복체크를 하세요.");
		} else if($("#email2").val()=="") {
			alert("이메일 입력해 주세요");
			return;
		} else if($("#name2").val()=="") {
			alert("이름을 입력해주세요");
			return;
		} else if($("#nickName2").val()=="") {
			alert("닉네임을 입력해주세요");
			return;
		} else if($("#pw2").val()=="") {
			alert("비밀번호를 입력해주세요");
			return;
		} else if($("#pwcheck").val()=="") {
			alert("비밀번호 확인을 입력해주세요");
			return;
		} else if($("#pw2").val()!=$("#pwcheck").val()) {
			alert("비밀번호가 일치하지 않습니다.");
			return; 
		} else {			
			alert("회원가입을 축하합니다");
			$("#joinRegForm").submit();
			return;
		}
	}	
function emailCheck() {
  		
  		var email = $("#email2").val(); //email태그 값에 접근
  		var userEmail = {"email":email};	// 전송할 데이터의 key : value 값설정
  		
  		if(email == "") {
  			alert("이메일을 입력하세요");
  		} else { // 아이디 중복 체크  			
  			// 먼저 ajax가 지원하는 JSON (데이터포멧)을 사용하기 위해서 라이브러리가 필요함
  			// JSON 은 {키:갑}을 구조로 사용하는 데이터 묶음입니다.
  			
  			// ajax문법
  			$.ajax({
  				type : "post", 		// 요청형식
  				url : "checkEmail",	// 요청할 주소
  				data : userEmail,		// 서버에 전송할 테이터 json형식 {key:value}
  				dataType : "text",
  				// datatype : "json", // 서버에서 요청후 리턴해 주는 타입
  				error : function(request, error) {
  					alert(error + "\n" + request.status)
  				},
  				success : function(result){
  					// ajax통신에 성공했을 때, 호출될 자바스크립트 함수, 결과 여부가
  					// result 매개변수로 전달됨.
  					console.log("성공(1) 실패(0) 여부 : " + result);
  					
  					if(result == "<Integer>1</Integer>") {	// 중복된 아이디가 존재함
  						alert("중복된 아이디가 있습니다.");  						
  					} else {
  						alert("사용가능한 아이디 입니다.");
  						$("#email2").attr("readonly", true);
  					}
  				}
  			});
  		}	// else가 끝나는 부분
  			console.log(userEmail);
  	}
  	
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
					
					if(result == "<Integer>1</Integer>") {	// 중복된 아이디가 존재함
						alert("이미 사용중인 닉네임입니다.");  						
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
	
	</body>
</html>
