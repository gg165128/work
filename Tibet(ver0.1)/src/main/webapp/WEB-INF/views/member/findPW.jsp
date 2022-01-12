<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<title>비밀번호 찾기</title>
<style>
.title {
	margin: 20px 37%;
	font-size: 30px;
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
}

p {
	text-align: center;
	position: relative;
	top: 30px;
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
				<b>비밀번호 찾기</b>
			</h1>
		</div>
		<div>
			<form action="${contextPath}/resultPW.do" name="checks"class="form-signin" method="POST">
				<div class="info-rect">

					<div class="control-box">
						<input type="text" name="member_id" id="member_id"
							class="form-control" placeholder="아이디" required>
					</div>
					<div class="control-box">
						<input type="text" name="name" id="name" class="form-control"
							placeholder="이름" required>
					</div>
					<div>
						<input type="email" name="email" id="email" class="form-control"
							placeholder="이메일" required>
					</div>

				</div>
				<button id="correction-btn" class="correction-btn" type="submit" onclick="check()">확인</button>
			</form>
		</div>
	</section>
	<script>
	function check() {
        if (document.getElementById("name").value == "") {

            return false;
  		}
        else if (document.getElementById("member_id").value == "") {

            return false;
        }
        else if (document.getElementById("email").value == "") {

            return false;
        }
        }
        else
  		 document.checks.submit();
	
	</script>
</body>
</html>