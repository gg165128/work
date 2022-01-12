<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

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
<title>service</title>
<link rel="stylesheet" href="resources/css/reset.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/css/qna.css">
<link rel="stylesheet" href="resources/fontawesome/css/all.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
	<section>
		<div class="service">
			<div class="service-front-table mgb10">
				<div class="service-front-fonter-qna">
					<a href="${contextPath}/qna.do">Q&A</a>
				</div>
				<div class="service-front-fonter-notice">
					<a href="${contextPath}/notice.do" class="font-999">공지사항</a>
				</div>

				<div class="service-front-fonter-member">
					<a href="${contextPath}/membership.do" class="font-999">멤버쉽 안내</a>
				</div>
			</div>

			<div class="box-btn">
				<div class="box-btn-text">
					<c:if test="${isLogOn eq true}">
						<button type="button"
							onclick="location.href='${contextPath}/qnaWrite.do'"
							class="btn-text">글쓰기</button>
					</c:if>
					<c:if test="${isLogOn eq false || isLogOn eq null}">
						<button type="button"
							onclick="needLogin()"
							class="btn-text">글쓰기</button>
					</c:if>
				</div>
			</div>

			<div class="service-qna">
				<table class="service-qna-front">
					<thead class="service-qna-title mgb15">
						<tr>
							<th class="qna-no">번호</th>
							<th class="qna-type">문의 유형</th>
							<th class="qna-tit">제목</th>
							<th class="qna-nm">작성자</th>
							<th class="qna-date">작성일</th>
						</tr>
					</thead>
					<tbody class="service-qna-content mgb20">
						<c:choose>
							<c:when test="${fn:length(list)>0}">
							
								<c:forEach items="${list }" var="bList">
									<tr>
										<td scope="row">${bList.num}</td>
										<c:if test="${bList.qna_title eq '배송문의'}">
											<td class="qna-type-td">배송</td>
										</c:if>
										<c:if test="${bList.qna_title eq '상품문의'}">
											<td class="qna-type-td">상품</td>
										</c:if>
										<c:choose>						
											<c:when test="${bList.qna_lock eq 0}">
												<c:if test="${isLogOn eq true}">
													<td class="qna-tit-td"><a href="${contextPath}/qnaDetail${bList.qna_num}.do"><i class="fas fa-lock-open"></i>&nbsp;&nbsp;${bList.qna_title}</a></td>
												</c:if>
												<c:if test="${isLogOn eq false || isLogOn eq null}">
													<td class="qna-tit-td"><a onclick="needLogin()"><i class="fas fa-lock-open"></i>&nbsp;&nbsp;${bList.qna_title}</a></td>
												</c:if>
											</c:when>
											<c:otherwise>
												<c:if test="${isLogOn eq true}">
												<td class="qna-tit-td"><a style="cursor:pointer;" onclick="passWord(${bList.qna_pw},'${contextPath}/qnaDetail${bList.qna_num}.do')" ><i class="fas fa-lock"></i>&nbsp;&nbsp;비밀글입니다.</a></td>
												</c:if>
												<c:if test="${isLogOn eq false || isLogOn eq null}">
												<td class="qna-tit-td"><a style="cursor:pointer;" onclick="needLogin()" ><i class="fas fa-lock"></i>&nbsp;&nbsp;비밀글입니다.</a></td>
												</c:if>
											</c:otherwise>
										</c:choose>
										<td class="qna-tit-td">${bList.user_id }</td>
										<td class="qna-tit-td">${bList.qna_date}</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="5">조회된 결과가 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>

					</tbody>
				</table>
			</div>
			<ul class="btn-group pagination">
				<c:if test="${pageMaker.prev }">
					<li><a
						href='<c:url value="/qna.do?page=${pageMaker.startPage-1 }"/>'><i class="fas fa-chevron-left"></i></a></li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage }"
					end="${pageMaker.endPage }" var="pageNum">
					<li><a
						href='<c:url value="/qna.do?page=${pageNum }"/>'>${pageNum }</a></li>
				</c:forEach>
				<c:if test="${pageMaker.next && pageMaker.endPage >0 }">
					<li><a
						href='<c:url value="/qna.do?page=${pageMaker.endPage+1 }"/>'><i class="fas fa-chevron-right"></i></a></li>
				</c:if>
			</ul>
		</div>
	</section>
	<SCRIPT>

		function passWord(a,url) {

			var pwd = a;
			var getpwd = prompt("게시물 비밀번호를 입력하세요.", "");
				
			if (pwd == getpwd) {
				alert("로그인되었습니다.");

			} else if (pwd != getpwd) {
				alert("다시 시도해주세요.");
				url="";
			}
			location.href=url;
		}
		
		function needLogin() {
			alert("로그인이 필요합니다.");
			location.href="${contextPath}/login.do"
		}
	</SCRIPT>
</body>
</html>