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

		alert($('#userInput').attr('type'));
		
		alert($('#userInput').val());
		
	});
	
</script>

</head>
<body>

	<input id='userInput' type='text'>


</body>

</html>
