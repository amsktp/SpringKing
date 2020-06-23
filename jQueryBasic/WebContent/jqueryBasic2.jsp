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
		alert('풀버젼');
		
		jQuery('#testTag').html('알겠지?');
	});

	$(function() {
		alert('작은버젼');
	});
	
	
	
</script>

</head>
<body>

	<h2 id='testTag'>도큐먼트 2</h2>



</body>

</html>