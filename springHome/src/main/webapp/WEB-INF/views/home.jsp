<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>



</head>
<body>

	<h1>Hello world!</h1>

	<p>
		The time on the server is ${serverTime}
	</p>
	
	<h1>홈.do</h1>
	
	<c:forEach var="homeDto" items="${homeList}">
		${homeDto.no},
		<a href='./update?no=${homeDto.no}'>${homeDto.name}</a>,
		${homeDto.email},
		${homeDto.createdDate}
		<a href='./delete?no=${homeDto.no}'>[삭제]</a><br>
	</c:forEach>
	
	<p>
		My name is ${name}
	</p>
</body>
</html>