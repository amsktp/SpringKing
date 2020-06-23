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
		
		$('div').html(function(index){
			return '<h1>Header-' + index + '</h1>'
		});
		
	});
	
	
	
</script>

</head>
<body>

<!-- 	<h1>Header-0</h1> -->

	<div></div>
	<div></div>
	<div></div>
	
</body>

</html>
