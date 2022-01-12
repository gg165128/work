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
<title>게시판-Q&A</title>
<link rel="stylesheet" href="resources/css/admin/admin-qna.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
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
					<table>게시판 _ 문의(Q&A)
					</table>
				</div>
				<div class="table-cont">
					<div class="table-cont-btn">
						<button type="button"
							onclick="button_event01(); location.href='';"
							class="btn-text b03">삭제</button>
					</div>
				</div>
				<div class="service-qna">
					<table class="service-qna-front">
						<thead class="service-qna-title mgb15">
							<tr>
								<th><input type="checkbox" value="selectall" name="box"
									onclick="selectAll(this)" /></th>
								<th class="not-no">NO.</th>
								<th>상품</th>
								<th class="not-tit">제목</th>
								<th class="not-nm">작성자</th>
								<th class="not-date">작성일</th>
								<th>&nbsp;</th>
							</tr>
						</thead>
						<tbody class="service-qna-content mgb20">
							<tr>
								<td><input type="checkbox" name="box" /></td>
								<td class="not-no">4</td>
								<td><img src="img/1-1.jpg" alt="" width="70px"></td>
								<td class="mgb20-txt"><i class="fas fa-lock"></i> <a
									href="#">Q&A 글입니다.</a></td>
								<td class="not-nm">test01@test.com</td>
								<td class="not-date">2021-11-26</td>
								<td><input type="button" value="답글" class="inpbtn"
									onclick="location.href='adminqnaregist.do'"></td>
							</tr>
							<tr>
								<td><input type="checkbox" name="box" /></td>
								<td class="not-no">&nbsp;</td>
								<td><i class="fas fa-arrow-right"></i></td>
								<td class="mgb20-txt"><i class="fas fa-lock"></i> <a
									href="#">답글 글입니다.</a></td>
								<td class="not-nm">tibet 관리자</td>
								<td class="not-date">2021-11-26</td>
								<td><input type="button" value="수정" class="inpbtn01"
									onclick="location.href='adminqnamodify.do'"></td>
							</tr>
							<tr>
								<td><input type="checkbox" name="box" /></td>
								<td class="not-no">3</td>
								<td><img src="img/1-1.jpg" alt="" width="70px"></td>
								<td class="mgb20-txt"><i class="fas fa-lock-open"></i> <a
									href="#">Q&A 글입니다.</a></td>
								<td class="not-nm">test02@test.com</td>
								<td class="not-date">2021-11-26</td>
								<td><input type="button" value="답글" class="inpbtn"
									onclick="location.href='adminqnaregist.do'"></td>
							</tr>
							<tr>
								<td><input type="checkbox" name="box" /></td>
								<td class="not-no">&nbsp;</td>
								<td><i class="fas fa-arrow-right"></i></td>
								<td class="mgb20-txt"><i class="fas fa-lock-open"></i> <a
									href="#">답글 글입니다.</a></td>
								<td class="not-nm">tibet 관리자</td>
								<td class="not-date">2021-11-26</td>
								<td><input type="button" value="수정" class="inpbtn01"
									onclick="location.href='adminqnamodify.do'"></td>
							</tr>
							<tr>
								<td><input type="checkbox" name="box" /></td>
								<td class="not-no">&nbsp;</td>
								<td><i class="fas fa-arrow-right"></i></td>
								<td class="mgb20-txt"><i class="fas fa-lock-open"></i> <a
									href="#">답글 글입니다.</a></td>
								<td class="not-nm">tibet 관리자</td>
								<td class="not-date">2021-11-26</td>
								<td><input type="button" value="수정" class="inpbtn01"
									onclick="location.href='adminqnamodify.do'"></td>
							</tr>
							<tr>
								<td><input type="checkbox" name="box" /></td>
								<td class="not-no">2</td>
								<td><img src="img/1-1.jpg" alt="" width="70px"></td>
								<td class="mgb20-txt"><i class="fas fa-lock"></i> <a
									href="#">Q&A 글입니다.</a></td>
								<td class="not-nm">test01@test.com</td>
								<td class="not-date">2021-11-26</td>
								<td><input type="button" value="답글" class="inpbtn"
									onclick="location.href='adminqnaregist.do'"></td>
							</tr>
							<tr>
								<td><input type="checkbox" name="box" /></td>
								<td class="not-no">1</td>
								<td><img src="img/1-1.jpg" alt="" width="70px"></td>
								<td class="mgb20-txt"><i class="fas fa-lock-open"></i> <a
									href="#">Q&A 글입니다.</a></td>
								<td class="not-nm">test01@test.com</td>
								<td class="not-date">2021-11-26</td>
								<td><input type="button" value="답글" class="inpbtn"
									onclick="location.href='adminqnaregist.do'"></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="paging">
					<a href="#" class="bt"><<</a> <a href="#" class="bt"><</a> <a
						href="#" class="num-on">1</a> <a href="#" class="num">2</a> <a
						href="#" class="bt">></a> <a href="#" class="bt">>></a>
				</div>
			</div>
		</div>
	</section>
</body>
</html>