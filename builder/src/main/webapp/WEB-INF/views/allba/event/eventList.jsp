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
<br/>
<c:forEach items="${list}" var="list">

<a href="/allba/${sitename}/event/view?eventid=${list.eventid}">${list.title}</a>

<img src="${list.file}">
</c:forEach>



 <c:if test="${allbamember.getManagement() eq 'true'}">   
 <a href="/allba/${sitename}/event/register">이벤트 등록</a>
 </c:if>
</body>
</html>