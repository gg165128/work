<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<c:set var="contextPath" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/login.css">
<link rel="stylesheet" href="resources/js/login.js">
<script type="text/javascript"
	src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.3.js"
	charset="utf-8"></script>

<c:if test='${not empty message }'>
	<script>
		window.onload = function() {
			result();
		}

		function result() {
			alert("아이디나 비밀번호가 틀립니다. 다시 로그인해주세요");
		}
	</script>
</c:if>
<title>로그인</title>

</head>

<body>
	<section>
		<div class="title">
			<h1>
				<b>로그인</b>
			</h1>
		</div>
		<div class="abc">
			<form class="form-signin" method="post">
				<div class="login-box">
					<div class="login-id">
						<input type="text" class="login-text-box" name="user_id"
							placeholder="아이디" required>
					</div>
					<div class="login-pw">
						<input type="password" class="login-text-box" name="user_pw"
							placeholder="비밀번호" required>
						<p class="checks" id="checks">${findpw_checkf}</p>
					</div>
					<div class="href">
						<a href="${contextPath}/findID.do" class="hover">아이디 찾기</a> <a
							href="${contextPath}/findPW.do" class="hover">비밀번호 찾기</a> <a
							href="${contextPath}/signupForm.do" class="hover">회원가입</a>
					</div>
					<div class="urls">
						<div class="kakao">
							<button type="button" class="kakao-btn">
								<img src="resources/img/kakao.png">
							</button>
						</div>
						<div class="naver">
							<button type="button" class="naver-btn">
								<img src="resources/img/naver.png">
							</button>
						</div>
						<div class="google">
							<button type="button" class="google-btn">
								<img src="resources/img/google.png">
							</button>
						</div>
						<div id="naver_id_login"></div>
							<a id="naverLogin" href="#">
								<img src="resources/img/naver_btn.png">
							</a>
						
						<script type="text/javascript">
							var naver_id_login = new naver_id_login(
									"b2c5qmLbPpI1RRzHvnOE", "http://localhost:8080/tibet/main.do");
							var state = naver_id_login.getUniqState();
							naver_id_login.setButton("white", 2, 40);
							naver_id_login.setDomain("http://localhost:8080/tibet/login.do");
							naver_id_login.setState(state);
							naver_id_login.setPopup();
							naver_id_login.init_naver_id_login();
							naver_id_login.init_naver_id_logout();
						</script>
					</div>
				</div>
				<br> <br>

				<div class="login">
					<input type="submit" class="login-btn" value="로그인">
				</div>
			</form>
		</div>
	</section>
	<script type="text/javascript">
  var naver_id_login = new naver_id_login("YOUR_CLIENT_ID", "YOUR_CALLBACK_URL");
  // 접근 토큰 값 출력
  alert(naver_id_login.oauthParams.access_token);
  // 네이버 사용자 프로필 조회
  naver_id_login.get_naver_userprofile("naverSignInCallback()");
  // 네이버 사용자 프로필 조회 이후 프로필 정보를 처리할 callback function
  function naverSignInCallback() {
    alert(naver_id_login.getProfileData('email'));
    alert(naver_id_login.getProfileData('nickname'));
    alert(naver_id_login.getProfileData('age'));
  }
  #(document).on("click","#naverLogin",function() {
	  var btnNaverLogin=document.getElementById("naver_id_login").firstChild;
	  btnNaverLogin.click();
  })
</script>
</body>
</html>