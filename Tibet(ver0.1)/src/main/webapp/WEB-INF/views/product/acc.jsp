<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />



<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="resources/fontawesome/css/all.css">
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/style.css">
<style>
section .MainMenu {
	display: flex;
	justify-content: center;
	text-align: center;
	font-weight: bold;
	font-size: 40px;
	background: white;
	color: black;
	margin-bottom: 30px;
	padding-top: 2%;
}

section .SubMenu {
	display: flex;
	justify-content: space-around;
	margin-bottom: 60px;
	position: relative;
	color: black;
	flex-wrap: 5;
}

section .SubMenu li {
	display: block;
	padding: 10px 20px;
}

section .sort {
	display: flex;
	flex-direction: row;
	justify-content: flex-end;
}

section .sort li {
	margin: 0 1% 0 1%;
}

section .sort p {
	width: 1px;
	margin: 0 0 1% 0;
}

section .sort li:hover{
	text-decoration: underline #999;
}

.hr {
	margin-top: -10px;
}

section .noProd {
	color: black;
}

.paging{
    margin-top: 10px;
    font-size: 0px;
    text-align: center;
    color: rgb(150 150 150);
}

.paging a{
    display: inline-block;
    margin-left: 5px;
    padding: 5px 7px;
    font-size: 14px;
    font-weight: 400;
}

.paging .num-on{
    color: black;
    font-weight: 700;
}
.SubMenu li:hover{
	text-decoration: underline #999;
}
.SelectMenu {
	font-weight: bold;
}



</style>
</head>
<body>
	<section>
		<div class="MainMenu">ACC</div>
		<ul class="SubMenu">
			<li class="SelectMenu"><a href="${contextPath}/acc.do">ALL</a></li>
			<li><a href="${contextPath}/acc-1.do">모자</a></li>
			<li><a href="${contextPath}/acc-2.do">반지&팔찌</a></li>
			<li><a href="${contextPath}/acc-3.do">선글라스</a></li>
			<li><a href="${contextPath}/acc-4.do">벨트</a></li>
		</ul>

		<!-- <div class="btn-group" role="group" aria-label="..."
			style="margin-bottom: 20px; margin-top: 30px;">

			<button type="button" class="btn btn-default"
				style="border: 0; outline: 0; border-radius: 1px;">인기순</button>

			<button type="button" class="btn btn-default"
				style="border: 0; outline: 0;">낮은가격순</button>

			<button type="button" class="btn btn-default"
				style="border: 0; outline: 0;">높은가격순</button>

			<button type="button" class="btn btn-default"
				style="border: 0; outline: 0; border-radius: 1px;">상품평순</button>
		</div>

		<hr style="margin-top: -10px;"> -->

		<div>
			<ul class="sort">
				<li style="font-weight: bold;">low price</li>
				<p>|</p>
				<li>high price</li>
				<p>|</p>
				<li>name</li>
				<p>|</p>
				<li>new arrival</li>
			</ul>
		</div>

		<hr>
		<div class="row">
			<ul>
				<li>
				</li>
				<li>
				</li>
				<li>
				</li>
				<li>
				</li>
			</ul>
			

		</div>

		<!-- 페이징 글번호 -->

		<div class="paging">
            <a href="#" class="bt"><<</a>
            <a href="#" class="bt"><</a>
            <a href="#" class="num-on">1</a>
            <a href="#" class="num">2</a>
            <a href="#" class="bt">></a>
            <a href="#" class="bt">>></a>
        </div>
	</section>
</body>
</html>