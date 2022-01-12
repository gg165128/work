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
<title>관리자-상품</title>
<link rel="stylesheet" href="resources/css/admin/admin-product.css">
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
        
        if (confirm("등록 하시겠습니까?") == false){    //확인
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
					<table>상품 _ 상품 상세
					</table>
				</div>
				<div class="table-cont">
					<div class="table-cont-btn">
						<p class="table-search03">
							<label class="cate" for="">카테고리</label> <label for="">대분류</label>
							<select class="cate-sel" onchange="categoryChange(this)">
								<option value="test">---선택---</option>
								<option value="a">NEW</option>
								<option value="b">OUTER</option>
								<option value="c">TOP</option>
								<option value="d">PANTS</option>
								<option value="e">BAG</option>
								<option value="f">ACC</option>
								<option value="g">SALE</option>
							</select> <label class="cate-low" for="">소분류</label> <select id="good">
								<option>---선택---</option>
							</select>
							<script class="cate-low-table">
                        function categoryChange(e) {
                            var good_test = ["---선택---"];
                            var good_a = ["---선택---","신상품"];
                            var good_b = ["---선택---","재킷&점퍼","코트"];
                            var good_c = ["---선택---","티셔츠","셔츠","후드&맨투맨","니트&가디건","조끼"];
                            var good_d = ["---선택---","팬츠","쇼츠"];
                            var good_e = ["---선택---","숄더백","백팩","크로스백","메신저백"];
                            var good_f = ["---선택---","모자","반지&팔찌","선글라스","벨트"];
                            var good_g = ["---선택---","Sale"];
                            var target = document.getElementById("good");
                        
                            if(e.value == "a") var d = good_a;
                            else if(e.value == "b") var d = good_b;
                            else if(e.value == "c") var d = good_c;
                            else if(e.value == "d") var d = good_d;
                            else if(e.value == "e") var d = good_e;
                            else if(e.value == "f") var d = good_f;
                            else if(e.value == "g") var d = good_g;
                            else if(e.value ==  "test") var d = good_test;
                        
                            target.options.length = 0;
                        
                            for (x in d) {
                                var opt = document.createElement("option");
                                opt.value = d[x];
                                opt.innerHTML = d[x];
                                target.appendChild(opt);
                            }
                        }
                        </script>
						</p>
						<button type="button"
							onclick="location.href='adminprodregist.do'"
							class="btn-text b01">등록</button>
						<button type="button"
							onclick="location.href='adminprodmodify.do'"
							class="btn-text b02">수정</button>
						<button type="button"
							onclick="button_event01(); location.href='';"
							class="btn-text b03">삭제</button>
					</div>
				</div>
				<div class="content01">
					<table class="content01-table">
						<thead class="content-thead mgb10">
							<tr class="content-thead-tr">
								<th><input type="checkbox" value="selectall" name="box"
									onclick="selectAll(this)" /></th>
								<th class="cont-a01">No.</th>
								<th>상품</th>
								<th>상품명</th>
								<th>등록상태</th>
								<th>상품할인제공</th>
								<th>상품가격</th>
								<th>상품사이즈</th>
								<th>상품색상</th>
							</tr>
						</thead>
						<tbody class="content-tbody mgb10">
							<tr class="content-tbody-tr01">
								<td><input type="checkbox" name="box" /></td>
								<td class="cont-a01">1</td>
								<td><img src="img/1-1.JPG" alt="" width="90px"></td>
								<td>상품명</td>
								<td>판매가능</td>
								<td>할인가능</td>
								<td>50,000</td>
								<td>S,L,LX,2XL</td>
								<td>검정</td>
							</tr>
							<tr class="content-tbody-tr01">
								<td><input type="checkbox" name="box" /></td>
								<td class="cont-a01">1</td>
								<td><img src="img/1-1.JPG" alt="" width="90px"></td>
								<td>상품명</td>
								<td>판매가능</td>
								<td>할인가능</td>
								<td>50,000</td>
								<td>S,L,LX,2XL</td>
								<td>옵션형태</td>
							</tr>
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