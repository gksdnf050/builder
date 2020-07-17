<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="/allba/${sitename}/event/register" method="post" enctype="multipart/form-data">
 						<input type="text" name="title"/>제목
 						
 						이벤트 파일
                        <input type="file"  name="file" />
                        		
 
  <button type="submit">등록하기</button>
 </form>

</body>
</html>