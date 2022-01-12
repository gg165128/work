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
<meta charset="UTF-8">
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/orderList.css">
<title>마이페이지</title>
</head>
<body>
	<section>
		<div class="mypage">
			<div class="mypage-table mgb10">
				<div class="mypage-front-fonter-orderList">
					<a href="#">주문내역</a>
				</div>
				<div class="mypage-front-fonter-memModify">
					<a href="${contextPath}/memModify.do" class="font-777">회원정보</a>
				</div>
				<div class="mypage-front-fonter-delivery">
					<a href="" class="font-777">배송조회</a>
				</div>
			</div>
		</div>

		<div class="mypage-detail-table">
			<div class="mypage-detail-table mgb10">
				<div class="mypage-orderList">
					<a href="${contextPath}/orderList.do">주문내역조회</a>
				</div>
				<div class="mypage-cancelList">
					<a href="" class="font-777">취소/교환/반품 내역</a>
				</div>
			</div>
		</div>
		<br>

		<div class="select-date">
			<label for="start" class="cal-label">조회 기간 선택&nbsp;</label> 
				<input type="date" id="start" name="list-start"
					value="2021-01-01" min="2000-01-01" max="2030-12-31">
			<label for="end"  class="cal-label">&nbsp;~&nbsp;</label>
				<input type="date" id="end" name="list-end" 
					value="2021-12-02" min="2000-01-01" max="2030-12-31">
		</div>
		<br>
		<br>

		<div class="orderList">
			<div class="oderList-title">주문 상품 정보</div>
				<div>
					<table class="div-orderList">
						<tr class="orderList-table">
							<th class="orderDate-th">주문일자</th>
							<th class="orderImage-th">이미지</th>
							<th class="orderInfo-th">상품정보</th>
							<th class="orderCount-th">수량</th>
							<th class="orderCash-th">상품구매금액</th>
							<th class="orderPoint-th">적립금</th>
							<th class="orderState-th">주문처리상태</th>
							<th class="orderCancel-th">취소/교환/반품</th>
						</tr>
						<tr class="orderList-tr">
							<td class="orderDate">2021-12-02</td>
							<td class="orderImage"><a href="" class="orderImage-a">이미지</a></td>
							<td class="orderInfo"><a href="" class="orderInfo-a">상품정보</a></td>
							<td class="orderCount">2</td>
							<td class="orderCash">30,000원</td>
							<td class="orderPoint">1,500원</td>
							<td class="orderState">배송준비중</td>
							<td class="orderCancel">-</td>
						</tr>
						<tr class="orderList-tr"> 
							<td class="orderDate">2021-12-02</td>
							<td class="orderImage"><a href="" class="orderImage-a">이미지</a></td>
							<td class="orderInfo"><a href="" class="orderInfo-a">상품정보</a></td>
							<td class="orderCount">2</td>
							<td class="orderCash">30,000원</td>
							<td class="orderPoint">1,500원</td>
							<td class="orderState">배송중</td>
							<td class="orderCancel">-</td>
						</tr>
						<tr class="orderList-tr"> 
							<td class="orderDate">2021-12-02</td>
							<td class="orderImage"><a href="" class="orderImage-a">이미지</a></td>
							<td class="orderInfo"><a href="" class="orderInfo-a">상품정보</a></td>
							<td class="orderCount">2</td>
							<td class="orderCash">30,000원</td>
							<td class="orderPoint">1,500원</td>
							<td class="orderState">배송완료
우체국택배
[123456789]
<button type="button" id="review-btn">리뷰쓰기</button>
<button type="button" id="cancel-btn">취소/교환/반품</button>
</td>
							<td class="orderCancel">-</td>
						</tr>
				</table>
			</div>
		</div>
		
		<div id="review-modal">
			<div class="div-title">Review</div>
			<br><br>
			<div>
	            <label class="info-label">상품정보</label>
	            	<input type="text" class="info-input">
            </div>
            <div>
	            <label class="writer-label">작성자</label>
	            	<input type="text" class="writer-input">
	            <label class="size-label">평소사이즈</label>
	            	<input type="text" class="size-input">
            </div>
            <div>
	            <label class="height-label">키</label>
	            	<input type="text" class="height-input">
	            <label class="weight-label">몸무게</label>
	            	<input type="text" class="weight-input">
            </div>
            <div class="div-content">
	            <label class="content-label">내용</label>
	            	<textarea class="content-input"></textarea>
            </div>
            <div>
            	<label>이미지첨부&nbsp;&nbsp;</label>
            		<input type="file">
            </div>
            <br><br>
            <div class="review-write">
            	<button type="submit" class="review-write-btn">
            		<a href="${contextPath}/orderList.do" class="font-FFF">작성하기</a>
            	</button>
            </div>
            <a class="modal_close_btn"><i class="fas fa-times"></i></a>
        </div>
        
        <div id="cancel-modal">
            <div class="div-title">취소/교환/반품</div>
			<br><br>
			<div class="div-cancel">
				<label class="cancel-label">선택</label>
				<select class="cancel-select">
					<option value="선택" selected>선택</option>
					<option value="취소">취소</option>
					<option value="교환">교환</option>
					<option value="반품">반품</option>
				</select>
			</div>
			<div>
	            <label class="content-label">내용</label>
	            	<input type="text" class="content-input">
	            </div>
            <div>
            	<label>이미지첨부&nbsp;&nbsp;&nbsp;</label>
            		<input type="file">
            </div>
            <br><br>
            <div class="cancel-write">
            	<button type="submit" class="cancel-write-btn" onclick="'${contextPath}/orderList.do'">
            		<a class="font-FFF">작성하기</a>
            	</button>
            </div>
            <a class="modal_close_btn"><i class="fas fa-times"></i></a>
        </div>

	</section>

	<script>
		function modal(id) {
			var zIndex = 9999;
			var modal = document.getElementById(id);

			// 모달 div 뒤에 희끄무레한 레이어
			var bg = document.createElement('div');
			bg.setStyle({
				position : 'fixed',
				zIndex : zIndex,
				left : '0px',
				top : '0px',
				width : '100%',
				height : '100%',
				overflow : 'auto',
				// 레이어 색깔은 여기서 바꾸면 됨
				backgroundColor : 'rgba(0,0,0,0.4)'
			});
			document.body.append(bg);

			// 닫기 버튼 처리, 시꺼먼 레이어와 모달 div 지우기
			modal.querySelector('.modal_close_btn').addEventListener('click',
					function() {
						bg.remove();
						modal.style.display = 'none';
					});

			modal
					.setStyle({
						position : 'fixed',
						display : 'block',
						boxShadow : '0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19)',

						// 시꺼먼 레이어 보다 한칸 위에 보이기
						zIndex : zIndex + 1,

						// div center 정렬
						top : '50%',
						left : '50%',
						transform : 'translate(-50%, -50%)',
						msTransform : 'translate(-50%, -50%)',
						webkitTransform : 'translate(-50%, -50%)'
					});
		}

		// Element 에 style 한번에 오브젝트로 설정하는 함수 추가
		Element.prototype.setStyle = function(styles) {
			for ( var k in styles)
				this.style[k] = styles[k];
			return this;
		};

		document.getElementById('review-btn').addEventListener('click',
				function() {
					// 모달창 띄우기
					modal('review-modal');
				});

		document.getElementById('cancel-btn').addEventListener('click',
				function() {
					// 모달창 띄우기
					modal('cancel-modal');
				});
	</script>
</body>
</html>