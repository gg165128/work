<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    
    <script src="resources/js/jquery-3.6.0.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    
   <title>footer</title>
</head>
<body>
   <footer>
        <ul> COMMUNITY
            <li>
                <a href="${contextPath}/notice.do">공지사항</a>
            </li>

            <li>
                <a href="${contextPath}/qna.do">질문/답변</a>
            </li>
            <li>
                <a href="${contextPath}/membership.do">멤버쉽 안내</a>
            </li>
        </ul>
        <ul> MY SHOP
            <li>
                <a href="${contextPath}/login.do">로그인</a>
            </li>
            <li>
                <a href="${contextPath}/signup.do">회원가입</a>
            </li>
            <li>
                <a href="${contextPath}/cart.do">장바구니</a>
            </li>
            <li>
                <a href="${contextPath}/order.do">주문조회</a>
            </li>
        </ul>
        <ul> PRODUCT
            <li>
                <a href="${contextPath}/outer.do">OUTER</a>
            </li>
            <li>
                <a href="${contextPath}/top.do">TOP</a>
            </li>
            <li>
                <a href="${contextPath}/pants.do">PANTS</a>
            </li>
            <li>
                <a href="${contextPath}/bag.do">BAG</a>
            </li>
            <li>
                <a href="${contextPath}/acc.do">ACC</a>
            </li>	
        </ul>
        <dl>CS CENTER <br> 0123-4567 <br>
            <dt>평일</dt>
            <dd>오전 11:00 ~ 오후 06:00</dd>
            <dt>점심</dt>
            <dd>오후 12:00 ~ 오후 01:00</dd>
            <dt>휴무</dt>
            <dd>토. 일. 공휴일</dd>
            <dt>메일</dt>
            <dd>thetibet@gmail.com</dd>
        </dl>
        <dl>BANK INFO <br>
            <dt>기업은행</dt>
            <dd>012-345678-90-123</dd>
            <dt>예금주</dt>
            <dd>(주) The Tibet</dd>
        </dl>
        <dl>RETURN & EXCHANGE <br>
            <address>대전광역시 서구 1160</address>
            <dt>CJ 대한통운 택배</dt>
            <dd>1588-1255</dd>
            <dd>CJ대한통운 택배를 이용해주세요</dd>
        </dl>
    </footer>
</body>
</html>