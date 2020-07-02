<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
 
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
 <c:forEach items='${category}' var='category' varStatus='status'>

 		<div>
 		${category.categoryname}  
 		</div> 
 		
 		<input type="text" name="categoryname${status.count}" />
 		<input type="hidden" name="parent${status.count}" value="${category.categoryname}"/>
 		<input type="hidden" name="depth${status.count}" value="2" /> 
 		<button type="submit">등록하기</button>
 		<div>
 		<c:forEach items='${detail}' var='detail'>
 		
 			<c:if test='${detail.parent eq category.categoryname}'>
 				 ${detail.categoryname}
 			</c:if>
 			
 		</c:forEach>
 		</div>

 </c:forEach>
 <input type="text" name="categoryname" />
 <input type="hidden" name="depth" value="1" /> 
 <button type="submit">등록하기</button>
</form>

 <!--  
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
	
	-->
</body>
</html>