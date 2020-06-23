<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
</style>
<script type="text/javascript" src="./js/jquery-3.5.1.min.js"></script>

<script type="text/javascript">
	$('document').ready(function() {
		
		$.ajax({
			url: 'examTest.json',
			dataType: 'json',
			success: function(data){
				var output = '';
				$.each(data, function(key, value) {
					output += '<div><span>';
					output += key;
					output += ' </span> <span> ';
					output += value;
					output += '</span>';
					output += '</div>';
				});
				$('#ajaxDataPrint').html(output)
			},
			error : function(e) {
				alert('실패다');
			},
		});
	});

</script>

</head>

<body>

	<div id='ajaxDataPrint' style="border: 1px solid black;">
	
	</div>

</body>



</html>