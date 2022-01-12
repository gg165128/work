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
<title>관리자-수정</title>
<link rel="stylesheet" href="resources/css/admin/admin-modify.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Roboto&display=swap"
	rel="stylesheet">

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
					<table>회원 정보 _ 수정
					</table>
				</div>



				<div class="qna-ask">
					<div class="form">
						<div class="qna-ask-form">
							<label>이름</label> <input type="text" class="input" />
						</div>
						<div class="qna-ask-form">
							<label>아이디</label> <input type="text" class="input" />
						</div>
						<div class="qna-ask-form">
							<label>비밀번호</label> <input type="password" class="input"
								minlength="8" maxlength="16">
						</div>
						<div class="qna-ask-form">
							<label>전화번호</label> <input type="text" name="cellPhone"
								id="cellPhone" maxlength="13" />
							<script>
                            function autoHypenPhone(str){
                                str = str.replace(/[^0-9]/g, '');
                                var tmp = '';
                                if( str.length < 4){
                                    return str;
                                }else if(str.length < 7){
                                    tmp += str.substr(0, 3);
                                    tmp += '-';
                                    tmp += str.substr(3);
                                    return tmp;
                                }else if(str.length < 11){
                                    tmp += str.substr(0, 3);
                                    tmp += '-';
                                    tmp += str.substr(3, 3);
                                    tmp += '-';
                                    tmp += str.substr(6);
                                    return tmp;
                                }else{              
                                    tmp += str.substr(0, 3);
                                    tmp += '-';
                                    tmp += str.substr(3, 4);
                                    tmp += '-';
                                    tmp += str.substr(7);
                                    return tmp;
                                }
                                return str;
                            }
                            var cellPhone = document.getElementById('cellPhone');
                            cellPhone.onkeyup = function(event){
                            event = event || window.event;
                            var _val = this.value.trim();
                            this.value = autoHypenPhone(_val) ;
                            }
                        </script>
						</div>
						<div class="qna-ask-form">
							<label>Email</label> <input type="email" name="email" />
						</div>
						<div class="qna-ask-form01">
							<label for="">주소</label> <input type="text" id="sample4_postcode">
							<button type="button" onclick="location.href='#'"
								class="btn-text1">우편번호</button>
							<div>
								<label for="" class="text01"></label> <input type="text"
									id="sample4_roadAddress" readonly="readonly">
							</div>
							<div>
								<label for="" class="text01"></label> <input type="text"
									id="sample4_jibunAddress" readonly="readonly">
							</div>
							<div>
								<label for="" class="text01"></label> <input type="text"
									id="sample4_detailAddress"><br>
							</div>
						</div>
					</div>
				</div>
				<div class="box-btn">
					<div class="box-btn-text">
						<button type="button"
							onclick="button_event01(); location.href='${contextPath}/adminmain.do';"
							class="btn-text">등록</button>
						<button type="button"
							onclick="button_event02(); location.href='${contextPath}/adminmain.do';"
							class="btn-text">취소</button>
					</div>
				</div>

			</div>
		</div>
	</section>
</body>
</html>