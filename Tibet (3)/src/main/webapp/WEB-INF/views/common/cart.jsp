<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />



<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resources/css/cart.css">
</head>
<body>
	<section>
		<div class="frame">
			<div class="favor-head border-btm-black mgb20">장바구니</div>
			<div class="cart-table">
				<div class="cart-table-title-row">
					<label><input title="모든 상품을 결제상품으로 설정" type="checkbox"
						class="all-deal-select"> <span>&nbsp;&nbsp;전체선택</span> </label>
					<div class="cart-table-title-prodInfo">상품정보</div>
					<div class="cart-table-title-price">상품 가격</div>
				</div>
			</div>

			<div class="cart-img">
				<div class="cart-img-row">
					<label><input title="모든 상품을 결제상품으로 설정" type="checkbox"
						class="all-deal-select"> <span>&nbsp;&nbsp;</span><a
						href="#">이미지</a> </label>
					<div class="cart-img-product">쓰리 머시기 코트</div>
					<div class="cart-img-price">30,000원</div>
				</div>
			</div>

			<div class="cart-middle-box mgt20 mgb100">
				<div class="cart-middle-priceAll">
					<strong class="mgr5 f15-555">상품 0원</strong> + <strong
						class="mgr5 mgl5 f15-555">배송비 0원</strong>
					<button type="button" class="cart-middle-toolTip"
						id="cart-middle-toolTip" data-toggle="tooltip"
						data-placement="top" title=""
						data-original-title="Hyukshop의 모든 상품은 무료 배송입니다.">
						<svg rold="img" aria-label="툴팁" width="17" height="17"
							viewBox="0 0 17 17" class="icon-tooltip">
							<g id="Symbols" fill="none" fill-rule="evenodd">
							<g id="Icon-Asset-SVG" transform="translate(-76 -6)">
							<g id="btn/alert01/default" transform="translate(72 2)">
							<g id="Group-7" transform="translate(4 4)">
							<circle id="Oval" cx="8.5" cy="8.5" r="8" fill="#FFF"
								stroke="#DDD"></circle>
							<g id="icon/alert_shape" fill="#555" transform="translate(8 4.5)">
							<path id="icon/alert" d="M1 7v1.5H0V7h1zm0-7v6H0V0h1z"></path></g></g></g></g></g></svg>
					</button>
					<span class="cart-middle-totalPrice mgl20 pdl20 f15-bd-purple">합계</span>
					<span class="mgl10 f25-bd-purple">30,000원</span>
				</div>
				<p class="mgt5 mgb0 cart-middle-content">장바구니에 담긴 상품은 최대 30일간
					보관됩니다.(최대 200개까지 보관 가능)</p>
			</div>

			<div class="cart-under-box">
				<div class="cart-under-box-inner-left-box">
					<ul class="cart-under-box-inner-left-ul">
						<li class="cart-under-box-inner-left-li"><span
							class="f15-aaa">상품 수</span> <strong class="f18-333">0개</strong></li>
						<li class="cart-under-box-inner-left-li"><span
							class="f15-aaa">상품 금액</span> <strong class="f18-333">0원</strong>
						</li>
						<li class="cart-under-box-inner-left-li"><span
							class="f15-aaa">할인 금액</span> <strong class="f18-purple">0원</strong>
						</li>
						<li class="cart-under-box-inner-left-li"><span
							class="f15-aaa">총 배송비</span> <strong class="f18-333">0원</strong>
						</li>
					</ul>
				</div>
				<div class="cart-undex-box-inner-right-box">
					<span class="cart-undex-box-inner-right-box-span mgr10 f15-aaa">총
						결제 예상 금액</span> <strong class="mgl13 f30-bd-111">0원</strong>
				</div>
			</div>

			<div class="cart-go-to-check-box">
				<button class="cart-go-to-check-btn mgt100 mgb100">
					<a href="${contextPath}/order.do" class="f18-bd-fff">주문하기 0</a>
				</button>
			</div>
		</div>
	</section>
</body>
</html>