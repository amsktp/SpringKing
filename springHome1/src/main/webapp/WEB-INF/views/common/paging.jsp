<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style type="text/css">

nav{
    width: 1000px;  /* 넓이를 주면 고정 */  
    margin-left: auto;
    margin-right: auto;
}

nav > ul {

    background-color: #333333; 
	text-align: center;
    list-style-type: none; 
    padding: 0;
    overflow: hidden;
    display: table; /* table을 주면  요소의 내용에 맞게 자동으로 크기 */ 
    margin-left: auto;
    margin-right: auto;
}

nav > ul > li {
   float: left;
}

nav > ul > li > a {
    display: block;
    color: white;  
    text-align: center;
    padding: 16px;
    text-decoration: none;
}

 nav > ul > li > a:hover { 
     color: #FFD9EC; 
     background-color: #5D5D5D; 
     font-weight: bold; 
 } 
 
 .active {
 	color: red;
 	background-color: pink;
 	font-weight: bold;
 }
</style>

<!-- <script type="text/javascript" src="/springHome/resources/js/jquery-3.5.1.min.js"></script> -->
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

	window.onload = function() {
		//내가 한 방법		
		/* var curPage = document.getElementById('curPage');
		var liObjList = document.getElementsByClassName('listObj');
		for (var i = 0; i < liObjList.length; i++) {
			if(liObjList[i].children[0].innerHTML == curPage.value){
				liObjList[i].style.backgroundColor = 'green';
			}
		} */
		
		

		var curPage = document.getElementById('curPage');
		
		
		var pageButtonId = 'pageButton' + curPage.value;

		document.getElementById(pageButtonId).setAttribute('class', 'active');
		
		
		if ($('#blockStart').val() == 1 && $('#blockEnd').val() == 1) {
// 			$('li').children().removeAttr('onclick');
			$('li > a').removeAttr('onclick');
			
			
		}
		
		
	}

	function goPageFnc(pageNumber) {
// 		alert(pageNumber);		


// 		var curPage = document.getElementById('curPage');
		var curPage = $('#curPage');
// 		curPage.value = pageNumber;
		curPage.val(pageNumber);

// 		var pagingForm = document.getElementById('pagingForm');
		var pagingForm = $('#pagingForm')
		pagingForm.submit();
			
	}

</script>

   <nav>
      <ul>
         <li>
         	<a href="#" onclick="goPageFnc(${pagingMap.memberPaging.prevPage});">
         		<span>≪</span>
         	</a>
         </li>
	
		<c:forEach var="num"
			begin="${pagingMap.memberPaging.blockBegin}"
			end="${pagingMap.memberPaging.blockEnd}">
       		<li id='pageButton${num}'><a href="#" onclick="goPageFnc(${num});"><c:out value="${num}"/></a></li>
		</c:forEach>
		
		<c:if test="${pagingMap.memberPaging.blockEnd eq 0}">
			<li id='pageButton1'><a href="#" onclick="goPageFnc(1);"><c:out value="1"/></a></li>
		</c:if>		
		
		
		
		 <%-- <c:forEach var="num" begin="${pagingMap.memberPaging.blockBegin}" end="${pagingMap.memberPaging.blockEnd}">
            <li>
               <c:choose>
                  <c:when test="${num == pagingMap.memberPaging.curPage}"><a href="#" style="color: pink; background-color: yellow;" onclick="goPageFnc(${num})"><span><c:out value="${num}"/></span></a></c:when>
                  <c:otherwise><a href="#" onclick="goPageFnc(${num})"><c:out value="${num}"/></a></c:otherwise>
               </c:choose>
            </li>
       </c:forEach> --%>



         <li><a href="#" onclick="goPageFnc(${pagingMap.memberPaging.nextPage});"><span>≫</span></a></li>0
      </ul>
      
      <input id="blockStart" type="hidden" value="${pagingMap.memberPaging.blockBegin}">
      <input id="blockEnd" type="hidden" value="${pagingMap.memberPaging.blockEnd}">
      
      
   </nav>