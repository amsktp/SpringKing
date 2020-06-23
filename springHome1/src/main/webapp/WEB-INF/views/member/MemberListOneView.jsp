<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 상세 조회</title>

<script type="text/javascript">
	function pageMoveListFnc(){
		location.href = "./list.do";
	}
	
	function pageMoveUpdateFnc(no){
		var url = "./update.do?no=" + no;
		location.href = url;
	}
</script>

</head>

<body>
	<!-- 337 3번 문제 MemberUpdateServlet 화면출력 위임 -->
	<jsp:include page="/WEB-INF/views/Header.jsp" />

	<h1>회원정보 상세 조회</h1>
	<table>
		<tr>
			<td>회원 번호</td>
			<td>${memberDto.no}</td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${memberDto.name}</td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>${memberDto.email}</td>
		</tr>
		<tr>
			<td>가입일</td>
			<td><fmt:formatDate value="${memberDto.createdDate}"
					pattern="yyyy-MM-dd hh:mm" /></td>
		</tr>
		<tr>
			<td>첨부파일</td>
			<td>
				<c:choose>
					<c:when test="${empty fileList }">
						첨부파일 없음
					</c:when>
					
					<c:otherwise>
						<c:forEach var="row" items="${fileList}">
							<input type="button" value="이미지" name="file">
							${row.ORIGINAL_FILE_NAME}
							(${row.FILE_SIZE}KB)<br>			
										
							<img alt="Image not found"	src="<c:url value='/img/${row.STORED_FILE_NAME}' /> ">
							
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</table>

	<div>
		<input type="hidden" name="no" value="${memberDto.no}">
	</div>

	<div>
		<input type='button' value='수정' onclick="pageMoveUpdateFnc(${memberDto.no});">
		<input type="button" value="뒤로가기" onclick="pageMoveListFnc();">
	</div>
	
	
	

 
 
	<jsp:include page="/WEB-INF/views/Tail.jsp"/>

</body>
</html>