<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<script src="/resources/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="/resources/bs/bootstrap.min.css">
<link rel="stylesheet" href="/resources/bs/bootstrap-theme.min.css">
<script src="/resources/bs/bootstrap.min.js"></script>
<title>Home</title>

<style>
* {
    box-sizing: border-box;
}
body {
    font-family: Arial;
    padding: 10px;
    background: #f1f1f1;
}
.header {
    padding: 30px;
    text-align: center;
    background: white;
}
.header h1 {
    font-size: 50px;
}
.topnav {
    overflow: hidden;
    background-color: #333;
}

.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}
.leftcolumn {   
    float: left;
    width: 75%;
}
/* Right column */
.rightcolumn {
    float: left;
    width: 25%;
    background-color: #f1f1f1;
    padding-left: 20px;
}
/* Fake image */
.fakeimg {
    background-color: #aaa;
    width: 100%;
    padding: 20px;
}
/* Add a card effect for articles */
.card {
    background-color: white;
    padding: 20px;
    margin-top: 20px;
}
/* Clear floats after the columns */
.row:after {
    content: "";
    display: table;
    clear: both;
    float : left;
}
/* Footer */
.footer {
    padding: 20px;
    text-align: center;
    background: #ddd;
    margin-top: 20px;
}
/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 800px) {
    .leftcolumn{   
        width: 100%;
        padding: 0;
    }
}
/* Responsive layout - when the screen is less than 400px wide, make the navigation links stack on top of each other instead of next to each other */
@media screen and (max-width: 400px) {
    .topnav a {
        float: none;
        width: 100%;
    }
}
</style>



</head>
<body class="header">
	<div id="nav"><%@ include file="./company/companynavbar/companynav.jsp" %></div>

<h1>중고나라, 알바천국, 호텔스컴바인</h1>
<h1> 직접 운영하세요!</h1>  
  


</body>
</html>
