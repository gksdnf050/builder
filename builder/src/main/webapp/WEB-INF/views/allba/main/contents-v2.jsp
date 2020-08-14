<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div>
    <span>로고111</span><br/>
    <img src="${logo}"> <br/>
    <span>배너</span><br/>
    <c:forEach items="${list}" var="list">
  	    <img src="${list.file}">   
    </c:forEach>  <br/>
    공고 <br/>
    <c:forEach items="${dto}" var="dto">
    <a href="/allba/${sitename}/board/view?boardid=${dto.boardid}">
    ${dto.title}
    </a>
    <br/>   


    ${dto.content}<br/> 
    ${dto.address}<br/> 


    ${dto.get("지역")}<br/> 
    ${dto.get("시급")}<br/>      
    ${dto.regdate}<br/> 


    </c:forEach>

    카테고리 <br/>
    <c:forEach var="category" items="${category}">

    ${category.categoryname} <br/>



    <c:forEach var="detail" items="${detail}">
    <c:if test="${detail.parent  eq category.categoryname}">
    <a class="collapse-item" href="/${c}/${sitename}/board?category=${category.categoryname}&value=${detail.categoryname}">${detail.categoryname}</a>
    </c:if>
    </c:forEach> 
    <br/>

    </c:forEach>
</div>
                          