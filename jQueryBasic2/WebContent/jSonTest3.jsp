<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
<script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script>
	
<script type="text/javascript">

	var jsonStr = '{"employees" : ' +
			'[{"firstName" : "John", "lastName" : "Smith"},' +
			'{"firstName" : "Lee", "lastName" : "ChanYang"}]}' +
	
	var jsonObj = JSON.parse(jsonStr);
	
	document.write(jsonObj.employees[0].firstName + '<br>');
	
	document.write(jsonObj.employees[0].lastName + '<br>');
	
	document.write(jsonObj.employees[1].firstName + '<br>');
	
	document.write(jsonObj.employees[1].lastName + '<br>');

</script>
	
</head>
<body>
	<div id='thisIsView' style="border: 1px solid black;">
		
	</div>
</body>
</html>