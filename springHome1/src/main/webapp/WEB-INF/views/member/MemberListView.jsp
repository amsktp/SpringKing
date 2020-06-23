<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>회원 목록</title>
<style type="text/css">

table {
	margin-left: auto;
	margin-right: auto;
	border-collapse: collapse;
	
}
table, tr, td, th{
	border: 1px solid black;
}
th {
	width: 250px;
}

div {
}

</style>
</head>

<body>
	<jsp:include page="/WEB-INF/views/Header.jsp" />
	<h1>회원목록</h1>
	<div>
		<a href='./add.do'>회원가입</a>
	</div>
	<div>
		<form action="list.do">
		<c:choose>
			<c:when test="${searchMap.searchOption eq 'all'}">
				<select name='searchOption'>
					<option value="all" selected="selected">이름+이메일</option>
					<option value="name">이름</option>
					<option value="email">이메일</option>
				</select>			
			</c:when>
			<c:when test="${searchMap.searchOption eq 'name'}">
				<select name='searchOption'>
					<option value="all">이름+이메일</option>
					<option value="name" selected="selected">이름</option>
					<option value="email">이메일</option>
				</select>			
			</c:when>
			<c:when test="${searchMap.searchOption eq 'email'}">
				<select name='searchOption'>
					<option value="all">이름+이메일</option>
					<option value="name">이름</option>
					<option value="email" selected="selected">이메일</option>
				</select>			
			</c:when>
		</c:choose>

			<input type="text" name="keyword" value="${searchMap.keyword}">
			<input type="submit" value="검색">
		</form>
	</div>
	
	
	
	<div style="height: 200px; margin-bottom: 100px;">
		<table>
			<tr style="background-color: rgb(233,252,244)">
				<th>회원번호</th>
				<th>회원이름</th>
				<th>회원 이메일</th>
				<th>가입 날짜</th>
				<th>파일</th>
				<th>회원 삭제</th>
			</tr>
		
			<c:forEach var="memberListDto" items="${memberFileList}">
				<tr>
					<td>
						${memberListDto.no}
					</td>
					<td>
						<a href='./listOne.do?no=${memberListDto.no }'>${memberListDto.name}</a>,
					</td>
					<td>
						${memberListDto.email}
					</td>
					<td>
						<fmt:formatDate value="${memberListDto.createdDate}" pattern="yyyy년 MM월 dd일 hh시 mm분"/>
					</td>
					<td>
<%-- 						<c:if test="${memberListDto.originalFileName eq null}"> --%>
<!-- 							첨부 파일이 없습니다. -->
<%-- 						</c:if> --%>
<%-- 						<c:if test="${memberListDto.originalFileName ne null}"> --%>
<%-- 							${memberListDto.originalFileName}<br> --%>
<%-- 						</c:if> --%>

						<c:if test="${empty memberListDto.originalFileName}" var="fileFlag">
							첨부 파일이 없습니다.
						</c:if>
						<c:if test="${fileFlag eq false}">
							${memberListDto.originalFileName}
						</c:if>
						
					</td>
					
					<td>
						<a href='./deleteCtr.do?no=${memberListDto.no}'>[삭제]</a><br>
					</td>
				</tr>
			</c:forEach>
			
			<c:if test="${memberFileList[0] eq null}">
				<tr style="text-align: center;">
					<td colspan="6">
							데이터가 없습니다.
					</td>
				</tr>
			</c:if>
			
		</table>
	</div>
	

		
	<jsp:include page="/WEB-INF/views/common/paging.jsp">
		<jsp:param value="${pagingMap}" name="pagingMap"/>
	</jsp:include>
	
	<form action="./list.do" id='pagingForm' method="get">
		<input type="hidden" id='curPage' name='curPage'
			value="${pagingMap.memberPaging.curPage}">
	</form>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
</body>
</html>