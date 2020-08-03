<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
		제목: ${dto.title}
		파일: <img src="${dto.file}">
	<c:if test="${allbamember.getManagement() eq 'true'}">   
	<a href="/allba/${sitename}/event/modify?eventid=${dto.eventid}"> 수정 </a>
	<a href="/allba/${sitename}/event/delete?eventid=${dto.eventid}"> 삭제 </a>
</c:if>
	
</body>
</html>