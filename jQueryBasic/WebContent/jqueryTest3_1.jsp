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
		
		$('#userInput').val('아하 이게 설마');
		
		var	userInput = $('#userInput');
		
	alert(	userInput.css('fontStyle'));
		
	});
</script>

</head>
<body>
	
	비번 입력 <input id='userInput' style="font-style: italic;" type='text'>
		
</body>

</html>
