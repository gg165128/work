<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 사이드바메뉴</title>
</head>
<link rel="stylesheet" href="resources/css/admin/admin-side.css">

<body>
	<div class="sidebar">
				<table>
					<ul>회원 정보
					</ul>
					<li><a href="${contextPath}/adminmain.do">조회</a></li>
				</table>
				<table>
					<ul>상품
					</ul>
					<li><a href="${contextPath}/adminproduct.do">상품 상세</a></li>
				</table>
				<table>
					<ul>주문
					</ul>
					<li><a href="${contextPath}/#">획인</a></li>
					<li><a href="">취소, 반품</a></li>
					<li><a href="">교환</a></li>
				</table>
				<table>
					<ul>카테고리
					</ul>
					<li><a href="${contextPath}/#">등록</a></li>
				</table>
				<table>
					<ul>게사판
					</ul>
					<li><a href="${contextPath}/adminnotice.do">공지사항</a></li>
					<li><a href="${contextPath}/adminqna.do">문의(Q&A)</a></li>
					<li><a href="">구매 리뷰</a></li>
				</table>
			</div>
</body>
</html>