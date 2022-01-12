<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="resources/fontawesome/css/all.css">
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/style.css">

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="/resources/js/addressapi.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<title>회원가입</title>

<style>
.title {
	margin: 20px 34%;
	font-size: 30px;
	font-weight: bold;
}

.info-rect {
	width: 32%;
	height: auto;
	background: white;
	margin: 0px 34% 15px;
	padding: 1%;
	border: 1px solid black;
	border-radius: 6px;
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

.correction-btn {
	width: 20%;
	height: 50px;
	margin-right: 5%;
	margin-left: 41%;
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

.checkbox-group {
	width: 18%;
	height: auto;
	background: #E5E5E5;
	margin: 0px 41% 15px;
	padding: 1%;
	border: none;
	border-radius: 6px;
	display: flex;
	flex-direction: column;
}

.check-child {
	margin: 1px 25px;
}

.check-parent {
	margin-bottom: 3px;
}
</style>
</head>
<body>
	<section>
		<div class="title">
			<h1>
				<b>회원가입</b>
			</h1>
		</div>
		<form name="signupForm" action="${contextPath}/signup.do" method="post">
		<div class="info-rect">

			<div class="form-group">
				<label for="id">아이디</label> <input type="text" class="form-control"
					id="user_id" name="user_id" placeholder=" "> <label
					id="id-info">(영문 소문자/숫자, 4~12자)</label>
					<!-- <input type="button" id="btnOverlapped" name="btnOverlapped" value="중복체크" onClick="fn_overlapped()" /> -->
					<button id="btnOverlapped" name="btnOverlapped" value="1" onClick="fn_overlapped()">중복체크</button>
			</div>
			<div class="form-group">
				<label for="pw">비밀번호</label> <input type="password"
					class="form-control" id="user_pw" name="user_pw" placeholder=" ">
				<label id="pwd-info">(영문 대소문자/숫자, 8자~12자)
				</label>
			</div>
			<!-- <div class="form-group">
				<label for="pw2">비밀번호 확인</label> <input type="password"
					class="form-control" id="user_pw2" name="user_pw2" placeholder=" ">
				<div class="eheck_font" id="pw2_check"></div>
			</div> -->
			<div class="form-group">
				<label for="mem_name">이름</label> <input type="text"
					class="form-control" id="user_name" name="user_name" placeholder=" ">
				<div class="eheck_font" id="name_check"></div>
			</div>
			<div class="form-group">
				<label for="mem_birth">생년월일</label> <input type="tel"
					class="form-control" id="user_birth" name="user_birth"
					placeholder=" 6자리만 입력해주세요. ">
				<div class="eheck_font" id="birth_check"></div>
			</div>
			<div class="form-group">
				<label for="mem_email">이메일 주소</label> <input type="email"
					class="form-control" id="user_email" name="user_email"
					placeholder=" ">
				<div class="eheck_font" id="email_check"></div>
			</div>
			<div class="form-group">
				<label for="mem_phone">휴대폰 번호</label> <input type="tel"
					class="form-control" id="user_phone" name="user_phone"
					placeholder=" '-'없이 번호만 입력해주세요. ">
				<div class="eheck_font" id="phone_check"></div>
			</div>
			<div class="form-group">
				<label for="mem_gender">성별 </label> <input type="radio"
					class="mem_gender" name="user_gender" value="0">남 <input
					type="radio" class="mem_gender" name="user_gender" value="1">여
			</div>
			<div class="form-group">
				<label for="mem_address">주소 </label> <input class="form-control"
					placeholder="우편번호" name="user_zip" id="user_zip" type="text"
					readonly="readonly">
				<button type="button" class="btn btn-default"
					onclick="execPostCode();">
					<i class="fa fa-search"></i> 우편번호 찾기
				</button>
			</div>
			<div class="form-group">
				<label></label> <input class="form-address" placeholder="도로명 주소"
					name="user_addr1" id="user_addr1" type="text" readonly="readonly" />
			</div>
			<div class="form-group">
				<label></label> <input class="form-address" placeholder="상세주소"
					name="user_addr2" id="user_addr2" type="text" />
			</div>
		</div>
		<div class="checkbox-group">
			<div class="check-parent">
				<input type="checkbox" name="check-Agree" onclick="selectAll(this)">
				<label>전체 동의</label>
			</div>
			<div class="check-child">
				<input type="checkbox" name="check-Agree1" class="normal"> <label>개인정보
					처리방침 동의(필수)</label>
			</div>
			<div class="check-child">
				<input type="checkbox" name="check-Agree2" class="normal"> <label>서비스
					이용약관 동의(필수)</label>
			</div>
			<!-- <div class="check-child">
				<input type="checkbox" name="user_mailSend" id="user_mailSend" class="normal" value="checkbox_Check()"> <label>마케팅
					수신 동의</label>
			</div> -->
			<div class="check-child">
				<input type="checkbox" name="user_mailSend" value='1' id="user_mailSend"/> <label>마케팅 수신 동의</label>
				<input type="hidden" name="user_mailSend" value='0' id="user_mailSend_hidden"/>
			</div>
		</div>
		<div class="cor-button">
			<!-- <button type="submit" class="correction-btn" onclick="inputCheck()">회원가입</button> -->
			<input type="button" class="correction-btn" value="회원가입" onclick="inputCheck()">
		</div>
		</form>
	</section>
	
	<script>
	/* 우편번호 API */
	function execPostCode() {
        new daum.Postcode({
            oncomplete: function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
               var extraRoadAddr = ''; // 도로명 조합형 주소 변수

               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                   extraRoadAddr += data.bname;
               }
               // 건물명이 있고, 공동주택일 경우 추가한다.
               if(data.buildingName !== '' && data.apartment === 'Y'){
                  extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
               }
               // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
               if(extraRoadAddr !== ''){
                   extraRoadAddr = ' (' + extraRoadAddr + ')';
               }
               // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
               if(fullRoadAddr !== ''){
                   fullRoadAddr += extraRoadAddr;
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               console.log(data.zonecode);
               console.log(fullRoadAddr);
               
               
               $("[name=user_zip]").val(data.zonecode);
               $("[name=user_addr1]").val(fullRoadAddr);
               
               document.getElementById('user_zip').value = data.zonecode; //5자리 새우편번호 사용
               document.getElementById('user_addr1').value = fullRoadAddr;
               /*document.getElementById('signUpUserCompanyAddressDetail').value = data.jibunAddress;*/
           }
        }).open();
    }
	
	
	/* 체크박스 전체선택 */
	function selectAll(selectAll)  {
		  const checkboxes 
		     = document.querySelectorAll('input[type="checkbox"]');
		  
		  checkboxes.forEach((checkbox) => {
		    checkbox.checked = selectAll.checked
		  })
		}
	
	
	/* 체크박스 체크 여부 확인 */
	if(document.getElementById("user_mailSend").checked) {
    	document.getElementById("user_mailSend_hidden").disabled = true;
	}
	
	
	/* ID 유효성 검사 */
	function fn_overlapped(){
	    var _id=$("#user_id").val();
	    if(_id==''){
	       alert("ID를 입력하세요");
	       return;
	    }
	    $.ajax({
	       type:"post",
	       async:false,  
	       url:"${contextPath}/overlapped.do",
	       dataType:"text",
	       data: {id:_id},
	       success:function (data,textStatus){
	          if(data=='false'){
	              alert("사용할 수 있는 ID입니다.");
	              $('#btnOverlapped').prop("disabled", true);
	              $('#_user_id').prop("disabled", true);
	              $('#user_id').val(_id);
	          }else{
	             alert("사용할 수 없는 ID입니다.");
	          }
	       },
	       error:function(data,textStatus){
	          alert("에러가 발생했습니다.");ㅣ
	       },
	       complete:function(data,textStatus){
	          //alert("작업을완료 했습니다");
	       }
	    });  //end ajax 
	    	    
	    document.getElementById("btnOverlapped").value = '0';
	 }
	
	
	/* 빈칸 확인 */
	function inputCheck() {
		var form = document.signupForm;
		if(form.user_id.value == "") {
			alert("ID를 입력해주세요");
			form.user_id.focus();
			return false;
		} else if (form.btnOverlapped.value == "1") {
			alert("ID 중복확인을 해주세요.");
			form.btnOverlapped.focus();
			return false;
		} else if (form.user_pw.value == "") {
			alert("비밀번호를 입력해주세요");
			form.user_pw.focus();
			return false;
		} else if (form.user_name.value == "") {
			alert("이름을 입력해주세요");
			form.user_name.focus();
			return false;
		} else if (form.user_birth.value == "") {
			alert("생년월일을 입력해주세요");
			form.user_birth.focus();
			return false;
		} else if (form.user_email.value == "") {
			alert("이메일을 입력해주세요");
			form.user_email.focus();
			return false;
		} else if (form.user_phone.value == "") {
			alert("휴대폰 번호를 입력해주세요");
			form.user_phone.focus();
			return false;
		} else if (form.user_gender.value == "") {
			alert("성별을 입력해주세요");
			form.user_gender.focus();
			return false;
		} else if (form.user_zip.value == "") {
			alert("주소를 입력해주세요");
			form.user_zip.focus();
			return false;
		} 
		
		
		/* 아이디 정확도 검사 */
	    var idCheck = /^(?=.*[a-z])(?=.*[0-9]).{4,12}$/;
	    var get_user_id = document.getElementById("user_id");
	    
	 	if(!idCheck.test(get_user_id.value)){
	 		alert("ID는 영소문자, 숫자 조합으로 4~12자리만 가능합니다.");
	 		get_user_id.focus();
	 		return false;
	 	}
	 	
	 	
	 	/* 비밀번호 정확도 검사 */
	 	var pwCheck = /^(?=.*[a-zA-Z])(?=.*[0-9]).{8,12}$/;
		    var get_user_pw = document.getElementById("user_pw");
		    
		 	if(!pwCheck.test(get_user_pw.value)){
		 		alert("비밀번호는 영문 대소문자, 숫자 조합으로 8~12자리만 가능합니다.");
		 		get_user_pw.focus();
		 		return false;
		 }
		 
		 	
		/* 필수 체크박스 확인 */
		if ($("input:checkbox[name=check-Agree1]").is(":checked") == false) {
			alert('필수 약관에 동의해 주세요.');
	        return false;
     	} else if($("input:checkbox[name=check-Agree2]").is(":checked") == false) {
     		alert('필수 약관에 동의해 주세요.');
            return false;
     	}
		
		
		form.submit();
	}
	
	</script>
</body>
</html>