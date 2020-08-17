<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>




<div class="container" style="flex: 1 0 auto;">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Card Body -->
            <div class="p-5">
                <div class="text-center">
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">광고배너를 등록하세요</h1>
                </div>
                  <c:forEach items="${list}" var="list">
                    <img src="${list.file}">
                    <a href="/allba/${sitename}/manage/deletebanner?bannerid=${list.bannerid}">삭제</a>
                  </c:forEach>

                  <form method = "post" enctype="multipart/form-data">
                    <input type="file" name="file" />
                    <button type="submit" >등록</button>  
                  </form> 
                <hr />
            </div>
        </div>
    </div>
</div>
