<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

 

<c:forEach items="${fieldlist}" var="fieldlist">
 
	<c:if test="${fieldlist.fieldtype eq 'title'}">
		제목: ${view.title}
	</c:if>


	<c:if test="${fieldlist.fieldtype eq 'text'}">
		${fieldlist.fieldname}: ${view.get(fieldlist.fieldname)}
	</c:if>

	<c:if test="${fieldlist.fieldtype eq 'select'}">
		${fieldlist.fieldname}: ${view.get(fieldlist.fieldname)}
	</c:if>

	<c:if test="${fieldlist.fieldtype eq 'address'}">
		주소: ${view.address}
	</c:if>

	<c:if test="${fieldlist.fieldtype eq 'file'}">
		파일: <img src="${view.image}" />
	</c:if>

	<c:if test="${fieldlist.fieldtype eq 'content'}">
		모집 내용: ${view.content}
	</c:if>

	<c:if test="${fieldlist.fieldtype eq 'date'}">
		마감 날짜: ${view.deadline}
		
	</c:if>

</c:forEach>



<a
	href="/allba/${sitename}/notebox/apply?boardid=${view.boardid}&touserid=${view.userid}">메시지 보내기</a>

<c:if test="${view.userid eq allbamember.userid}">
	<a href="/allba/${sitename}/board/modify?boardid=${view.boardid}">수정</a>
	<a href="/allba/${sitename}/board/delete?boardid=${view.boardid}">삭제</a>
</c:if>