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
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="resources/fontawesome/css/all.css">
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/style.css">
<title>비밀번호 찾기 결과</title>
<%
		 Object data = session.getAttribute("findpw");
		 String findupw = (String)data;
  		 %>
<style>
.title {
	width: 100%;
	margin: 20px 37.6%;
	font-size: 23px;
	font-weight: bold;
}

.info-rect {
	width: 20%;
	height: auto;
	background: white;
	margin: 0px 37% 15px;
	padding: 2% 4%;
	border: 1px solid black;
	border-radius: 6px;
	  text-align: center;
	
}

#check {
display: inline-block;
}
#checks {
	height: auto;
	text-align: center;
	position: relative;
	top: 30px;
	font-size: 17px;
}

.control-box {
	margin-bottom: 20px;
}

.form-control {
	position: relative;
	width: 100%;
	height: auto;
	padding: 10px;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	font-size: 16px;
}

.correction-btn {
	width: 28%;
	height: 50px;
	margin: 0px 37% 15px;
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
</style>
</head>
<body>
	<section>
		<div class="title">
			<h1>
				<b>고객님의 비밀번호 찾기가 완료되었습니다.</b>
			</h1>
		</div>

		<div class="info-rect">
			<input type="hidden" name="member_id" value=<%= findupw %>>
				<p class="check" id="check">
					고객님의 비밀번호는
					<%= findupw %>
					입니다.
				</p>
		</div>
		<button id="correction-btn" class="correction-btn" type="submit"
			onclick="location.href='${contextPath}/login.do'">로그인 페이지로 이동</button>

	</section>

</body>
</html>