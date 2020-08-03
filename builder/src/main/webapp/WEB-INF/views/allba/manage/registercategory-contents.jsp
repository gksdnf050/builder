<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
    function changeItem(e) {
        var parent = document.getElementById("parent");
        var select = e.value;
        if (select == "1") {
            parent.innerHTML = "<option value=''>--</option>";
        }
        if (select == "2") {
            parent.innerHTML = "<c:forEach items='${category}' var='category'><option value='${category.categoryname}'>${category.categoryname}</option></c:forEach>";
        }
    }
</script>

<div class="container" style="flex: 1 0 auto;">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Card Body -->
            <div class="p-5">
                <div class="text-center">
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">카테고리를 등록하세요</h1>
                </div>

                <form class="user mb-3" action="/allba/${sitename}/manage/registercategory" method="post" enctype="multipart/form-data">
                    <c:forEach items="${category}" var="category" varStatus="status">
                        <div class="row form-group mb-3">
                            <div class="col-sm-1 py-2 text-right p-2">
                                <span class="text-md text-primary">${category.categoryname}</span>
                            </div>
                            <div class="col-sm-4 py-2 form-group">
                                <input type="text" name="categoryname${status.count}" />
                                <input type="hidden" name="parent${status.count}" value="${category.categoryname}" />
                                <input type="hidden" name="depth${status.count}" value="2" />
                                <button type="submit" class="btn btn-primary">등록하기</button><a href="/allba/${sitename}/manage/deletecategory?categoryid=${category.categoryid}&categoryname=${category.categoryname}">삭제</a>
                            </div>
                            <div class="col-sm-2 py-2 text-right p-2">
                                <span class="text-md text-primary">${category.categoryname} 카테고리 목록 : </span>
                            </div>
                            <div class="col-sm-4 py-2 text-left p-2">
                                <c:forEach items="${detail}" var="detail">
                                    <c:if test="${detail.parent eq category.categoryname}"> ${detail.categoryname}<a href="/allba/${sitename}/manage/deletecategory?categoryid=${detail.categoryid}&categoryname=${detail.categoryname}">삭제</a> </c:if>
                                </c:forEach>
                            </div>
                        </div>
                    </c:forEach>
                    큰 카테고리 등록
                    <div class="col-sm-4 py-2 form-group">
                        <input type="text" name="categoryname" />
                        <input type="hidden" name="depth" value="1" />
                        <button type="submit" class="btn btn-primary">등록하기</button>
                    </div>
                </form>

                <hr />
            </div>
        </div>
    </div>
</div>
