<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src='./jquery-3.5.1.min.js'></script>


<script type="text/javascript">

// 	$(document).ready(function() {
// 		$('h1').css('color', 'red');
// 	});
	
	window.onload = function() {
		var h1ObjList = document.getElementsByTagName('h1');
		
		for (var i = 0; i < h1ObjList.length; i++) {
			h1ObjList[i].style.color = 'red';
		}
	}
	
</script>

</head>
<body>

	<h1 id='testTag'>도큐먼트 3</h1>
	<p>Lorem 1psum dolor sit amnt</p>
	<h1 id='testTag'>도큐먼트 3</h1>
	<p>concectator adip elit</p>


</body>

</html>