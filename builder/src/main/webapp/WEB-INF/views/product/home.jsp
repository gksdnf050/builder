<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>${sitename}</title>
</head>
<body>
<h1>${sitename}</h1>
	<h1>메인화면</h1>
	<P>
		<a href="">게시판</a>
	</P>
	<c:if test="${productmember != null}">
		<P>
			<a href="">로그아웃</a>
		</P>
	</c:if>
	<c:if test="${productmember == null}">
		<P>
			<a href="">로그인</a>
		</P>
	</c:if>
</body>
</html>
