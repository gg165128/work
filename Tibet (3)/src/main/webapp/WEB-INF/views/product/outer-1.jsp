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

.hr {
	margin-top: -10px;
}

section .noProd {
	color: black;
}

section .page_wrap {
	display: flex;
	justify-content: space-around;
}

.page_nation {
	display: inline-block;
	margin-bottom: 150px;
}

.page_nation .none {
	display: none;
}

.page_nation a {
	display: block;
	margin: 0 3px;
	float: left;
	border: 1px solid #e6e6e6;
	width: 28px;
	height: 28px;
	line-height: 28px;
	text-align: center;
	background-color: #fff;
	font-size: 13px;
	color: #999999;
	text-decoration: none;
}

.page_nation a.active {
	background-color: #42454c;
	color: #fff;
	border: 1px solid #42454c;
}
</style>
</head>
<body>
	<section>
		<div class="MainMenu">재킷&점퍼</div>
		<ul class="SubMenu">
			<li><a href="${contextPath}/outer.do">ALL</a></li>
			<li><a href="${contextPath}/outer-1.do">재킷&점퍼</a></li>
			<li><a href="${contextPath}/outer-2.do">코트</a></li>
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
				<li><a href="#">low price</a></li>
				<p>|</p>
				<li><a href="#">high price</a></li>
				<p>|</p>
				<li><a href="#">name</a></li>
				<p>|</p>
				<li><a href="#">new arrival</a></li>
			</ul>
		</div>

		<hr>
		<div class="row">

			<c:choose>

				<c:when test="${empty productList}">

					<b><span class="noProd">등록된 상품이 없습니다.</span></b>

				</c:when>

				<c:when test="${!empty productList}">

					<c:forEach var="product" items="${productList}"
						varStatus="productNum">

						<div class="col-md-4 ftco-animate">

							<div class="blog-entry">



								<a
									href="${contextPath}/product/viewProduct.do?productNum=${product.productNum}"
									class="block-20"
									style="background-image: url('${contextPath}/resources/images/image_1.jpg');">

								</a>

								<div class="text d-flex py-1">

									<div class="desc pl-2">

										<h3 class="heading">

											<a
												href="${contextPath}/product/viewProduct.do?productNum=${product.productNum}">${product.productName}</a>

										</h3>

										<hr style="margin-top: 25px;">

										<h3 class="heading"
											style="padding-left: 67%; white-space: nowrap;">

											<a
												href="${contextPath}/product/viewProduct.do?productNum=${product.productNum}"
												style="font-size: 22px;"><fmt:formatNumber
													pattern="###,###,###" value="${product.productPrice}" /></a>

										</h3>

									</div>

								</div>

							</div>

						</div>

					</c:forEach>

				</c:when>

			</c:choose>

		</div>

		<!-- 페이징 글번호 -->

		<div class="page_wrap" style="margin-left: 5px; margin-top: 50px;">

			<div class="page_nation">

				<a href="#"><i class="fas fa-angle-double-left"></i></a> <a href="#"><i
					class="fas fa-angle-left"></i></a> <a href="#" class="active">1</a> <a
					href="#">2</a> <a href="#">3</a> <a href="#">4</a> <a href="#">5</a>
				<a href="#">6</a> <a href="#">7</a> <a href="#">8</a> <a href="#">9</a>
				<a href="#">10</a> <a href="#"><i class="fas fa-angle-left"></i></a>
				<a href="#"><i class="fas fa-angle-double-right"></i></a>

			</div>

		</div>
	</section>
</body>
</html>