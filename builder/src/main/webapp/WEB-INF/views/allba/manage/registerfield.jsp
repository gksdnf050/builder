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
	 var fieldtype = document.getElementById("fieldtype");
	 var select = e.value;
	 if(select == "1"){
		 fieldtype.innerHTML = "<option value='select'>select</option><option value='text'>text</option>"
		 parent.innerHTML = "<option value=''>--</option>"
	 }
	 if(select == "2"){
		 parent.innerHTML = "<c:forEach items='${fieldlist}' var='fieldlist'><option value='${fieldlist.fieldname}'>${fieldlist.fieldname}</option></c:forEach>";
		 fieldtype.innerHTML = "<option value=''>--</option>"
	 }	
	
 }
 </script>
 
	<form action="/allba/${sitename}/manage/registerfield" method="post">
		필드 이름<input type="text" name="fieldname" /> 
		필드 레벨 <select name="depth" id="depth" onchange="changeItem(this)">
					<option value="">--</option>
					<option value="1">1</option>
					<option value="2">2</option>
				</select> 
		필드 타입 	<select name="fieldtype" id="fieldtype">
					
				</select>
		상위 카테고리<select name="parent" id="parent">
					
				</select>
				
				<button type="submit">등록하기</button>
	</form>
	
	
</body>
</html>