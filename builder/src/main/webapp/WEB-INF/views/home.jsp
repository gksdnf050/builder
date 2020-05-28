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

</style>

</head>
<body class = 'header'>
	
	<div id="nav"><%@ include file="/WEB-INF/views/company/companynavbar/companynav.jsp" %></div>
</body>
</html>
