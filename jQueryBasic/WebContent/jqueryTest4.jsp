<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.item{
		color : lime;
	}
	.getBack{
		border: 5px solid black;
	}

</style>
<script type="text/javascript" src='./jquery-3.5.1.min.js'></script>

<script type="text/javascript">

	$(document).ready(function() {
	});
	
	var htmlFnc = function() {
		
		$('#userViewArea').html('');
		
		for (var i = 0; i < 7; i++) {
			$('#userViewArea').html($('#userViewArea').html()
					+ "<h1>Header- "+ (i+1) + "</h1>");
		}
	}
	
	var textFnc = function() {
		
		$('#userViewArea').text('');
		
		for (var i = 0; i < 7; i++) {
			$('#userViewArea').text($('#userViewArea').text()
					+ "<h1>Header- "+ (i+1) + "</h1>");
		}
	}
	
</script>

</head>
<body>


	<div id='userViewArea' style="border : 1px solid black; height : 500px;">
	</div>

<!-- 	HTMLFNC를 누르면 아래처럼 나오게끔 -->
<!-- 	<div id='userViewArea' style="border : 1px solid black; height : 80px;"> -->
<!-- 		<h1>Header-1</h1> -->
<!-- 		<h1>Header-2</h1> -->
<!-- 		<h1>Header-3</h1> -->
<!-- 		<h1>Header-4</h1> -->
<!-- 		<h1>Header-5</h1> -->
<!-- 		<h1>Header-6</h1> -->
<!-- 		<h1>Header-7</h1> -->
<!-- 	</div> -->
	
<!-- 	TEXT를 누르면 h1조차 글자로 -->

<!-- 	<div id='userViewArea' style="border : 1px solid black; height : 80px;"> -->
<!-- 		<h1>Header-1</h1> -->
<!-- 		<h1>Header-2</h1> -->
<!-- 		<h1>Header-3</h1> -->
<!-- 		<h1>Header-4</h1> -->
<!-- 		<h1>Header-5</h1> -->
<!-- 		<h1>Header-6</h1> -->
<!-- 		<h1>Header-7</h1> -->
<!-- 	</div>	 -->

	<button onclick="htmlFnc();">html</button>
	<button onclick="textFnc();">text</button>

</body>

</html>
