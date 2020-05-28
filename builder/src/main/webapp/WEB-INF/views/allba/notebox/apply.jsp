<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지원하기</title>
</head>
<body>


	<form action="/allba/${sitename}/notebox/apply" method="post" enctype="multipart/form-data">
	
		<input type="hidden" name="fromuserid" value="${allbamember.getUserid()}" /><br />
		<input type="hidden" name="touserid" value="${touserid}" /><br />
		<input type="hidden" name="boardid" value="${boardid}" /><br />
		
		<label>제목</label> 
			<input type="text" name="title" /><br /> 
		<!-- 	
		 <label>이미지</label>
 			 <input type="file" name="file" /> <br/> -->	
		
			
		<label>내용</label>
			<textarea cols="50" rows="5" name="content"></textarea><br />


<button type="submit">지원하기</button>
</form>

</body>
</html>