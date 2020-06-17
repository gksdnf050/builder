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
 <script>
 function changeItem(e){

	 var parent = document.getElementById("parent");
	 var select = e.value;
	 if(select == "1"){
		 parent.innerHTML = "<option value=''>--</option>"
		 
	 }
	 if(select == "2"){
		 parent.innerHTML = "<c:forEach items='${category}' var='category'><option value='${category.categoryname}'>${category.categoryname}</option></c:forEach>";
		 
	 }	
	
 }
 </script>
 
	<form action="/allba/${sitename}/manage/registercategory" method="post">
		카테고리 이름<input type="text" name="categoryname" /> 
		카테고리 레벨 <select name="depth" id="depth" onchange="changeItem(this)">
					<option value="">--</option>
					<option value="1">1</option>
					<option value="2">2</option>
				</select> 
		상위 카테고리<select name="parent" id="parent">
					
				</select>
				<button type="submit">등록하기</button>
	</form>
	
	
</body>
</html>