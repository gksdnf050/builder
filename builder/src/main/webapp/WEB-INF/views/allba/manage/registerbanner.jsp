<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


  <c:forEach items="${list}" var="list">
  <img src="${list.file}">
   <a href="/allba/${sitename}/manage/deletebanner?bannerid=${list.bannerid}">삭제</a>
  </c:forEach>
<form method = "post" enctype="multipart/form-data">
<input type="file" name="file" />
<button type="submit" >등록</button>  
 
	
					</form>
</body>
</html>