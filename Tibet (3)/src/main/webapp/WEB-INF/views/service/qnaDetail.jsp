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
<title>공지사항</title>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/noticeDetail.css">
<link rel="stylesheet" href="resources/fontawesome/css/all.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>
<body>
	<section>
		<div class="notice-enter">
			<div class="notice-enter-table mgb10">
				<div class="enter-table-qna">
					<a href="${contextPath}/qna.do">Q&A</a>
				</div>
				<div class="enter-table-notice">
					<a href="${contextPath}/notice.do">공지사항</a>
				</div>
				<div class="enter-table-member">
					<a href="${contextPath}/membership.do">맴버쉽 안내</a>
				</div>
			</div>
		</div>
		<div class="enter-table">
			<div class="enter-table-not mgb15">
				<div class="enter-table-not-tit">
					<label class="enter-not01">제목</label> <label class="enter-not02"
						id="notice01">${qna.qna_title}</label>
				</div>
				<div class="enter-table-not-name">
					<label class="enter-not01">작성자</label> <label class="enter-not02">${qna.user_id}</label>
				</div>
				<div class="enter-table-not-date">
					<label class="enter-not01">작성일</label> <label class="enter-not02">
						<fmt:formatDate value="${qna.qna_date}" pattern="yyyy-MM-dd" />
					</label>
				</div>

				<div class="enter-table-content">${qna.qna_content}</div>
				<div class="enter-table-file">
					<c:choose>
						<c:when test="${qna.qna_img eq null}"></c:when>
						<c:otherwise>
							<img alt="#" src="resources/img/${qna.qna_img}">
						</c:otherwise>
					</c:choose>
				</div>
			</div>
				<!-- 본인일때 수정삭제 -->
			<div class="box-btn">
				<div class="box-btn-text">
					<button type="button"
						onclick="location.href='${contextPath}/qna.do'" class="btn-text">목차
					</button>
				</div>
				<div>
					<c:if test="${memberInfo.user_id eq qna.user_id}">
						<input type="button" value="수정" onclick="location.href='${contextPath}/qnaModifyForm${qna.qna_num}.do'">
						<input type="button" value="삭제" onclick="del(${qna.qna_num})">
					</c:if>
				</div>
			</div>
		</div>
	</section>
	
	<script>
	function del(qna_num) {
		var chk = confirm("정말 삭제하시겠습니까?");
		if (chk) {
			location.href='delete?qna_num='+qna_num;
		}
	}	
</script>
	
</body>
</html>