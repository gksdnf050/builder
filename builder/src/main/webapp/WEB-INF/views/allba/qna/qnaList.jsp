<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
qna 페이지


<a href="">1대1 문의하기</a>
 <c:if test="${allbamember.getManagement() eq 'true'}">   
 <a href="">qna 등록</a>
 </c:if>
</body>
</html>