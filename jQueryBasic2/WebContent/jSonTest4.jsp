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
		
// 		json 객체를 생성하고 p 태그에 name, streat, phone 정보를 출력하시오
		
// 		<div>john johnson</div> 스타일은 배경색 좀 넣어주자
// 		<div>Osio Next 16</div>
// 		<div>555-5555</div>
		
		var jsonStr = '{"name" : "john johnson",' + 
			'"street" : "Oslo Next 16" ' + 
			',"phone" : "555-5555"}';
		
		var jsonObj = JSON.parse(jsonStr);
		
		var outputStr = '';
	
		$.each(jsonObj, function(key, value) {
			outputStr += '<div style="background-color:#F2F3F5 ;">';
			outputStr += '<span>' + key + '</span><span>'+ value + '</span>';
			outputStr += '</div>';
			
		});

		$('#demo').html(outputStr);
		
	});

</script>
	
</head>
<body>

	<h2>JSON Object Creation</h2>

	<p id='demo'></p>

</body>
</html>