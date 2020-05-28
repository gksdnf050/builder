<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 수정</title>
<script src="/resources/js/jquery-3.5.1.min.js"></script>
<script>
$(document).ready(function(){
var sel = document.getElementById("topcategory");
var sub = document.getElementById("category");
var val;
for(i=0; i<sel.options.length; i++) {
    if(sel.options[i].selected == true) {
        val = sel.options[i].value;
        break;
    }
}
if(val == "people"){
	sub.innerHTML = "<select name='category'><option value='employment' <c:if test="${sitedto.getCategory() eq ''}"> selected </c:if>>취업</option><option value='allba' <c:if test="${sitedto.getCategory() eq 'allba'}"> selected </c:if>>알바</option></select>";
	 
 }
if(val == "product"){
	sub.innerHTML = "<select name='category'><option value='employment' <c:if test="${sitedto.getCategory() eq 'clothes'}"> selected </c:if>>옷</option></select>";
	 
}	
if(val == "location"){
	sub.innerHTML = "<select name='category'><option value='employment' <c:if test="${sitedto.getCategory() eq 'motel'}"> selected </c:if>>숙박</option></select>";
	 
}

}
);

 function changeItem(e){
	 var sub = document.getElementById("category");
	 var select = e.value;
	 if(select == "people"){
		sub.innerHTML = "<select name='category'><option value='employment'>취업</option><option value='allba'>알바</option></select>";
		 
	 }
	 if(select == "product"){
		 sub.innerHTML = "<select name='category'><option value='clothes'>옷</option></select>";
		 
	 }	
	 if(select == "location"){
		 sub.innerHTML = "<select name='category'><option value='motel'>숙박</option></select>";
		 
	 }	
	
 }
 </script>
</head>
<body>
<div id="nav"><%@ include file="/WEB-INF/views/company/companynavbar/companynav.jsp" %></div>
	<form method="post">

		<p>
			<label for="sitename">사이트이름</label> <input type="text" id="sitename"
				name="sitename" value="${sitedto.getSitename()}" />
		</p>

		<p>
			<label for="category">중개상품</label> <select name="topcategory" id="topcategory" onchange="changeItem(this)" >
				<option value="">---</option>
				<option value="product"
					<c:if test="${sitedto.getTopcategory() eq 'product'}"> selected </c:if>>물건</option>
				<option value="location"
					<c:if test="${sitedto.getTopcategory() eq 'location'}"> selected </c:if>>장소</option>
				<option value="people"
					<c:if test="${sitedto.getTopcategory() eq 'people'}"> selected </c:if>>사람</option>
			</select>
		</p>


소분류<div id ="category"></div>

		<p>
			<button type="submit" name="status" value="store">저장</button>
			<button type="submit" name="status" value="deploy">생성</button>
		</p>

	</form>

</body>
</html>