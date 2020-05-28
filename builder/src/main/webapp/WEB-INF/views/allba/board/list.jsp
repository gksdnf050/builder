<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board</title>

<script src="/resources/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="/resources/bs/bootstrap.min.css">
<link rel="stylesheet" href="/resources/bs/bootstrap-theme.min.css">
<script src="/resources/bs/bootstrap.min.js"></script>

<style>
#menu {
	height: 50px;
	background: #fcc;
}

.one {
	width: 600px;
	height: 100%;
	margin: 0 auto;
}

.one>li {
	float: left;
	width: 20%;
	line-height: 50px;
	text-align: center;
	position: relative;
}

.one>li:hover .two {
	left: 0;
}

.one>li a {
	display: block;
}

.one>li a:hover {
	bakground: #B21016;
	color: #fff;
	font-weight: bold;
}

.two {
	position: absolute;
	top: 50px;
	left: -9999px;
	background: #ccc;
	width: 120%;
}

.two>li {
	position: relative;
}

.two>li:hover .three {
	left: 100%;
}

.three {
	position: absolute;
	top: 0;
	background: #6BD089;
	left: -9999px;
	width: 200%;
}

.three>li a:hover {
	backgorund: #085820;
	color: #fff;
}
</style>
</head>
<body>


	<%@ include file="/WEB-INF/views/allba/allbanavbar/allbanav.jsp"%>





	<p>
		<c:forEach items="${dtos}" var="dtos">
			<c:if test="${bi != NULL}">
				
					<c:if test="${empty bi}">
						<a href="/allba/${sitename}/board/regbookmark?boardid=${dtos.getBoardid()}">즐겨찾기</a>
					</c:if>
				<c:forEach items="${bi}" var="bi">
					
					<c:if test="${bi != dtos.getBoardid()}">
						<a href="/allba/${sitename}/board/regbookmark?boardid=${dtos.getBoardid()}">즐겨찾기</a>
					</c:if>
				</c:forEach>
			</c:if>

			<c:if test="${bi == NULL}">
				<a href="/allba/${sitename}/board/regbookmark?boardid=${dtos.getBoardid()}">즐겨찾기</a>
			</c:if>

${dtos.location} <a href="/allba/${sitename}/board/view?boardid=${dtos.getBoardid()}"> ${dtos.getTitle()} </a> ${dtos.money} ${dtos.regdate}<br/>
		</c:forEach>
	</p>

	<a href="/allba/${sitename}/board/write">글 작성</a>
</body>
</html>