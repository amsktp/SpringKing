<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	
<script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script>
	
<script type="text/javascript">

	$('document').ready(function() {
		var product = [
				{name : '우유', price : 2000},
				{name : '홍차', price : 5000},
				{name : '커피', price : 5000}
		];
		
		var menuList = $('#menuList');
		var menuStr = '';
		
		$.each(product, function(index, item) {
			menuStr += '<li>';
			menuStr += '<span>종류: </span><span>' + item.name 
			menuStr += '</span> / <span>가격: </span><span>' + item.price + '</span>';
			menuStr += '</li>';
		})

		menuList.html(menuStr);
		
	});
	
</script>
	
</head>
<body>
	
	<div id='thisIsView'>
		<h1>커피 메뉴판</h1>
			<ul id='menuList'>
			
			
			</ul>
	</div>

	
</body>
</html>