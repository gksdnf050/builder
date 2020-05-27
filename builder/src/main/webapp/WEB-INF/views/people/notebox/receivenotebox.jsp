<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="/resources/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="/resources/bs/bootstrap.min.css">
<link rel="stylesheet" href="/resources/bs/bootstrap-theme.min.css">
<script src="/resources/bs/bootstrap.min.js"></script>
</head>
<body>

<c:forEach items="${dto}" var="dto">
 <a href="/people/${sitename}/board/view?boardid=${dto.getBoardid()}">지원 한 글</a>
 <a href="/people/${sitename}/notebox/view?noteboxid=${dto.getNoteboxid()}">${dto.getTitle()} </a>
 <a href="/people/${sitename}/notebox/delete?noteboxid=${dto.getNoteboxid()}">삭제</a>
</c:forEach>


</body>
</html>