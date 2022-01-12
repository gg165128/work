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
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>티벳샵</title>

<link rel="stylesheet" href="resources/fontawesome/css/all.css">
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Roboto&display=swap" rel="stylesheet">

<script src="resources/js/jquery-3.6.0.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>

<title>header</title>
</head>
<body>
	<header>
		<ul class="top-menu">
			<!--  로그인시 로그아웃표시 -->
			<c:choose>
				<c:when test="${isLogOn==true and not empty memberInfo and memberInfo.user_id !='admin'}">
					<li><a href="${contextPath}/notice.do">SERVICE</a></li>
					<li><a href="${contextPath}/logout.do">LOGOUT</a></li>
					<li><a href="${contextPath}/memModifyForm.do">MYPAGE</a></li>
					<li><a href="${contextPath}/CART.do">CART</a></li>

				</c:when>
				<c:when test="${isLogOn==true and not empty memberInfo and memberInfo.user_id =='admin' }">
					<li><a href="${contextPath}/notice.do">SERVICE</a></li>
					<li><a href="${contextPath}/logout.do">LOGOUT</a></li>
					<li class="no_line"><a
						href="${contextPath}/admin/goods/adminMain.do">Manager</a></li>
				</c:when>
				<c:otherwise>
					<li><a href="${contextPath}/notice.do">SERVICE</a></li>
					<li><a href="${contextPath}/login.do">LOGIN</a></li>
					<li><a href="${contextPath}/signupForm.do">SIGN UP</a></li>
				</c:otherwise>
			</c:choose>



			<!-- 관리자로 로그인시 관리자표시 -->



			<li><button id="open-button">
					<i class="fas fa-search"></i>
				</button></li>

		</ul>
		<div id="logo">
			<a href="${contextPath}/main.do">THE TIBET</a>
		</div>
		<ul class="nav-table">
			<li><input type="checkbox" id="menuicon" class="menuicon01">
            <label for="menuicon">
                <span></span>
                <span></span>
                <span></span>
            </label></li>
      		<li class="nav-table-menu"><a href="${contextPath}/productlistNew.do">NEW</a></li>
			<li class="nav-table-menu"><a href="${contextPath}/outer.do">OUTER</a></li>
			<li class="nav-table-menu"><a href="${contextPath}/top.do">TOP</a></li>
			<li class="nav-table-menu"><a href="${contextPath}/productlistName${main_category_num}.do">PANTS</a></li>
			<li class="nav-table-menu"><a href="${contextPath}/bag.do">BAG</a></li>
			<li class="nav-table-menu"><a href="${contextPath}/acc.do">ACC</a></li>
			<li class="nav-table-menu"><a href="${contextPath}/sale.do">SALE</a></li>
<%--           <c:forEach var="list" items="${a}">
				<li class="nav-table-menu"><a href="${contextPath}/productlistName${list.main_category_num}.do">${list.main_category_name}</a></li>
			</c:forEach> --%>
		</ul>
		<div class="nav-table02">
			 <div class="nav-table01">
			 	<div class="submenu00" id="submenu10-0">
                    <ul>
                        <li><a></a></li>
                    </ul>
                </div>
			 	<div class="submenu01" id="submenu10-1">
                    <ul>
                        <li><a href="${contextPath}/productlistNew.do">신상품</a></li>
                    </ul>
                </div>
                <div class="submenu02" id="submenu10-1">
                    <ul>
                        <li><a href="">재킷&점퍼</a></li>
                        <li><a href="">코트</a></li>
                    </ul>
                </div>
                <div class="submenu03" id="submenu10-1">
                    <ul>
                        <li><a href="${contextPath}/top-1.do">티셔츠</a></li>
                        <li><a href="">셔츠</a></li>
                        <li><a href="">후드&맨투맨</a></li>
                        <li><a href="">니트&가디건</a></li>
                        <li><a href="">조끼</a></li>
                    </ul>
                </div>
                <div class="submenu04" id="submenu10-1">
                    <ul>
                        <li><a href="${contextPath}/productlistName.do">팬츠</a></li>
                        <li><a href="">쇼츠</a></li>
                    </ul>
                </div>
                <div class="submenu05" id="submenu10-1">
                    <ul>
                        <li><a href="">숄더백</a></li>
                        <li><a href="">백팩</a></li>
                        <li><a href="">크로스백</a></li>
                        <li><a href="">메선저백</a></li>
                    </ul>
                </div>
                <div class="submenu06" id="submenu10-1">
                    <ul>
                        <li><a href="">모자</a></li>
                        <li><a href="">반지&팔찌</a></li>
                        <li><a href="">선글라스</a></li>
                        <li><a href="">밸트</a></li>
                    </ul>
                </div>
                <div class="submenu07" id="submenu10-1">
                    <ul>
                        <li><a href="">세일</a></li>
                    </ul>
                </div>
			 </div>
		</div>
		<div class="drop-box"></div>
	</header>

	<div class="modal">
		<div class="modal_body">
			<h1>SEARCH</h1>
			<div class="close">
				<button id="close-button">
					<i class="fas fa-times"></i>
				</button>
			</div>
			<div class="wraps">
				<div class="search">
					<input type="text" class="searchTerm"
						placeholder="What are you looking for?">
					<button type="submit" class="searchButton">
						<i class="fas fa-search"></i>
					</button>
				</div>
			</div>
			<div class="recommend-items">
				<ul>
					<li><a href="#" class="font-777"># 다가오는 겨울에 함께 하기 좋은 윈터 룩</a></li>
					<li><a href="#" class="font-777"># 오늘의 신상 할인 5%~10%</a></li>
					<li><a href="#" class="font-777"># 휘뚜루마뚜루 착용할 수 있는 데일리 니트</a></li>
					<li><a href="#" class="font-777"># 바지 맛집! 인기팬츠 보러가기!</a></li>
				</ul>
			</div>
		</div>
	</div>

	<script>
	$(document).ready(function(){
        $("input:checkbox").on('click', function(){
            if($(this).prop('checked')){
                $(".nav-table02").css({"display":"block"});
            } else {
                $(".nav-table02").css({"display":"none"});
            }
        })
    });

		$("#open-button").click(function() {
			$(".modal").attr("style", "display:block");
		});
		$("#close-button").click(function() {
			$(".modal").attr("style", "display:none");
		});
		
		$('html, body').css({'overflow': 'hidden', 'height': '100%'}); // 모달팝업 중 html,body의 scroll을 hidden시킴 
		$('#element').on('scroll touchmove mousewheel', function(event) { // 터치무브와 마우스휠 스크롤 방지     
			event.preventDefault();     
			event.stopPropagation();     
			return false; 
		});
		
		$('html, body').css({'overflow': 'auto', 'height': '100%'}); //scroll hidden 해제 $('#element').off('scroll touchmove mousewheel'); // 터치무브 및 마우스휠 스크롤 가능
	</script>

</body>
</html>