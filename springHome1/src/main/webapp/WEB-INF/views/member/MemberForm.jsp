<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>회원 등록</title>

<script type="text/javascript">

	var pageMoveListFnc = function() {
		
		location.href = './list.do';
		
	}



</script>
</head>

<body>
	<jsp:include page="/WEB-INF/views/Header.jsp" />
	
	<h1>회원등록</h1>
	
<!-- 	name은 죽었다 꺠나도 dto에 있는 변수 이름괴 같아야한다. 그래야만 memberDto로 받을 수 있다.-->
	
	<form action='./addCtr.do' method='post'
			enctype="multipart/form-data">
			
		이름: <input type='text' name='name'><br>
		이메일: <input type='text' name='email'><br>
		암호: <input type='password' name='password'><br>
		파일: <input type="file" name='file'><br><br>
		<input type='submit' value='추가'>
		<input type='reset' value='다시입력'>
		<input type='button' value='목록으로 이동' onclick="pageMoveListFnc();">
	</form>
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
</body>
</html>