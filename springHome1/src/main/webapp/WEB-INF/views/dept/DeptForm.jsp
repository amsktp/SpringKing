<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>dept 입력 폼</title>

</head>

<body>
	<h1>dept 입력 폼</h1>
	
<!-- 	name은 죽었다 꺠나도 dto에 있는 변수 이름괴 같아야한다. 그래야만 memberDto로 받을 수 있다.-->
	
	<form action='./insertCtr.do' method='post'>
		DNO : <input type='text' value="1" name='no'><br>
		DNAME : <input type='text' name='name'><br>
		LOC : <input type='text' name='loc'><br>
		<input type='submit' value='추가'>
		<input type='reset' value='취소'>
	</form>
	
</body>
</html>