<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
<script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script>
	
<script type="text/javascript">

	var jsonStr = '{"name" : "이찬양", "gender" : "남"}';
	
	var jsonObj = JSON.parse(jsonStr);
	
	alert(jsonObj.name);
	alert(jsonObj.gender);

</script>
	
</head>
<body>
	<div id='thisIsView' style="border: 1px solid black;">
		
	</div>
</body>
</html>