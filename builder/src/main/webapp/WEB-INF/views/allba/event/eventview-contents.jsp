<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container" style="flex: 1 0 auto;">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Card Body -->
            <div class="p-5">
                <div class="text-center">
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">${view.title}</h1>
                </div>

                <div class="row form-group mb-3">
                    <div class="col-sm-1 py-2 text-right p-2">
                        <span class="text-md text-primary">제목</span>
                    </div>
                    <div class="col-sm-11 py-2 form-group">
                        <span>${dto.title}</span>
                    </div>

                    <div class="col-sm-1 py-2 text-right p-2">
                        <span class="text-md text-primary">내용</span>
                    </div>
                    <div class="col-sm-11 py-2 form-group">
                        <span> <img src="${dto.file}" /></span>
                    </div>
                    <c:if test="${allbamember.getManagement() eq 'true'}">
                        <a href="/${c}/${sitename}/event/modify?eventid=${dto.eventid}"> <button class="btn btn-primary btn-user">수정</button></a>
                        <a href="/${c}/${sitename}/event/delete?eventid=${dto.eventid}"> <button class="btn btn-secondary btn-user">삭제</button></a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>
</div>
