<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${dto}" var="dto">
    <a href="/allba/${sitename}/board/view?boardid=${dto.getBoardid()}">메세지 보낸 글</a>
    <a href="/allba/${sitename}/notebox/view?noteboxid=${dto.getNoteboxid()}">${dto.getTitle()} </a>
    <a href="/allba/${sitename}/notebox/delete?noteboxid=${dto.getNoteboxid()}">삭제</a>
</c:forEach>
