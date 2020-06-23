<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<title>페이징 기본 화면</title>

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
</style>

</head>

<body>

   <nav>
      <ul>
         <li><a href="#"><span>≪</span></a></li>

         <li><a href="#">1</a></li>
         <li><a href="#">2</a></li>
         <li><a href="#">3</a></li>

         <li><a href="#"><span>≫</span></a></li>
      </ul>
   </nav>

</body>
</html>