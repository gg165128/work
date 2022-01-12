<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>맴버쉽 안내</title>
<link rel="stylesheet" href="resources/css/membership.css">
</head>
<body>
	<section>
		<div class="service">
			<div class="service-front-table mgb10">
				<div class="service-front-fonter-qna">
					<a href="${contextPath}/qna.do" class="font-999">Q&A</a>
				</div>
				<div class="service-front-fonter-notice">
					<a href="${contextPath}/notice.do" class="font-999">공지사항</a>
				</div>
				<div class="service-front-fonter-member">
					<a href="${contextPath}/membership.do">멤버쉽 안내</a>
				</div>
			</div>
		</div>
		<div>
			<div class="member">
				<div class="member-img">
					<img src="resources/img/membership.JPG" alt="" width="100%">
				</div>
			</div>
		</div>
	</section>
</body>
</html>