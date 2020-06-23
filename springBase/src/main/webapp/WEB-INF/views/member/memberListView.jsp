<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 목록</title>

<style type="text/css">
	table, tr, td, th {
		border-collapse: collapse;
		
		border : 1px solid black;
	
	}

</style>

</head>
<body>

	<table>
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>이메일</td>
			<td>생성날짜</td>
		</tr>
		<c:forEach var="memberDto" items="${memberList}">
			<tr>
				<td>${memberDto.no}</td>
				<td>${memberDto.name}</td>
				<td>${memberDto.email}</td>
				<td>${memberDto.createdDate}</td>
			</tr>
		</c:forEach>
	
	</table>

</body>
</html>