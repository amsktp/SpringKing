<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
<script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script>
	
<script type="text/javascript">
	
	
	
	$(document).ready(function() {
		
		var resultStrArr = new Array();

		resultStrArr[0] = '첫번째 행';
		resultStrArr[1] = '두번째 행';
		resultStrArr[2] = '세번째 행';
			
		$.each(resultStrArr, function(index, str) {
			$('#container').html($('#container').html() 
					+ (index + 1) + ' : ' + str + '<br>');
		});
	});
	
</script>
	
</head>
<body>

<!-- 여기는 화면이 뜨자마자 세줄이 뜨면 됨 -->
	<div id='container'></div> 	
	
<!-- 	div 안에 아래에 있는것들이 들어가면 된다 -->
<!-- 	1 : 첫번째 행<br> -->
<!-- 	2 : 두번째 행<br> -->
<!-- 	3 : 세번째 행<br> -->
	
	
</body>
</html>