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
<title>게시판-공지사항</title>
<link rel="stylesheet" href="resources/css/admin/admin-notice.css">
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
<script>
        function button_event01(){
          
        if (confirm("선택한 항목을 삭제 하시겠습니까?") == false){    //확인
            var form = document.test;
            form.submit();
        
        }else{   //취소
            return;
          }
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
					<table>게시판 _ 공지사항
					</table>
				</div>
				<div class="table-cont">
					<div class="table-cont-btn">
						<button type="button"
							onclick="location.href='adminnoticeregist.do'"
							class="btn-text b01">등록</button>
						<button type="button"
							onclick="location.href='adminnoticemodify.do'"
							class="btn-text b02">수정</button>
						<button type="button"
							onclick="button_event01(); location.href='';"
							class="btn-text b03">삭제</button>
					</div>
				</div>
				<div class="service-notice">
					<table class="service-notice-front">
						<thead class="service-notice-title mgb15">
							<tr>
								<th><input type="checkbox" value="selectall" name="box"
									onclick="selectAll(this)" /></th>
								<th class="not-no">NO.</th>
								<th class="not-tit">제목</th>
								<th class="not-nm">작성자</th>
								<th class="not-date">작성일</th>
							</tr>
						</thead>
						<tbody class="service-notice-content mgb20">
							<c:forEach var="adminnotice" items="${adminnoticesList }">
								<tr>
									<td><input type="checkbox" name="box" name="box" /></td>
									<c:set var = "i" value"${i+1 }"/>
									<td class="not-no">${i }</td>
									<td class="mgb20-txt"><a href="#">${adminnotice.notice_title }</a></td>
									<td class="not-nm">${adminnotice.user_id }</td>
									<td class="not-date">${notice_date }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div class="paging">
					<a href="${contextPath}/#" class="bt"><<</a> <a
						href="${contextPath}/#" class="bt"><</a> <a
						href="${contextPath}/#" class="num-on">1</a> <a href="#"
						class="num">2</a> <a href="#" class="bt">></a> <a href="#"
						class="bt">>></a>
				</div>
			</div>
		</div>
	</section>
</body>
</html>