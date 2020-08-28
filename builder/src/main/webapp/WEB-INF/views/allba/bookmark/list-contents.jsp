<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="py-5 bg-light" style="min-height: 80%;">
    <div class="container" style="max-width: 1920px;">
        <div class="row">
            <c:forEach items="${dtos}" var="dtos">
                <div class="col-md-3">
                    <div class="card mb-4 shadow-sm">
                        <img src="${dtos.image}" class="bd-placeholder-img card-img-top" width="100%" height="300" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail">                        
                        <div class="card-body">                            
                            <div class="d-flex justify-content-between align-items-left">
                                <h2 class="text-primary">
                                    <a href="/${c}/${sitename}/board/view?boardid=${dtos.boardid}">
                                        ${dtos.title}
                                    </a>
                                </h2>
                                <p class="ml-auto">
                                    <c:if test="${bi != NULL}">                                    
                                        <c:set var="loop_flag" value="false" />
                                            <c:forEach items="${bi}" var="bi">
                                                <c:if test="${bi == dtos.boardid}">
                                                    <c:set var="loop_flag" value="true" />
                                                </c:if>
                                            </c:forEach>
                                            <c:if test="${not loop_flag }">
                                                <a class="text-lg" href="/${c}/${sitename}/bookmark/delete?boardid=${dtos.boardid}">삭제</a>
                                            </c:if>
                                            <c:if test="${loop_flag }">
                                                <a class="text-lg" href="/${c}/${sitename}/bookmark/delete?boardid=${dtos.boardid}">삭제</a>
                                            </c:if>
                                    </c:if>
                                    <c:if test="${bi == NULL}">
                                        <a class="text-lg" href="/${c}/${sitename}/bookmark/delete?boardid=${dtos.boardid}">삭제</a>
                                    </c:if>
                                                                    
                                </p>                            
                            </div>                            
                            <p class="mt-2 card-text text-truncate" style=" white-space: nowrap;">
                                ${dtos.content}
                            </p>                            
                            <div class="d-flex justify-content-between align-items-left">                                
                                <button type="button" class="ml-1 btn btn-sm btn-primary" disabled>지역 : ${dtos.get("지역")}</button>
                                <button type="button" class="ml-1 btn btn-sm btn-secondary" disabled>시급 : ${dtos.get("시급")}원</button>
                                <small class="ml-auto text-muted"> ${dtos.regdate}</small>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
