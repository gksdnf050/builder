<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%--   <a href="/dashboard">대쉬보드</a> 
  <a href="">템플릿</a> 
  <a href="">설정</a> 
  <c:if test="${member != null}"><a href="/logout">로그아웃</a></c:if>
  <c:if test="${member == null}"><a href="/login">로그인</a></c:if>

   --%>
  <h1 style = "text-align : center"><a href="/"> <img src="../../resources/logo/logo.jpg/"/></a></h1>
  <div class = 'topnav'>
  <a href="/dashboard">대쉬보드</a>
  <a href="#">템플릿</a>
  
  
  <c:if test="${member != null}">
			<a href="/logout" style  = "float : right">로그아웃</a>
			<a href="/modify" style = "float : right">회원정보수정</a>
	</c:if>
	<c:if test="${member == null}">
			<a href="/login" style  = "float : right">로그인</a>
			<a href="/register" style  = "float : right">회원가입</a>
	</c:if>
	
	</div>