<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 생성 </title>
  <script>
 function changeItem(e){

	 var sub = document.getElementById("category");
	 var select = e.value;
	 if(select == "people"){
		sub.innerHTML = "<select name='category'><option value=''>취업</option><option value='allba'>알바</option></select>"
		 
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
  <label for="sitename">사이트이름</label>
  <input type="text" id="sitename" name="sitename"/>
 </p>
   

 <p>
  <label >중개상품</label>
	<select name="topcategory" id="topcategory" onchange="changeItem(this)">
		<option value="">---</option>
    	<option value="product">물건</option>
    	<option value="location">장소</option>
    	<option value="people">사람</option>
	</select>
 </p>




소분류<div id ="category"></div>

	

  

 
 
 <p>
   <button type="submit" name="status" value="store">저장</button>  <button type="submit" name="status" value="deploy">생성</button>  
 </p>
 
</form>

</body>
</html>