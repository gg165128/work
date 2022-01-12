<%-- <%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
  <title>SummerNoteExample</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  
  <!-- 서머노트를 위해 추가해야할 부분 -->
  <script src="resources/summernote/summernote-lite.js"></script>
  <script src="resources/summernote/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="resources/summernote/summernote-lite.css">
  <!--  -->
  
</head>
<body>
<div class="container">
  <textarea class="summernote" name="editordata"></textarea>    
</div>
<script>
$('.summernote').summernote({
	  height: 450,
	  lang: "ko-KR"
	});
</script>
</body>
</html> --%>
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
<link rel="stylesheet" href="resources/fontawesome/css/all.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
 <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
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
							name="qna_title" value="배송문의" readonly>
					</div>
					<%
					session.getAttribute("memberInfo");
					%>
					<input type="hidden" id="user_id" name="user_id"
						value="${memberInfo.user_id}">
					<div class="qna-ask-form">
						<label>공개여부</label> <input type="radio" name="qna_lock"
							class="lock-radio" id="lock-radio-open" value="0"
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
						<textarea id="summernote" name="editordata"></textarea>
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

	</form>
	<script type="text/javascript">
    $('#summernote').summernote({
		  toolbar: [
			    // [groupName, [list of button]]
			    ['fontname', ['fontname']],
			    ['fontsize', ['fontsize']],
			    ['style', ['bold', 'italic', 'underline','strikethrough', 'clear']],
			    ['color', ['forecolor','color']],
			    ['table', ['table']],
			    ['para', ['ul', 'ol', 'paragraph']],
			    ['height', ['height']],
			    ['insert',['picture','link','video']],
			  ],
			fontNames: ['Arial', 'Arial Black', 'Comic Sans MS', 'Courier New','맑은 고딕','궁서','굴림체','굴림','돋움체','바탕체'],
			fontSizes: ['8','9','10','11','12','14','16','18','20','22','24','28','30','36','50','72']
	});
    </script>
</body>
</html>
<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
request.setCharacterEncoding("UTF-8");
%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>without bootstrap</title>
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
  </head>
  <body>
    <div id="summernote"></div>
    <script>
      $('#summernote').summernote({
        placeholder: 'Hello stand alone ui',
        tabsize: 2,
        height: 120,
        toolbar: [
          ['style', ['style']],
          ['font', ['bold', 'underline', 'clear']],
          ['color', ['color']],
          ['para', ['ul', 'ol', 'paragraph']],
          ['table', ['table']],
          ['insert', ['link', 'picture', 'video']],
          ['view', ['fullscreen', 'codeview', 'help']]
        ]
      });
    </script>
  </body>
</html> --%>