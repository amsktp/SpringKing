<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src='./jquery-3.5.1.min.js'></script>


<script type="text/javascript">


//	window.onload를 대체한다
//	ready는 각각 전부 실행된다
	$(document).ready(function() {
		alert('first ready');
	});

	$(document).ready(function() {
		alert('second ready');
	});
	
	$(document).ready(function() {
		alert('third ready');
	});

//	윈도우 온로드는 가장 마지막의 함수만 실행된다
	window.onload = function() {
		alert('first ready');
	}
	window.onload = function() {
		alert('second ready');
	}
	window.onload = function() {
		alert('third ready');
	}
	
</script>

</head>
<body>

	<h2 id='testTag'>hello jQuery</h2>



</body>

</html>