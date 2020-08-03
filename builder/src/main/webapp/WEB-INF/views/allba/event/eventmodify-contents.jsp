<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
        <title>Insert title here</title>
    </head>
    <body>
        <form action="/allba/${sitename}/event/modify" method="post" enctype="multipart/form-data">
            <input type="hidden" name="eventid" value="${dto.eventid}" />
            제목<input type="text" name="title" value="${dto.title}" /> 파일<img src="${dto.file}" />
            <input type="file" name="file" value="${dto.file}" />

            <button type="submit">수정하기</button>
        </form>
    </body>
</html>
