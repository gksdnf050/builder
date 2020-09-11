<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="d-sm-flex align-items-center justify-content-between mb-2 py-2">
    <h1 class="h3 mb-1 text-gray-800 font-weight-bold"><br />&nbsp;<font class="font-italic font-weight-light text-primary text-sm text-blue-"></font></h1>
</div>

<div class="col-lg-12 mb-4">
    <div class="shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">메세지함</h6>
        </div>
        <div class="card-body">
            <div class="text-center">
                <c:forEach items="${dto}" var="dto">
                    <div class="col-md-12">
                        <div class="card mb-4 shadow-sm">
                            <div class="card-body">
                                <div class="d-flex justify-content-between align-items-left">
                                    <div class="container">
                                        <div class="row">
                                            <h4>
                                                공고 :
                                                <a href="/${c}/${sitename}/board/view?boardid=${dto.getBoardid()}">${dto.getBoardid()}</a>
                                            </h4>
                                        </div>
                                        <div class="row">
                                            <h4>
                                                메세지내용 :
                                                <a href="/${c}/${sitename}/notebox/view?noteboxid=${dto.getNoteboxid()}">${dto.getTitle()} </a>
                                            </h4>
                                        </div>
                                    </div>
                                    <p class="ml-auto">
                                        <a href="/${c}/${sitename}/notebox/delete?noteboxid=${dto.getNoteboxid()}">삭제</a>
                                    </p>
                                </div>
                                <p class="mt-2 card-text text-truncate" style="white-space: nowrap"></p>
                                <div class="d-flex justify-content-between align-items-left"></div>
                            </div>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
</div>
