<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach items="${dto}" var="dto">
    <a href="/allba/${sitename}/board/view?boardid=${dto.getBoardid()}">메세지 보낸 글</a>
    <a href="/allba/${sitename}/notebox/view?noteboxid=${dto.getNoteboxid()}">${dto.getTitle()} </a>
    <a href="/allba/${sitename}/notebox/delete?noteboxid=${dto.getNoteboxid()}">삭제</a>
</c:forEach>
한울아 여기에 
/notebox/receivenotebox 일루 들어가면 나오는데 똑같이 인클루드 하는데 여기는 안나왕 dto를 못 불러들이는것 같은데 이게 메인화면에서 나타나서 그런건가 흠...