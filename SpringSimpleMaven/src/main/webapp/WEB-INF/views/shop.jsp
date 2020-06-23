<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<script src="https://code.jquery.com/jquery-3.1.1.js"></script>
<script type="text/javascript">

	$('document').ready(function() {
		
		$('#firstValue').focusout(function(e) {
			
			if($('#firstValue').val() != '' && $('#secondValue').val() != ''){
				$('#resultNum').val($('#firstValue').val() + $('#secondValue').val());
			}else {
				$('#resultNum').val('');
			}
			
		});
		
		$('#secondValue').focusout(function(e) {
			
			if($('#firstValue').val() != '' && $('#secondValue').val() != ''){
				$('#resultNum').val(parseInt($('#firstValue').val()) + parseInt($('#secondValue').val()));
			}else {
				$('#resultNum').val('');
			}
			
		});
		
		
	});




</script>
<body>
<h1>
	Hello world!  
</h1>

first
<div>
	<input id="firstName" type="text">
	<input id="firstValue" type="number">
</div>
second
<div>
	<input id="secondName" type="text">
	<input id="secondValue" type="number">
</div>
합 : <input id="resultNum" type="number" disabled="disabled">


</body>
</html>
