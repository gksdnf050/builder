<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 생성</title>
</head>
<body>
<div id="nav"><%@ include file="/WEB-INF/views/company/companynavbar/companynav.jsp" %></div>
<form method="post">

 <p>
  <label for="sitename">사이트이름</label>
  <input type="text" id="sitename" name="sitename"/>
 </p>
   

 <p>
  <label for="category">중개상품</label>
	<select name="category" onchange="changeItem(this)">
    	<option value="product">물건</option>
    	<option value="location">장소</option>
    	<option value="people">사람</option>
	</select>
 </p>



<div id ="sub_category">소분류</div>
	<select id ="sub_category" name="category">
    	
	</select>

  

 
 
 <p>
   <button type="submit" name="status" value="store">저장</button>  <button type="submit" name="status" value="deploy">생성</button>  
 </p>
 
</form>

</body>
    <script>
 function changeItem(e){
	 var sub = document.getElementById("sub_category");
	 var select = e.value;
	 if(select == "people"){
		 sub.innerHTML = "<option value="first">취업</option><option value="second">알바</option>"
		 
	 }
	 if(select == "product"){
		 sub.innerHTML = "옷";
		 
	 }	
	 if(select == "location"){
		 sub.innerHTML = "부동산";
		 
	 }	
	
 }
 </script>
</html>