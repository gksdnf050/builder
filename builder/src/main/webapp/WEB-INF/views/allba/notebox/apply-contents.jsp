<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container" style="flex: 1 0 auto">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Card Body -->
            <div class="p-5">
                <div class="text-center">
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">NEW MESSAGE</h1>
                </div>
                <div>
                    <form action="/${c}/${sitename}/notebox/apply" method="post" enctype="multipart/form-data">
                        <input type="hidden" name="fromuserid" value="${allbamember.getUserid()}" /><br />
                        <input type="hidden" name="touserid" value="${touserid}" /><br />
                        <input type="hidden" name="boardid" value="${boardid}" /><br />

                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary"><label>제목</label></span>
                        </div>
                        <div class="col-sm-11 py-2 form-group">
                            <input name="${fieldlist.fieldname}" type="text" class="form-control" name="title" placeholder="제목을 입력해주세요." />
                        </div>

                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary"><label>내용</label></span>
                        </div>
                        <div class="col-sm-11 py-2 form-group">
                            <textarea class="form-control" name="content" placeholder="모집 내용을 작성해주세요." cols="50" rows="5"></textarea>
                        </div>

                        <div class="row form-group mb-5">
                            <div class="col-sm-3">&nbsp;</div>
                            <div class="col-sm-6">
                                <button type="submit" class="btn btn-primary btn-user btn-block">메세지보내기</button>
                            </div>
                            <div class="col-sm-3">&nbsp;</div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
