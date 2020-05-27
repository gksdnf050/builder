<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
 <title>회원가입</title> 
</head>
<body>
회원가입
<form method="post">
 <p>
  <label for="userId">아이디</label>
  <input type="text" id="userid" name="userid" />
 </p>  
 <p>
  <label for="userPass">패스워드</label>
  <input type="password" id="userpass" name="userpass" />
 </p>

 <p>
   <button type="submit" id="submit" >가입</button>  
 </p>
 </form>
 <p>
  <a href="/people/${sitename}">메인 화면</a>
 </p>
 
</body>
</html>