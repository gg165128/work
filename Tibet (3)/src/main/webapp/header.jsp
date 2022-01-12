<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
  request.setCharacterEncoding("UTF-8");
%> 
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>티벳샵</title>
    
    <link rel="stylesheet" href="resources/fontawesome/css/all.css">
    <link rel="stylesheet" href="resources/reset.css">
    <link rel="stylesheet" href="resources/style.css">
    
    <script src="resources/js/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    
	<title>header</title>
</head>
<body>
	<header>
        <ul class="top-menu">
            <li>
                <a href="#">SERVICE</a>
            </li>
            <li>
                <a href="#">SEARCH</a>
            </li>
            <li>
                <a href="#">LOGIN</a>
            </li>
            <li>
                <a href="#">SIGN UP</a>
            </li>
            <li>
                <a href="#">MY PAGE</a>
            </li>
            <li>
                <a href="#">CART</a>
            </li>
        </ul>
        <div id="logo">THE TIBET</div>
        <ul class="gnb">
            <li class="hamburger">
                <i class="fa fa-bars"></i>
            </li>
            <li><a href="#">NEW</a>
                <ul class="sub">
                    <li><a href="">sub1</a></li>
                    <li><a href="">sub2</a></li>
                    <li><a href="">sub3</a></li>
                    <li><a href="">sub4</a></li>
                    <li><a href="">sub5</a></li>
                </ul>
            </li>
            <li><a href="#">OUTER</a>
                <ul class="sub">
                    <li><a href="">sub1</a></li>
                    <li><a href="">sub2</a></li>
                    <li><a href="">sub3</a></li>
                    <li><a href="">sub4</a></li>
                    <li><a href="">sub5</a></li>
                </ul>
            </li>
            <li><a href="#">TOP</a>
                <ul class="sub">
                    <li><a href="">sub1</a></li>
                    <li><a href="">sub2</a></li>
                    <li><a href="">sub3</a></li>
                    <li><a href="">sub4</a></li>
                    <li><a href="">sub5</a></li>
                </ul>
            </li>
            <li><a href="#">PANTS</a>
                <ul class="sub">
                    <li><a href="">sub1</a></li>
                    <li><a href="">sub2</a></li>
                    <li><a href="">sub3</a></li>
                    <li><a href="">sub4</a></li>
                    <li><a href="">sub5</a></li>
                </ul>
            </li>
            <li><a href="#">BAG</a>
                <ul class="sub">
                    <li><a href="">sub1</a></li>
                    <li><a href="">sub2</a></li>
                    <li><a href="">sub3</a></li>
                    <li><a href="">sub4</a></li>
                    <li><a href="">sub5</a></li>
                </ul>
            </li>
            <li><a href="#">ACC</a>
                <ul class="sub">
                    <li><a href="">sub1</a></li>
                    <li><a href="">sub2</a></li>
                    <li><a href="">sub3</a></li>
                    <li><a href="">sub4</a></li>
                    <li><a href="">sub5</a></li>
                </ul>
            </li>
            <li><a href="#">SALE</a>
                <ul class="sub">
                    <li><a href="">sub1</a></li>
                    <li><a href="">sub2</a></li>
                    <li><a href="">sub3</a></li>
                    <li><a href="">sub4</a></li>
                    <li><a href="">sub5</a></li>
                </ul>
            </li>
        </ul>
        <div class="drop-box"></div>
    </header>
    
    <script>
	    $(document).on('click', '.hamburger', function() {
	        if (!$(this).hasClass('.sub')) {
	           $(".sub").slideToggle(300);
	         }
	     })
    </script>
</body>
</html>