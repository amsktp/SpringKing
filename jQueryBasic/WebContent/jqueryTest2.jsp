<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src='./jquery-3.5.1.min.js'></script>


<script type="text/javascript">

	$(document).ready(function() {
		$('.item').css('color', 'gray');
		
		$('#item').css('backgroundColor', 'purple');
	});
	
	
</script>


<style type="text/css">



</style>
</head>
<body>

	아이템이라는 클래스는 전부 글자가  회색이다.<br>
	id Item은 배경색이 보라색이다<br>

	<h1 class='item'>Header 0</h1>
	<h1 class='item'>Header 1</h1>
	<h1 class='item'>Header 2</h1>

	<h1 id='item' class='item'>Header 3</h1>

</body>

</html>