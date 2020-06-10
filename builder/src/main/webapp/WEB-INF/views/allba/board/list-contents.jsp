<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="py-5 bg-light" style="min-height: 80%;">
    <div class="container" style="max-width: 1920px;">
        <div class="row">
            <c:forEach items="${dtos}" var="dtos">
                <div class="col-md-3">
                    <div class="card mb-4 shadow-sm">
                        <img src="${dtos.image}" class="bd-placeholder-img card-img-top" width="100%" height="300" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail">                        
                        <!-- <rect width="100%" height="100%" fill="#55595c" /> -->                        
                        <div class="card-body">                            
                            <div class="d-flex justify-content-between align-items-left">
                                <h2 class="text-primary">${dtos.getTitle()}</h2>
                                <p class="ml-auto btn btn-sm btn-outline-white bg-warning text-white">
                                    <c:if test="${bi != NULL}">
                                        <c:if test="${empty bi}">
                                            <a class="text-white" href="/allba/${sitename}/board/regbookmark?boardid=${dtos.getBoardid()}">즐겨찾기</a>
                                        </c:if>
                                        <c:forEach items="${bi}" var="bi">
                                            <c:if test="${bi != dtos.getBoardid()}">
                                                <a class="text-white" href="/allba/${sitename}/board/regbookmark?boardid=${dtos.getBoardid()}">즐겨찾기</a>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                    <c:if test="${bi == NULL}">
                                        <a class="text-white" href="/allba/${sitename}/board/regbookmark?boardid=${dtos.getBoardid()}">즐겨찾기</a>
                                    </c:if>                                
                                </p>                            
                            </div>
                            
                                <p class="mt-2 card-text text-truncate" style=" white-space: nowrap;">
                                    ${dtos.content}
                                </p>
                            
                            <div class="d-flex justify-content-between align-items-left">                                
                                <button type="button" class="ml-1 btn btn-sm btn-primary" disabled>지역 : ${dtos.location} </button>
                                <button type="button" class="ml-1 btn btn-sm btn-secondary" disabled>시급 : ${dtos.money}원</button>
                                <small class="ml-auto text-muted"> ${dtos.regdate}</small>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>
<!-- 
<p>
    <c:forEach items="${dtos}" var="dtos">
        <c:if test="${bi != NULL}">
            <c:if test="${empty bi}">
                <a href="/allba/${sitename}/board/regbookmark?boardid=${dtos.getBoardid()}">즐겨찾기</a>
            </c:if>
            <c:forEach items="${bi}" var="bi">
                <c:if test="${bi != dtos.getBoardid()}">
                    <a href="/allba/${sitename}/board/regbookmark?boardid=${dtos.getBoardid()}">즐겨찾기</a>
                </c:if>
            </c:forEach>
        </c:if>
        <c:if test="${bi == NULL}">
            <a href="/allba/${sitename}/board/regbookmark?boardid=${dtos.getBoardid()}">즐겨찾기</a>
        </c:if>

        ${dtos.location} <a href="/allba/${sitename}/board/view?boardid=${dtos.getBoardid()}"> ${dtos.getTitle()} </a> ${dtos.money} ${dtos.regdate}<br />
    </c:forEach>
</p>

<a href="/allba/${sitename}/board/write">글 작성zz</a>

<style>
    #menu {
        height: 50px;
        background: #fcc;
    }

    .one {
        width: 600px;
        height: 100%;
        margin: 0 auto;
    }

    .one > li {
        float: left;
        width: 20%;
        line-height: 50px;
        text-align: center;
        position: relative;
    }

    .one > li:hover .two {
        left: 0;
    }

    .one > li a {
        display: block;
    }

    .one > li a:hover {
        bakground: #b21016;
        color: #fff;
        font-weight: bold;
    }

    .two {
        position: absolute;
        top: 50px;
        left: -9999px;
        background: #ccc;
        width: 120%;
    }

    .two > li {
        position: relative;
    }

    .two > li:hover .three {
        left: 100%;
    }

    .three {
        position: absolute;
        top: 0;
        background: #6bd089;
        left: -9999px;
        width: 200%;
    }

    .three > li a:hover {
        backgorund: #085820;
        color: #fff;
    }
</style> -->
