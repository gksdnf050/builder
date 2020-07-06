<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<script>
    function changeItem(e) {
        var parent = document.getElementById("parent");
        var fieldtype = document.getElementById("fieldtype");
        var select = e.value;
        if (select == "1") {
            fieldtype.innerHTML = "<option value='select'>select</option><option value='text'>text</option>";
            parent.innerHTML = "<option value=''>--</option>";
        }
        if (select == "2") {
            parent.innerHTML = "<c:forEach items='${fieldlist}' var='fieldlist'><option value='${fieldlist.fieldname}'>${fieldlist.fieldname}</option></c:forEach>";
            fieldtype.innerHTML = "<option value=''>--</option>";
        }
    }
</script>

<div class="container" style="flex: 1 0 auto;">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Card Body -->
            <div class="p-5">
                <div class="text-center">
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">필드를 등록하세요</h1>
                </div>

                <form class="user mb-3" action="/allba/${sitename}/manage/registerfield" method="post" enctype="multipart/form-data">
                    <div class="row form-group mb-3">
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">필드 이름</span>
                        </div>
                        <div class="col-sm-5 py-2 form-group">
                            <input name="fieldname" type="text" class="form-control" placeholder="입력하세요." />
                        </div>
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">필드 레벨</span>
                        </div>
                        <div class="col-sm-5 py-2 form-group">
                            <select class="custom-select" name="depth" id="depth" onchange="changeItem(this)">
                                <option value="">--</option>
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
                    </div>

                    <div class="row form-group mb-3">
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">필드 타입</span>
                        </div>
                        <div class="col-sm-5 py-2 form-group">
                            <select class="custom-select" name="fieldtype" id="fieldtype"> </select>
                        </div>
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">상위 카테고리</span>
                        </div>
                        <div class="col-sm-5 py-2 form-group">
                            <select class="custom-select" name="parent" id="parent"> </select>
                        </div>
                    </div>

                    <div class="row form-group mb-5">
                        <div class="col-sm-3">&nbsp;</div>
                        <div class="col-sm-6">
                            <button type="submit" class="btn btn-primary btn-user btn-block">등록하기</button>
                        </div>
                        <div class="col-sm-3">&nbsp;</div>
                    </div>
                </form>
                <hr />
            </div>
        </div>
    </div>
</div>
