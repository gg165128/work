<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
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
<title>관리자-조회</title>
<link rel="stylesheet" href="resources/css/admin/admin-main.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Roboto&display=swap"
	rel="stylesheet">

<script>
        function selectAll(selectAll)  {
         const checkboxes 
            = document.getElementsByName('box');
  
        checkboxes.forEach((checkbox) => {
            checkbox.checked = selectAll.checked;
            })
        }
    </script>

</head>
<body>
	<section>
		<div class="total-box">
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
			<div class="content">
				<div class="table-title">
					<table>회원 정보 _ 조회
					</table>
				</div>
				<br>
				<div class="search">
					<p class="table-search03">
						<select>
							<option value="">---선택---</option>
							<option value="공개">회원</option>
							<option value="비공개">관리자</option>
						</select>
					</p>
					<p class="table-search01">
						<input type="date" name="list-start" value="" min="2000-01-01"
							max="2030-12-31"> - <input type="date" name="list-end"
							value="" min="2000-01-01" max="2030-12-31">
					</p>
					<p class="table-search02">
						<input class="search-box" type="text" name="keyword"> 
						<input class="search-btn" type="submit" value="검색">
					</p>
				</div>
				<br>
				<div class="table-cont">
					<div class="table-cont-btn">
						<button type="button"
							onclick="location.href='${contextPath}/adminregist.do'"
							class="btn-text b01">등록</button>
						<button type="button"
							onclick="location.href='${contextPath}/adminmodify.do'"
							class="btn-text b02">수정</button>
						<button type="button"
							onclick="alert('삭제 하시겠습니까?'); location.href='';"
							class="btn-text b03">삭제</button>
					</div>
				</div>
				<br>
				<div class="user">
					<table class="user-look">
						<thead class="user-look-head">
							<tr>
								<th class="checked"><input type="checkbox"
									value="selectall" name="box" onclick="selectAll(this)" /></th>
								<th class="head-num">No.</th>
								<th>ID</th>
								<th>PW</th>
								<th>Name</th>
								<th>Birth</th>
								<th>Phone</th>
								<th>Email</th>
								<th>Zip</th>
								<th>Addr1</th>
								<th>Addr2</th>
								<th>Gen</th>
								<th>MemShip</th>
								<th>JoinD.</th>
								<th>Reserves</th>
								<th>Mailsend</th>
							</tr>
						</thead>
					<tbody class="user-look-body">
							<c:forEach var="adminmember" items="${adminmembersList}">
								<tr>
									<td class="checked"><input type="checkbox" name="box" /></td>
									<c:set var="i" value="${i+1 }"/>
									<td class="head-num">${i }</td>
									<td>${adminmember.user_id }</td>
									<td>${adminmember.user_pw }</td>
									<td>${adminmember.user_name }</td>
									<td>${adminmember.user_birth }</td>
									<td>${adminmember.user_phone }</td>
									<td>${adminmember.user_email }</td>
									<td>${adminmember.user_zip }</td>
									<td>${adminmember.user_addr1 }</td>
									<td>${adminmember.user_addr2 }</td>
									<td>${adminmember.user_gender }</td>
									<td>${adminmember.user_membership }</td>
									<td><fmt:formatDate value="${adminmember.user_joinDate }" pattern="yyyy.MM.dd" /></td>
									<td>${adminmember.user_point }</td>
									<td>${adminmember.user_mailSend }</td>
								</tr>
							</c:forEach> 
						</tbody>
					</table>
					<div class="paging">
						<a href="#" class="bt"><<</a> <a href="#" class="bt"><</a> <a
							href="#" class="num-on">1</a> <a href="#" class="num">2</a> <a
							href="#" class="bt">></a> <a href="#" class="bt">>></a>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>