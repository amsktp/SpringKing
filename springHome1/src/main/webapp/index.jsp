<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	div {
		border: 1px solid black;
		width: 200px;
		background-color : orange;
	}
</style>
<script type="text/javascript">

	var loginMove = function() {
		location.href = "/springHome/login.do";
	}

	var deptInsertMove = function() {
		
		location.href = "/springHome/dept/insert.do"
	}
	
</script>
</head>
<body>

	Hello Spring Projects
	

	<input type="button" value="/member/list.do" onclick="location.href='member/list.do'">
	<br>
	<input type="button" value="/login.do" onclick="loginMove();">

<!-- 	<input type="button" value="/login.do" onclick="location.href='login.do'"> -->


	<div onclick="deptInsertMove();">
		부서테이블 추가 버튼
	</div>

</body>
</html>