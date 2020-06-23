<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
<script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script>
	
<script type="text/javascript">

	var partner = [
			{name : '고재민', age : 44},
			{name : '이찬양', age : 25}
	];
	
// 	for (var i = 0; i < partner.length; i++) {
// 		alert(partner[i].name);
// 		alert(partner[i].age);
// 	}
	
	$.each(partner, function(index, item) {
		alert(item.name);
	})
	
</script>
	
</head>
<body>
	

	
</body>
</html>