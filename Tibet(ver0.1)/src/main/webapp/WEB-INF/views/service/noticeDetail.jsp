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
            <div class="enter-table-qna"><a href="${contextPath}/qna.do">Q&A</a></div>
            <div class="enter-table-notice"><a href="${contextPath}/notice.do">공지사항</a></div>
            <div class="enter-table-member"><a href="${contextPath}/membership.do">맴버쉽 안내</a></div>
        </div>
    </div>
    <div class="enter-table">
        <div class="enter-table-not mgb15">
            <div class="enter-table-not-tit">
                <label class="enter-not01">제목</label>
                <label class="enter-not02" id="notice01">${notice.notice_title}</label>
            </div>
            <div class="enter-table-not-name">
                <label class="enter-not01">작성자</label>
                <label class="enter-not02">${notice.user_id}</label>
            </div>
            <div class="enter-table-not-date">
                <label class="enter-not01">작성일</label>
                <label class="enter-not02">
					<fmt:formatDate value="${notice.notice_date}" pattern="yyyy-MM-dd" /></label>
            </div>

            <div class="enter-table-content">
                ${notice.notice_content}
            </div>
            <p><br></p>
            <div class="enter-table-file">
                <img alt="#" src="resources/${notice.notice_img}">
            </div>
        </div>

        <div class="box-btn">
            <div class="box-btn-text">
                <button type="button" onclick="location.href='${contextPath}/notice.do'" class="btn-text">목차
                </button>
            </div>
        </div>
    </div>
	</section>
</body>
</html>