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
	<select name="category">
    	<option value="product">물건</option>
    	<option value="location">장소</option>
    	<option value="people">사람</option>
	</select>
 </p>
 
 <p>
  <label for="field">필드</label>
	<select name="field">
    	<option value="title ">title</option>
    	<option value="content ">content </option>
    	<option value="money ">money </option>
	</select>
 </p>
 
 <p>
   <button type="submit" name="status" value="store">저장</button>  <button type="submit" name="status" value="deploy">생성</button>  
 </p>
 
</form>

</body>
</html>