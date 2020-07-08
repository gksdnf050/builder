<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이벤트 페이지



 <c:if test="${allbamember.getManagement() eq 'true'}">   
 <a href="">이벤트 등록</a>
 </c:if>
</body>
</html>