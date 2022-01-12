<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<%
session.getAttribute("memberInfo");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>티벳샵</title>

<link rel="stylesheet" href="resources/fontawesome/css/all.css">
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/style.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>

<script src="resources/js/jquery-3.6.0.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="/resources/js/addressapi.js"></script>
<title>Insert title here</title>
<style>
.title {
	margin: 20px 25%;
	font-size: 30px;
}

.info-rect {
	width: 40%;
	height: auto;
	background: #E5E5E5;
	margin: 0 25% 15px 25%;
	padding: 5%;
}

.form-group {
	margin-bottom: 22px;
}

.form-group .form-control {
	width: 33%;
}

.form-group label {
	position: relative;
	display: inline-block;
	width: 150px;
	top: 1px;
}

.form-group .mailsend-margin {
	margin-right: 10%;
}

.form-address {
	width: 50%;
}

#mem_address {
	width: 20%;
}

#id-info {
	font-size: 12px;
	width: auto;
}

#pwd-info {
	position: relative;
	top: 6px;
	font-size: 12px;
	width: auto;
	margin: 0;
}

.secession {
	display: flex;
	flex-wrap: nowrap;
	justify-content: flex-end;
	margin: 0 25%;
}

.buttons {
	display: flex;
	margin: 0 25%;
}

.correction-btn {
	width: 20%;
	height: 50px;
	margin-right: 5%;
	margin-left: 25%;
	border: none;
	background-color: #1e1e1e;
	border-radius: 6px;
	color: white;
	font-size: 17px;
	font-weight: bold;
	display: inline-block;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
}

.cancel-btn {
	width: 20%;
	height: 50px;
	margin-right: 13%;
	font-size: 17px;
	font-weight: 500;
	padding: 16px 4px;
	font-weight: bold;
	background-color: white;
	border: none;
	border-radius: 6px;
	border: 1px solid #C4C4C4;
	vertical-align: middle;
	cursor: pointer;
}

.secession-btn {
	width: 15%;
	height: 30px;
	align-items: center;
	text-align: center;
	background-color: #696868;
	border-radius: 6px;
	color: white;
	font-size: 12px;
	font-weight: bold;
	cursor: pointer;
}

#modal1 {
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	display: none;
	background-color: rgba(0, 0, 0, 0.4);
	z-index: 10000;
	display: none;
}

#modal2 {
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	display: none;
	background-color: rgba(0, 0, 0, 0.4);
	z-index: 10000;
	display: none;
}

#modal3 {
	position: absolute;
	top: 0%;
	left: 0%;
	width: 100%;
	height: 100%;
	display: none;
	background-color: rgba(0, 0, 0, 0.4);
	z-index: 10000;
	display: none;
}

.popup {
	position: absolute;
	left: 50%;
	top: 50%;
	width: 20%;
	height: 150px;
	background: white;
	box-shadow: 0 2px 3px 0 rgb(34 36 38/ 15%);
	transform: translateX(-50%) translateY(-50%);
	border-radius: 6px;
	box-sizing: border-box;
	transition: all 0.6s;
	z-index: 10000;
	text-align: center;
}

.popup a {
	margin-left: 575px;
}

.popup-secession {
	position: absolute;
	left: 50%;
	top: 50%;
	width: 45%;
	height: 400px;
	background: white;
	box-shadow: 0 2px 3px 0 rgba(34, 36, 38, 0.15);
	transform: translateX(-50%) translateY(-50%);
	border-radius: 6px;
	box-sizing: border-box;
	transition: all 0.6s;
	z-index: 10000;
	text-align: center;
	padding: 30px 5%;
}

.popup-head {
	font-size: 20px;
	font-weight: bold;
	margin-bottom: 20px;
}

#benefit-box {
	width: 100%;
	height: 150px;
	border: 1px solid black;
	border-radius: 6px;
	box-sizing: border-box;
	display: flex;
	align-items: center;
	margin-bottom: 30px;
	box-sizing: border-box;
}

#benefit-label1 {
	margin-right: 7%;
	display: flex;
	height: 100%;
	width: 25%;
	border-right: 1px solid black;
}

#benefit-label1 label {
	margin: auto;
}

#benefit-label2 {
	margin-right: 5%;
}

.popup-sub {
	text-align: left;
	margin-bottom: 10px;
}

.dropdown-option {
	display: flex;
	margin-bottom: 40px;
}

.dropdown-option span {
	margin-right: 15px;
}

.selectbox select {
	width: 200px;
}

.submit-btn {
	width: 15%;
	height: 25px;
	background: black;
	border: none;
	border-radius: 6px;
	color: white;
	fontsize: 10px;
	cursor: pointer;
}

.close-btn {
	width: 15%;
	height: 25px;
	background: white;
	border: 1px solid black;
	border-radius: 6px;
	color: black;
	fontsize: 10px;
	cursor: pointer;
}

#modal1-1 {
	margin-top: 35px;
	margin-bottom: 41px;
}

#modal2-1 {
	margin-top: 35px;
}

#modal2-2 {
	margin-bottom: 25px;
}

.mypage-table {
	display: flex;
	height: 60px;
	justify-content: space-around;
	width: 100%;
	align-items: center;
	font-size: 20px;
	font-weight: bold;
	line-height: 1.2;
	border-width: 1px;
	border-bottom: 3px solid rgb(0, 0, 0);
}

.mgb10 {
	margin-top: 10px;
	margin-bottom: 0px;
	border-bottom: 3px solid rgb(0, 0, 0);
}

.mypage-front-fonter-orderList:hover {
	text-decoration: underline #000000;
}

.mypage-front-fonter-memModify {
	color: #999;
}

.mypage-front-fonter-memModify:hover {
	text-decoration: underline #999;
}

.mypage-front-fonter-delivery {
	color: #999;
}

.mypage-front-fonter-delivery:hover {
	text-decoration: underline #999;
}

#user_id, #user_name {
	border: 1px solid #696868;
	border-radius: 3px;
}
</style>
</head>
<body>
	
		<section>
		
			<div class="mypage">
				<div class="mypage-table mgb10">
					<div class="mypage-front-fonter-orderList">
						<a href="${contextPath}/orderList.do" class="font-777">주문내역</a>
					</div>
					<div class="mypage-front-fonter-memModify">
						<a href="">회원정보</a>
					</div>
					<div class="mypage-front-fonter-delivery">
						<a href="" class="font-777">배송조회</a>
					</div>
				</div>
			</div>

			<div class="title">
				<h1>
					<b>회원정보</b>
				</h1>
			</div>
			<%
					session.getAttribute("memberInfo");
					
					%>
			
			<div class="info-rect">

				<div class="form-group">
					<label for="id">아이디</label> <input type="text" class="form-control"
						id="user_id" name="user_id" value="${memberInfo.user_id}" disabled>
					<div class="eheck_font" id="pw2_check"></div>
				</div>
				<div class="form-group">
					<label for="pw">비밀번호</label> <input type="password"
						class="form-control" id="user_pw" name="user_pw"
						value="${memberInfo.user_pw}"> <label id="pwd-info">(영문
						대소문자/숫자/특수문자 중 <br>2가지 이상 조합, 10자~16자)
					</label>
				</div>
				<div class="form-group">
					<label for="pw2">비밀번호 확인</label> <input type="password"
						class="form-control" id="user_pw2" name="user_pw2"
						value="${memberInfo.user_pw}">
					<div class="eheck_font" id="pw2_check"></div>
				</div>
				<div class="form-group">
					<label for="mem_name">이름</label> <input type="text"
						class="form-control" id="user_name" name="user_name"
						value="${memberInfo.user_name}" disabled>
					<div class="eheck_font" id="name_check"></div>
				</div>
				<div class="form-group">
					<label for="mem_birth">생년월일</label> <input type="tel"
						class="form-control" id="user_birth" name="user_birth"
						value="${memberInfo.user_birth}">
					<div class="eheck_font" id="birth_check"></div>
				</div>
				<div class="form-group">
					<label for="mem_phone">휴대폰 번호</label> <input type="tel"
						class="form-control" id="user_phone" name="user_phone"
						placeholder=" '-'없이 번호만 입력해주세요 " value="${memberInfo.user_phone}">
					<div class="eheck_font" id="phone_check"></div>
				</div>
				<div class="form-group">
					<label for="mem_gender">성별 </label> <input type="radio"
						class="mem_gender" name="user_gender" value="0" <c:if test="${memberInfo.user_gender eq '0'}">checked="checked"</c:if>>남 <input
						type="radio" class="user_gender" name="user_gender" value="1" <c:if test="${memberInfo.user_gender eq '1'}">checked="checked"</c:if>>여
				</div>
				<div class="form-group">
					<label for="mem_address">주소 </label> <input class="form-control"
						placeholder="우편번호" name="user_zip" id="user_zip" type="text"
						value="${memberInfo.user_zip}" readonly="readonly">
					<button type="button" class="btn btn-default"
						onclick="execPostCode();">
						<i class="fa fa-search"></i> 우편번호 찾기
					</button>
				</div>
				<div class="form-group">
					<label></label> <input class="form-address" placeholder="도로명 주소"
						name="user_addr1" id="user_addr1" type="text"
						value="${memberInfo.user_addr1}" readonly="readonly" />
				</div>
				<div class="form-group">
					<label></label> <input class="form-address" placeholder="상세주소"
						name="user_addr2" id="user_addr2" value="${memberInfo.user_addr2}"
						type="text" />
				</div>
				<%-- 			<div class="form-group">
				<label></label> <input class="form-address" placeholder="도로명 주소"
					name="mem_address" type="text" value="${memberInfo.user_addr1}"
					readonly="readonly" />
			</div>
			<div class="form-group">
				<label></label> <input class="form-address" placeholder="상세주소"
					name="mem_detailaddress" value="${memberInfo.user_addr2}"
					type="text" />
			</div> --%>
				<div class="form-group">
					<label for="mem_email">이메일 주소</label> <input type="email"
						class="form-control" id="user_email" name="user_email"
						value="${memberInfo.user_email}">
					<div class="eheck_font" id="email_check"></div>
				</div>
				<div class="form-group">
					<label>이메일 수신여부</label> <input type="radio" class="email_send"
						name="user_mailSend" value="1" <c:if test="${memberInfo.user_mailSend eq '1'}">checked="checked"</c:if>><span>수신함</span> <input
						type="radio" class="email_send" name="user_mailSend" value="0" <c:if test="${memberInfo.user_mailSend eq '0'}">checked="checked"</c:if>>
					<span class="mailsend-margin">수신안함</span> <label id="pwd-info">쇼핑몰에서
						제공하는 유익한 이벤트 <br>소식을 이메일로 받으실 수 있습니다.
					</label>
				</div>
			</div>
			
			<div class="secession">
				<button class="secession-btn">회원탈퇴</button>
			</div>
			<div class="buttons">
				<button type="button" class="correction-btn">회원정보수정</button>

				<button type="button" class="cancel-btn">취소</button>
			</div>

		</section>
		
		<div id="modal1">
		<form action="${contextPath}/memModify.do" id='memMod' name='memMod' method="post">
			<div class="popup">
				<div>
					<h1 id="modal1-1">작성하신 내용을 수정하시겠습니까?</h1>
				</div>
				<input type="hidden" id="modify_user_id" name="user_id" value="${memberInfo.user_id}">
				<input type="hidden" id="modify_user_pw" name="user_pw" value="${memberInfo.user_pw}">
				<input type="hidden" id="modify_user_birth" name="user_birth" value="${memberInfo.user_birth}">
				<input type="hidden" id="modify_user_phone" name="user_phone" value="${memberInfo.user_phone}">
				<input type="hidden" id="modify_user_gender" name="user_gender" value="${memberInfo.user_gender}">
				<input type="hidden" id="modify_user_zip" name="user_zip" value="${memberInfo.user_zip}">
				<input type="hidden" id="modify_user_addr1" name="user_addr1" value="${memberInfo.user_addr1}">
				<input type="hidden" id="modify_user_addr2" name="user_addr2" value="${memberInfo.user_addr2}">
				<input type="hidden" id="modify_user_email" name="user_email" value="${memberInfo.user_email}">
				<input type="hidden" id="modify_user_mailSend" name="user_mailSend" value="${memberInfo.user_mailSend}">
				<div>
					<button type="button" class="submit-btn"
						onclick="submit_check()">확인</button>
					<button type="button" class="close-btn">취소</button>
				</div>
			</div>
		</form>
		</div>

		<div id="modal2">
			<div class="popup">
				<div>
					<h1 id="modal2-1">작성 중인 내용이 있습니다.</h1>
					<h1 id="modal2-2">나가시겠습니까?</h1>
				</div>
				<div>
					<button type="button" class="submit-btn"
						onclick="submit_check2('${contextPath}/login.do')">확인</button>
					<button class="close-btn">취소</button>
				</div>
			</div>
		</div>
	
	<div id="modal3">
		<form action="${contextPath}/userDelete.do" method="post">
			<div class="popup-secession">
				<div class="popup-head">
					<h1>회원탈퇴</h1>
				</div>
				<div id="benefit-box">
					<div id="benefit-label1">
						<label>혜택내역</label>
					</div>
					<div id="benefit-label2">
						<label>회원 탈퇴 시 회원 혜택, 잔여포인트 및 <br>개인정보가 삭제됩니다.
						</label>
					</div>
				</div>
				<div class="popup-sub">
					<label>비밀번호를 입력하세요.</label>
				</div>
				<div class="dropdown-option">
					<div>
						<span>비밀번호</span>
					</div>
					<div class="selectbox">
						<input type="hidden" id="user_id" name="user_id"
							value="${memberInfo.user_id}"> <input type="password"
							name="user_pw" class="input" id="del_user_pw" />
					</div>
				</div>
				<div>
					<button type="submit" class="submit-btn" id="del_submit">확인</button>
					<button type="button" class="close-btn">취소</button>
				</div>
			</div>
		</form>
	</div>
	<script>
		function submit_check() {
			 var user_id = $("#user_id").val();
			 var user_pw = $("#user_pw").val();
	         var user_birth = $("#user_birth").val();
	         var user_phone = $("#user_phone").val();
	         var user_zip = $("#user_zip").val();
	         var user_addr1 = $("#user_addr1").val();
	         var user_addr2 = $("#user_addr2").val();
	         var user_email = $("#user_email").val();
	         var user_gender = $('input[name=user_gender]:checked').val();
			 var user_mailSend = $('input[name=user_mailSend]:checked').val();
			 
			 $("#modify_user_id").val(user_id);
	         $("#modify_user_pw").val(user_pw);
	         $("#modify_user_birth").val(user_birth);
	         $("#modify_user_phone").val(user_phone);
	         $("#modify_user_gender").val(user_gender);
	         $("#modify_user_zip").val(user_zip);
	         $("#modify_user_addr1").val(user_addr1);
	         $("#modify_user_addr2").val(user_addr2);
	         $("#modify_user_email").val(user_email);
	         $("#modify_user_mailSend").val(user_mailSend);
	         
	         $("#memMod").submit();
			//document.getElementById('memMod').submit();	
		};
		function submit_check2(url) {
			location = url;
		};
		$(".correction-btn").click(function() {
			$("#modal1").attr("style", "display:block");
		});

		$(".cancel-btn").click(function() {
			$("#modal2").attr("style", "display:block");
		});

		$(".secession-btn").click(function() {
			$("#modal3").attr("style", "display:block");
		});

		$(".submit-btn").click(function() {
			$("#modal1").attr("style", "display:none");
			$("#modal2").attr("style", "display:none");
			$("#modal3").attr("style", "display:none");
		});

		$(".close-btn").click(function() {
			$("#modal1").attr("style", "display:none");
			$("#modal2").attr("style", "display:none");
			$("#modal3").attr("style", "display:none");
		});

		$('html, body').css({
			'overflow' : 'hidden',
			'height' : '100%'
		}); // 모달팝업 중 html,body의 scroll을 hidden시킴 
		$('#element').on('scroll touchmove mousewheel', function(event) { // 터치무브와 마우스휠 스크롤 방지     
			event.preventDefault();
			event.stopPropagation();
			return false;
		});

		$('html, body').css({
			'overflow' : 'auto',
			'height' : '100%'
		}); //scroll hidden 해제 $('#element').off('scroll touchmove mousewheel'); // 터치무브 및 마우스휠 스크롤 가능

		$("#del_submit").on("click", function() {
			if ($("#del_user_pw").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#del_user_pw").focus();
				return false;
			} else if ($("#del_user_pw").val() != "${memberInfo.user_pw}") {
				alert("올바른 비밀번호를 입력해주세요.");
				$("#del_user_pw").focus();
				return false;
			} else {
				alert("회원탈퇴가 완료되었습니다.");
				return true;
			}
		});

		function execPostCode() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

					// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
					// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
					var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
					var extraRoadAddr = ''; // 도로명 조합형 주소 변수

					// 법정동명이 있을 경우 추가한다. (법정리는 제외)
					// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
					if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
						extraRoadAddr += data.bname;
					}
					// 건물명이 있고, 공동주택일 경우 추가한다.
					if (data.buildingName !== '' && data.apartment === 'Y') {
						extraRoadAddr += (extraRoadAddr !== '' ? ', '
								+ data.buildingName : data.buildingName);
					}
					// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
					if (extraRoadAddr !== '') {
						extraRoadAddr = ' (' + extraRoadAddr + ')';
					}
					// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
					if (fullRoadAddr !== '') {
						fullRoadAddr += extraRoadAddr;
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					console.log(data.zonecode);
					console.log(fullRoadAddr);

					$("[name=user_zip]").val(data.zonecode);
					$("[name=user_addr1]").val(fullRoadAddr);

					document.getElementById('user_zip').value = data.zonecode; //5자리 새우편번호 사용
					document.getElementById('user_addr1').value = fullRoadAddr;
					document.getElementById('user_addr2').value = null;
					/*document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress;*/
				}
			}).open();

		}
	</script>
</body>
</html>