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
		
		$('h1').html(function(index, data){
 			return data + '-' + index;
		});
		
	});
	
</script>

</head>
<body>

<!-- 	<h1>Header-0</h1> -->
	<div>
		<h1>Header</h1>
	</div>
	<div>
		<h1>Header</h1>
	</div>
	<div>
		<h1>Header</h1>
	</div>

</body>

</html>
