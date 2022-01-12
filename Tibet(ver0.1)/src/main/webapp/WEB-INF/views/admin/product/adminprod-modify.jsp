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
<title>상품 수정</title>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" href="resources/css/admin/admin-prod-modify.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Roboto&display=swap"
	rel="stylesheet">

<script>
        $(document).ready (function () {                
            $('.btnAdd1').click (function () {                                        
                $('.buttons1').append (                        
                    '<input type="text" name="txt"> <input type="button" class="btnRemove" value="삭제"><br>'                    
                ); // end append                            
                $('.btnRemove').on('click', function () { 
                    $(this).prev().remove (); // remove the textbox
                    $(this).next ().remove (); // remove the <br>
                    $(this).remove (); // remove the button
                });
            }); // end click                                            
        }); // end ready 
    </script>
<script>
        $(document).ready (function () {                
            $('.btnAdd2').click (function () {                                        
                $('.buttons2').append (                        
                    '<input type="text" name="txt"> <input type="button" class="btnRemove" value="삭제"><br>'                    
                ); // end append                            
                $('.btnRemove').on('click', function () { 
                    $(this).prev().remove (); // remove the textbox
                    $(this).next ().remove (); // remove the <br>
                    $(this).remove (); // remove the button
                });
            }); // end click                                            
        }); // end ready 
    </script>

<script>
        function button_event01(){
        
	        if (confirm("수정 하시겠습니까?") == false){    //확인
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
					<table>상품 _ 수정
					</table>
				</div>
				<div class="contents01">
					<div class="contents01-title">
						<ul>
							<li id="mgb10" class="mgb20">상품명
								</h1>
						</ul>
						<div>
							<input type="text">
						</div>
					</div>
					<div class="contents01-cont">
						<div class="contents01-img">
							<ul>
								<li id="mgb10">상품 이미지</li>
							</ul>
							<input type="file" id="u_file" name="u_file" accept="image/*">
							<ul>
								<div id="imgViewArea" style="margin-top: 10px; display: none;">
									<img id="imgArea" style="width: 60%; height: 60%;"
										onerror="imgAreaError()" />
								</div>
								<script type="text/javascript">
                                // 콘텐츠 수정 :: 사진 수정 시 이미지 미리보기
                                function readURL(input) {
                                    if (input.files && input.files[0]) {
                                        var reader = new FileReader();
                                        reader.onload = function(e) {
                                            $('#imgArea').attr('src', e.target.result); 
                                        }
                                        reader.readAsDataURL(input.files[0]);
                                    }
                                }
                            
                                $(":input[name='u_file']").change(function() {
                                    if( $(":input[name='u_file']").val() == '' ) {
                                        $('#imgArea').attr('src' , '');  
                                    }
                                    $('#imgViewArea').css({ 'display' : '' });
                                    readURL(this);
                                });
                            
                                // 이미지 에러 시 미리보기영역 미노출
                                function imgAreaError(){
                                    $('#imgViewArea').css({ 'display' : 'none' });
                                }
                            </script>
								<li id="mgb10">상품 상세 페이지</li>
							</ul>
							<input type="file" name=""> <input type="file" name="">
							<input type="file" name="">
						</div>
						<div class="contents01-op01">
							<ul>
								<li id="mgb10">등록 상태</li>
								<br>
							</ul>
							<select name="" id="select01" class="op01-op01">
								<option value="선택">---선택---</option>
								<option value="가능">가능</option>
								<option value="불가능">불가능</option>
							</select>
							<ul>
								<li id="mgb10">할인 제공</li>
								<br>
							</ul>
							<select name="" id="select01" class="op01-op01">
								<option value="선택">---선택---</option>
								<option value="가능">가능</option>
								<option value="불가능">불가능</option>
							</select>
							<ul>
								<li id="mgb10">상품 가격</li>
								<br>
							</ul>
							<input type="text" class="op01-op01">
						</div>
						<div class="contents01-op02">
							<ul>
								<li class="contents01-op02-item" id="mgb10">상품 옵션</li>
							</ul>
							<div class="contents01-op02-item01">
								<div class="table-op02-it01">
									<label for="">사이즈 옵션</label><br>
									<div class="buttons1">
										<input class="table-op02-it03" type="text" name="txt"
											placeholder="상품의 사이즈를 입력"> <input type="button"
											class="btnAdd1" value="추가"><br>
									</div>
								</div>
							</div>
							<div class="contents01-op02-item02">
								<div class="table-op02-it01">
									<label for="">색상 옵션</label><br>
									<div class="buttons2">
										<input class="table-op02-it03" type="text" name="txt"
											placeholder="상품의 색상을 입력"> <input type="button"
											class="btnAdd2" value="추가"><br>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="box-btn">
					<div class="box-btn-text">
						<button type="button"
							onclick="button_event01(); location.href='adminproduct.do';"
							class="btn-text">수정</button>
						<button type="button"
							onclick="button_event02(); location.href='adminproduct.do';"
							class="btn-text">취소</button>
					</div>
				</div>
			</div>
		</div>
	</section>
</body>
</html>