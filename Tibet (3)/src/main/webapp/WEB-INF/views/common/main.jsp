<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>티벳샵</title>
    
    <link rel="stylesheet" href="resources/fontawesome/css/all.css">
    <link rel="stylesheet" href="resources/css/reset.css">
    <link rel="stylesheet" href="resources/css/style.css">


    <script src="resources/js/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="resources/slick/slick.css">
    <link rel="stylesheet" href="resources/slick/slick-theme.css">
    <script src="resources/slick/slick.min.js"></script>    
</head>
<body>
    <section>        
        <div class="slider">
            <div>
                <img src="resources/img/main1.png">
            </div>
            <div>
                <img src="resources/img/main2.png">
            </div>
            <div>
                <img src="resources/img/main1.png">
            </div>
            <div>
                <img src="resources/img/main2.png">
            </div>
        </div>

        <article class="slider2">
            <div>
                <img src="resources/img/main2.png">
            </div>
            <div>
                <img src="resources/img/main1.png">
            </div>
            <div>
                <img src="resources/img/main2.png">
            </div>
            <div>
                <img src="resources/img/main1.png">
            </div>
        </article>
        <article class="new-wrap">
            <div class="new">
                <img src="resources/img/main3.png" alt="">
                <a class="new-btn" href="">New Item</a>
            </div>
        </article>

        <div class="container">
            <div class="item"></div>
            <div class="item"></div>
            <div class="item"></div>
            <div class="item"></div>
            <div class="item"></div>
            <ul>
                <li><a href="">1</a></li>
                <li><a href="">2</a></li>
                <li><a href="">3</a></li>
                <li><a href="">4</a></li>
                <li><a href="">5</a></li>
                <li><a href="">6</a></li>
                <li><a href="">7</a></li>
                <li><a href="">8</a></li>
            </ul>
        </div>
    </section>
    
    <script>
		$(function(){
	        $('.slider').slick({
	            slide: 'div',        //슬라이드 되어야 할 태그 ex) div, li 
	            infinite : true,     //무한 반복 옵션     
	            slidesToShow : 1,        // 한 화면에 보여질 컨텐츠 개수
	            slidesToScroll : 1,        //스크롤 한번에 움직일 컨텐츠 개수
	            speed : 100,     // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
	            arrows : false,         // 옆으로 이동하는 화살표 표시 여부
	            dots : true,         // 스크롤바 아래 점으로 페이지네이션 여부
	            autoplay : true,            // 자동 스크롤 사용 여부
	            autoplaySpeed : 10000,         // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
	            pauseOnHover : true,        // 슬라이드 이동 시 마우스 호버하면 슬라이더 멈추게 설정
	            vertical : false,        // 세로 방향 슬라이드 옵션
	            prevArrow : "<button type='button' class='slick-prev'>Previous</button>",        // 이전 화살표 모양 설정
	            nextArrow : "<button type='button' class='slick-next'>Next</button>",        // 다음 화살표 모양 설정
	            dotsClass : "slick-dots",     //아래 나오는 페이지네이션(점) css class 지정
	            draggable : true,     //드래그 가능 여부 
	            
	            responsive: [ // 반응형 웹 구현 옵션
	                {  
	                    breakpoint: 960, //화면 사이즈 960px
	                    settings: {
	                        //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
	                        slidesToShow:3 
	                    } 
	                },
	                { 
	                    breakpoint: 768, //화면 사이즈 768px
	                    settings: {    
	                        //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
	                        slidesToShow:2 
	                    } 
	                }
	            ]
	
	        });
	      })
	
	      $(function(){
	        $('.slider2').slick({
	            slide: 'div',        //슬라이드 되어야 할 태그 ex) div, li 
	            infinite : true,     //무한 반복 옵션     
	            slidesToShow : 1,        // 한 화면에 보여질 컨텐츠 개수
	            slidesToScroll : 1,        //스크롤 한번에 움직일 컨텐츠 개수
	            speed : 100,     // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
	            arrows : true,         // 옆으로 이동하는 화살표 표시 여부
	            dots : false,         // 스크롤바 아래 점으로 페이지네이션 여부
	            autoplay : false,            // 자동 스크롤 사용 여부
	            autoplaySpeed : 10000,         // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
	            pauseOnHover : true,        // 슬라이드 이동 시 마우스 호버하면 슬라이더 멈추게 설정
	            vertical : false,        // 세로 방향 슬라이드 옵션
	            prevArrow : "<button type='button' class='slick-prev'>Previous</button>",        // 이전 화살표 모양 설정
	            nextArrow : "<button type='button' class='slick-next'>Next</button>",        // 다음 화살표 모양 설정
	            dotsClass : "slick-dots",     //아래 나오는 페이지네이션(점) css class 지정
	            draggable : true,     //드래그 가능 여부 
	            
	            responsive: [ // 반응형 웹 구현 옵션
	                {  
	                    breakpoint: 960, //화면 사이즈 960px
	                    settings: {
	                        //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
	                        slidesToShow:3 
	                    } 
	                },
	                { 
	                    breakpoint: 768, //화면 사이즈 768px
	                    settings: {    
	                        //위에 옵션이 디폴트 , 여기에 추가하면 그걸로 변경
	                        slidesToShow:2 
	                    } 
	                }
	            ]
	
	        });
	      })
    </script>
</body>
</html>