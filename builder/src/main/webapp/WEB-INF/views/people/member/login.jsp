<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>로그인</title>
</head>
<body>
로그인
	<form method="post">
		<p>
			<label for="userId">아이디</label> <input type="text" id="userid"
				name="userid" />
		</p>
		<p>
			<label for="userPass">패스워드</label> <input type="password"
				id="userpass" name="userpass" />
		</p>

		<p>
			<button type="submit" id="submit">로그인</button>
		</p>
	</form>
	<c:if test="${msg == false}">
		<p style="color: #f00;">로그인 실패 아이디 or 비밀번호 확인해주세요.</p>
	</c:if>
	<p>
		<a href="/people/${sitename}/register">회원가입</a>
	</p>
</body>
</html>