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
// 		$('#userInput').val('아하 이게 설마');
		
		$('#btnObj').css('backgroundColor', 'pink');
				
		$('#btnObj').click(function() {
			$('#pwdView').val($('#userInput').val()) ;
		})
		
	});

// 	var buttonTagFnc = function(){
// 		$('#pwdView').val($('#userInput').val()) ;
// 	}
	
// 	function buttonTagFnc() {
// 		$('#pwdView').val($('#userInput').val()) ;
// 	}
</script>

</head>
<body>
	
	비번 입력 <input id='userInput' type='password'>
	<br>
		<div id='btnObj' onclick='buttonTagFnc();' >내가 버튼이야</div>
	<br>
	비번 확인 <input id='pwdView' type='text'>
		
</body>

</html>
