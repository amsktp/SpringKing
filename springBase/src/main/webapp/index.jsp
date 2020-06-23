<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
	div {
		border: 1px, solid, black;
		width: 100px;
		height: 50px;
		background-color: pink;
	}
</style>
<script type="text/javascript">

	function moveListFnc() {
		location.href="./member/list.do"
	}

</script>

</head>
<body>

<div onclick="moveListFnc();">
	클릭 시
</div>	
</body>

	
</html>