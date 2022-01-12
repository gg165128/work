<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>주문</title>
<link rel="stylesheet" href="resources/css/order.css">
</head>
<body>
	<section>
		<div class="checkout-full-wrp">
			<div class="checkout-header-wrp">
				<h3 class="checkout-header-text f30-bd-111">주문/결제</h3>
			</div>

			<div class="checkout-info-wrp">
				<!-- 하단좌측박스 시작 -->
				<div class="checkout-wrp-left">
					<!-- 배송/주문자 정보 시작 -->
					<div class="left-section-delivery-info left-section-box">
						<h3 class="f20-bd-333 mgb20">배송 정보</h3>
						<div class="delivery-condition">
							<div class="delivery-condition-name">
								<h3 class="f25-bd-333" id="name">홍길동</h3>
							</div>
							<ul class="delivery-condition-info">
								<li class="f13-777 mgt10">대전광역시 대덕구 대전천북로 180(오정동)</li>
								<li class="f13-777 mgt10">010-0000-0000</li>
							</ul>
							<h4 class="f15-bd-333 delivery-request">배송 요청사항</h4>
							<input type="text" class="btn-v2 f13-555 btn-request"
								placeholder="입력해 주세요.">
						</div>
						<div class="delivery-user">
							<h3 class="f20-bd-333 mgb20">주문자 정보</h3>
							<ul class="delivery-user-info">
								<li class="mgb10"><span class="info-type">이름</span> <strong
									class="info-value">홍길동</strong></li>
								<li class="mgb10"><span class="info-type">연락처</span> <strong
									class="info-value">010-0000-0000</strong></li>
								<li class="mgb10"><span class="info-type">이메일</span> <strong
									class="info-value">hong@naver.com</strong></li>
							</ul>
						</div>
					</div>
					<!-- 배송/주문자 정보 끝 -->
					<!-- 배송 상품 시작 -->
					<div class="section-order-info left-section-box">
						<h3 class="f20-bd-333 mgb20">배송 상품</h3>

						<div class="order-price-text">
							<p class="f13-555 mgb10">
								상품 <span class="price-unit">0원</span> + 배송비 <span
									class="price-unit">0원</span>
								<button type="button" class="checkout-middle-toolTip"
									id="checkout-middle-toolTip" data-toggle="tooltip"
									data-placement="top" title="" data-original-title="무료 배송">
									<svg rold="img" aria-label="툴팁" width="17" height="17"
										viewBox="0 0 17 17" class="icon-tooltip">
										<g id="Symbols" fill="none" fill-rule="evenodd">
										<g id="Icon-Asset-SVG" transform="translate(-76 -6)">
										<g id="btn/alert01/default" transform="translate(72 2)">
										<g id="Group-7" transform="translate(4 4)">
										<circle id="Oval" cx="8.5" cy="8.5" r="8" fill="#FFF"
											stroke="#DDD"></circle>
										<g id="icon/alert_shape" fill="#555"
											transform="translate(8 4.5)">
										<path id="icon/alert" d="M1 7v1.5H0V7h1zm0-7v6H0V0h1z"></path></g></g></g></g></g></svg>
								</button>
							</p>
							<strong class="f15-bd-purple"> 합계 <span
								class="f18-bd-purple mgl5">0원</span>
							</strong>
						</div>
					</div>
					<!-- 배송 상품 끝 -->
					<!-- 결제 수단 시작 -->
					<div class="section-payment-info left-section-box">
						<h3 class="section-payment-info-title f20-bd-333">결제수단</h3>
						<ul class="payment-type-list">
							<li class="payment-type-item mgb10"><input type="radio"
								name="pay-type-item" value="mutong"> <span class="mgl5">무통장
									입금</span></li>
							<li class="payment-type-item mgb10"><input type="radio"
								name="pay-type-item" value="card"> <span class="mgl5">카드결제</span>
							</li>
							<li class="payment-type-item mgb10"><input type="radio"
								name="pay-type-item" value="card"> <span class="mgl5">계좌이체</span>
							</li>
						</ul>
					</div>
					<!-- 결제 수단 끝 -->
				</div>
				<!-- 하단좌측박스 끝 -->
				<!-- 하단우측박스 시작 -->
				<div class="checkout-wrp-right" style="position: fixed; top: 43%;">
					<div class="right-section-info">
						<div class="right-section-price-info">
							<h3 class="mgb20 f20-bd-333">결제 금액</h3>
							<ul class="expected-price-list">
								<li class="expected-price-item mgb10"><span
									class="f15-aaa expected-price-title">총 상품 금액</span> <strong
									class="f18-333 expected-price-value">0원</strong></li>
								<li class="expected-price-item mgb10"><span
									class="f15-aaa expected-price-title">배송비</span> <strong
									class="f18-333 expected-price-value">0원</strong></li>
							</ul>
							<p class="f15-aaa total-expected-price">
								<span class="f15-aaa total-expected-price-title">총 결제 예상
									금액</span> <strong class="f20-bd-333 total-expected-price-value">0원</strong>
							</p>
							<button class="f18-bd-fff btn-order" type="button"
								onclick="request_to_check('1', '0', 'hong@naver.com', '홍길동', '010-0000-0000', '대전광역시 대덕구 대전천북로 180(오정동)');">주문
								완료하기</button>
						</div>
					</div>
				</div>
				<!-- 하단우측박스 끝 -->
			</div>
		</div>
	</section>
</body>
</html>