<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="py-5 bg-light" style="min-height: 80%;">

 
    <div class="container" style="max-width: 1920px;">
        <div class="row">
 
            <c:forEach items="${list}" var="list">
                <div class="col-md-3">
                    <div class="card mb-4 shadow-sm">
                        <img src="${list.file}" class="bd-placeholder-img card-img-top" width="100%" height="300" preserveAspectRatio="xMidYMid slice" focusable="false" role="img" aria-label="Placeholder: Thumbnail">                        
                        <!-- <rect width="100%" height="100%" fill="#55595c" /> -->                        
                        <div class="card-body">                            
                            <div class="d-flex justify-content-between align-items-left">
                                <h2 class="text-primary">
                                    <a href="/allba/${sitename}/event/view?eventid=${list.eventid}">${list.title}</a>
                                </h2>                     
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</div>