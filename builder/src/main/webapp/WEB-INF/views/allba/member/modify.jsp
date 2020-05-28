<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
 <title>회원정보 수정</title> 
</head>
<body>
회원정보수정
<form method="post">
 <p>
  <label for="userId">아이디</label>
  <input type="text" id="userid" name="userid" value="${mo.userid}"/>
 </p>  
 <p>
  <label for="userPass">패스워드</label>
  <input type="password" id="userpass" name="userpass" value="${mo.userpass}"/>
 </p>
<input type="hidden" id="userno" name="userno" value="${mo.userno}"/>
 <p>
   <button type="submit" id="submit" >수정</button>  
 </p>
 </form>
 <p>
  <a href="/allba/${sitename}">메인 화면</a>
 </p>
 
</body>
</html>