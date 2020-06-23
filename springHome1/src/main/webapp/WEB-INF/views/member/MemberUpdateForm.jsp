<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>회원정보 수정</title>

<script type="text/javascript" src="/springHome/resources/js/jquery-3.5.1.min.js"></script>

<script type="text/javascript">
	$('document').ready(function() {
		$("a[id^='delete']").on("click", function(e) {
			e.preventDefault();
			deleteFileFnc($(this));
		});
	});
	
// 	바인딩기술 (addEventListner와 거의 비슷)
// 	이벤트와 태그를 연동시켜주는 기술

// 또 선택자중에 저건 속성 선택자이다
// ^은 뒤에 저걸로 시작하면 모든걸 다 선택하겠다라는 뜻
// 따라서 delete0, delete1 등 전부다 선택한다
	
// preventDefault()를 하면 a태그같은 경우는 href가 무력화됨
// 원래 있던 기능을 무력화 시키는 느낌 => 우리가 href="#this" 있었는데 이제 안나옴

	
	function pageMoveListFnc(){
		location.href = "./list.do";
	}
	
	
	function pageMoveDeleteFnc(no){
		var url = "./deleteCtr.do?no=" + no;
		location.href = url;
	}
	
	function pageMoveBackFnc(no) {
		var url = "./listOne.do?no=" + no;
		location.href = url;
	}
	
	function deleteFileFnc(obj){
		obj.parent().remove();
	}
	
	function addFileFnc() {
		var obj = $('#fileContent');
		
		var htmlStr = '';
		
		htmlStr += '<div>'
		htmlStr += '<input type="hidden" id="fileIdx" name=fileIdx" value="">';
		htmlStr += '<input type="file" id="file0" name="file0">';
		htmlStr += '<a href="#this" id="delete0">삭제</a>';
		htmlStr += '</div>'
		
		obj.html(htmlStr);

		$("a[id^='delete']").on('click', function(e) {
			e.preventDefault();
			deleteFileFnc($(this));
		});
	}
</script>

</head>

<body>
<!-- 337 3번 문제 MemberUpdateServlet 화면출력 위임 -->
	<jsp:include page="/WEB-INF/views/Header.jsp" />
	
	??: ${fileList[0].ORIGINAL_FILE_NAME}
	
	<h1>회원정보</h1>
	<form action='./updateCtr.do' method='post' enctype="multipart/form-data">
		번호: <input type='text' name='no' value='${memberDto.no}' readonly><br>
		이름: <input type='text' name='name' value='${memberDto.name}'><br>
		이메일: <input type='text' name='email' value='${memberDto.email}'><br>
		비밀번호: <input type='password' name='password' value='${memberDto.password }'><br>
		가입일: 	<fmt:formatDate value="${memberDto.createdDate}" pattern="yyyy-MM-dd hh:mm"/><br>
		
		첨부파일:	
		<div id="fileContent">
			<div>
				<c:choose>
					<c:when test="${empty fileList }">
						<input type="hidden" id="fileIdx" name="fileIdx" value="">
						<input type="file" id="file0" name="file0">
						<a href="#this" id="delete0">삭제</a>
					</c:when>
					
					<c:otherwise>
						<c:forEach var="row" items="${fileList}" varStatus="obj">
							<input type="hidden" id="fileIdx_${obj.index}" value="${row.IDX}" name="fileIdx">
										
							<img alt="Image not found" style="width:130px; height: 130px;" src="<c:url value='/img/${row.STORED_FILE_NAME}' /> ">
							<br/>
							${row.ORIGINAL_FILE_NAME}
							<input type="file" id="file_${obj.index}" name="file_${obj.index}">
							(${row.FILE_SIZE}KB)<a href="#this" id="delete_${obj.index}">삭제</a><br>			
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		
		<input type="button" value="파일추가" onclick="addFileFnc();">
		
		<input type='submit' value='변경하기'>
		<input type='button' value='삭제하기' 
	onclick='pageMoveDeleteFnc(${memberDto.no});'>
		<input type='button' value='뒤로가기' onClick="pageMoveBackFnc(${memberDto.no})">
		<input type='button' value='목록으로 이동' onClick='pageMoveListFnc();'>	
	</form>
	
	<jsp:include page="/WEB-INF/views/Tail.jsp" />
</body>
</html>