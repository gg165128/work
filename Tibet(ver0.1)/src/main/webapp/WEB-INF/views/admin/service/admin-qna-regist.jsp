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
<title>문의-답글</title>
<link rel="stylesheet" href="resources/css/admin/admin-qna-regist.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&family=Noto+Sans+KR&family=Roboto&display=swap"
	rel="stylesheet">


<script>
        function button_event01(){
          
        if (confirm("등록 하시겠습니까?") == false){    //확인
            var form = document.test;
            form.submit();
        
        }else{   //취소
            return;
          }
        }
    </script>
<script>
        function button_event02(){
          
        if (confirm("취소 하시겠습니까?") == false){    //나가기
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
					<table>게시판 _ 문의(답글)
					</table>
				</div>

				<div class="qna-block">
					<div class="qna-block-title">
						<thead>
							<th>제목</th>
							<input type="text" class="block-title-input">
						</thead>
					</div>
					<br> <br>
					<div class="qna-block-writer">
						<tbody>
							<td>작성자</td>
							<input type="text" class="block-title-input">
						</tbody>
					</div>
					<br>
					<div class="qna-block-open">
						<td>공개 여부</td> <input type="radio" name="blimit" id="blimit01"
							value="1" checked="checked" /> <label for="blimit01">공개</label>
						&nbsp; <input type="radio" name="blimit" id="blimit02" value="2">
						<label for="blimit02">비공개</label>
					</div>
					<br>
					<div class="qna-block-cont">
						<tbody>
							<td>내용</td>
							<textarea name="content" id="" cols="80" rows="20"></textarea>
						</tbody>
					</div>

					<br> <br>
					<div class="qna-block-none"></div>
				</div>
				<br>
				<div class="box-btn">
					<div class="box-btn-text">
						<button type="button"
							onclick="button_event01(); location.href='adminqna.do';"
							class="btn-text">등록</button>
						<button type="button"
							onclick="button_event02(); location.href='adminqna.do';"
							class="btn-text">취소</button>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>