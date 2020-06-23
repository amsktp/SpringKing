<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	.item{
		color : lime;
	}
	.getBack{
		border: 5px solid black;
	}

</style>
<script type="text/javascript" src='./jquery-3.5.1.min.js'></script>

<script type="text/javascript">

	$(document).ready(function() {
	});
	
	var htmlFnc = function() {
		$('div > h1').html(function(index, data) {
			return '★' + data + '★-' + index;
		});
	}
	
</script>

</head>
<body>

   <div style="border: 1px solid black;">
      <h1>Header</h1>
   </div>
   <div style="border: 1px solid black;">
      <h1>Header</h1>
   </div>
   <div style="border: 1px solid black;">
      <h1>Header</h1>

   </div>
   <div style="border: 1px solid black;">
      <h1>Header</h1>

   </div>
   <div style="border: 1px solid black;">
      <h1>Header</h1>

   </div>
   <div style="border: 1px solid black;">
      <h1>Header</h1>
   </div>

   <button onclick="htmlFnc();">html</button>

</body>


</html>
