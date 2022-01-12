<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>q&a 등록</title>
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/qnaWrite.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
<link rel="stylesheet" href="resources/fontawesome/css/all.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="resources/summernote/summernote-lite.js"></script>
<script src="resources/summernote/lang/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="resources/summernote/summernote-lite.css">
</head>
<body>
	<form action="${contextPath}/qnaWrt.do" id="qnaWrt" method="post">

		<section>
			<div class="service_qna">
				<div class="service-qna_ask-table mgb10">
					<div class="service-front-fonter-qna_ask">Q&amp;A</div>
				</div>
			</div>

			<div class="qna-ask">
				<div class="form">
					<div class="qna-ask-form">
						<label>제목</label> <input type="text" class="input" id="qna_title"
							name="qna_title" value="상품문의" readonly>
					</div>
					<div class="qna-ask-form">
						<label>상품명</label> <input type="text" class="input"
							id="product_name" name="product_name" value="${vo.product_name}"
							disabled> <input type="hidden" id="product_num"
							name="product_num" value="${product_num}">
						<%
						session.getAttribute("memberInfo");
						%>
						<input type="hidden" id="user_id" name="user_id"
							value="${memberInfo.user_id}">

					</div>
					<div class="qna-ask-form">
						<label>공개여부</label> <input type="radio" name="qna_lock"
							class="lock-radio" id="lock-radio-op	en" value="0"
							onclick='btnDisabled()' /> <label class="lock-label">공개</label>
						<input type="radio" name="qna_lock" class="lock-radio"
							id="lock-radio-close" value="1" onclick='btnActive()' checked />
						<label class="lock-label">비공개</label>
					</div>
					<div class="qna-ask-form">
						<label>비밀번호</label> <input type="password" name="qna_pw"
							class="input" id="password" maxlength="4"
							placeholder="비밀번호는 4자리 숫자로 설정해주세요." />
					</div>
					<div class="qna-ask-form">
						<label>내용</label>
						<textarea id="summernote" name="qna_content"></textarea>
					</div>
					<div class="qna-ask-form-img">
						<label>이미지 첨부</label> <input class="qna-ask-form-img-btn"
							type="file" name="qna_img">
					</div>
				</div>
			</div>
			<div class="box-btn">
				<div class="box-btn-text">
					<button type="button" class="btn-text" id="button-reg"
						onclick="javascript:submit_check('${contextPath}/qna.do')">등록</button>
					<button type="button" class="btn-text" id="button-can"
						onclick="javascript:delete_check()">취소</button>
				</div>
			</div>
		</section>


		<%-- 		<div class="modal1" id="popup-reg">
			<div class="popup">
				<div class="close1">
					<button id="close-button1">
						<i class="fas fa-times"></i>
					</button>
				</div>
				<div class="text111">
					<h1 class="text01">작성하신 내용을 등록하시겠습니까?</h1>
					<h1 class="text01">(등록 후 Q&A 페이지로 이동)</h1>
				</div>
				<button type="submit" id="pop1"
					onclick="location.href='${contextPath}/qna.do'">확인</button>
			</div>
		</div>
		<div class="modal2" id="popup-can">
			<div class="popup">
				<div class="close1">
					<button id="close-button2">
						<i class="fas fa-times"></i>
					</button>
				</div>
				<div class="text111">
					<h1 class="text01">작성 중인 내용이 있습니다.</h1>
					<h1 class="text01">나가시겠습니까?</h1>
				</div>
				<button type="button" id="pop1"
					onclick="location.href='${contextPath}/qna.do'">나가기</button>
			</div>
		</div> --%>
	</form>
	<script>
		$('#summernote').summernote({
			height: 450,
			lang: "ko-KR",
	        toolbar: [
	            ['fontname', ['fontname']],
	            ['fontsize', ['fontsize']],
	            ['style', ['bold', 'italic', 'underline', 'clear']],
	            ['color', ['color']],
	            ['para', ['paragraph']],
	            ['insert', ['link', 'picture']],
	            ['view', []]
	        ]
		});
		function submit_check() {
			var answer;
			answer = confirm("등록하시겠습니까?");
			if (answer == true) {

				document.getElementById('qnaWrt').submit();
				location = url;
			}
		}
		function delete_check() {
			var answer;
			//페이지를 이동하기 전에 confirm()을 사용해 다시 한번 확인한다.
			//확인을 선택하면 answer에  true, 취소를 선택하면 false 값이 들어간다.
			answer = confirm("글 작성을 취소하시겠습니까?");
			//확인을 선택한 경우 자바스크립트를 호출할 때 같이 넘어온 url이라는 변수에 들어있는 주소로 페이지 이동
			if (answer == true) {
				history.go(-1);
			}
		}
		/* 		$("#button-reg").click(function() {
		 $("#popup-reg").attr("style", "display:block");
		 });

		 $("#button-can").click(function() {
		 $("#popup-can").attr("style", "display:block");
		 });

		 $("#close-button1").click(function() {
		 $("#popup-reg").attr("style", "display:none");
		 });

		 $("#close-button2").click(function() {
		 $("#popup-can").attr("style", "display:none");
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
		 */
		function btnActive() {
			const target = document.getElementById('password');
			target.disabled = false;
		}

		function btnDisabled() {
			const target = document.getElementById('password');
			target.disabled = true;
		}
	</script>
</body>
</html>