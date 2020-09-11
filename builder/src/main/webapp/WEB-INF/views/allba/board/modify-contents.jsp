<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container" style="flex: 1 0 auto;">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <div class="p-5">
                <div class="text-center">
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">${view.title}</h1>
                </div>
                
                <form action="/${c}/${sitename}/board/modify" method="post" enctype="multipart/form-data">
                    <input type="hidden" name="boardid" value="${view.boardid}" /><br />
                        <div class="row form-group mb-3">
                        <c:forEach items="${fieldlist}" var="fieldlist">
                                            
                            <c:if test="${fieldlist.fieldtype eq 'hidden'}"> 
                                <input type="hidden" name="userid" value="${allbamember.getUserid()}" />
                            </c:if>
                            
                            <c:if test="${fieldlist.fieldtype eq 'title'}"> 
                                <div class="col-sm-1 py-2 text-right p-2">
                                    <span class="text-md text-primary">제목</span>
                                </div>
                                <div class="col-sm-11 py-2 form-group">
                                        <input name="${fieldlist.fieldname}" class="form-control" value="${view.title}" />
                                </div>
                            </c:if>
                            
                            <c:if test="${fieldlist.fieldtype eq 'text'}"> 
                                <div class="col-sm-1 py-2 text-right p-2">
                                    <span class="text-md text-primary">${fieldlist.fieldname}</span>
                                </div>
                                <div class="col-sm-5 py-2 form-group">
                                        <input name="${fieldlist.fieldname}" type="text" class="form-control"  value="${view.get(fieldlist.fieldname)}"/>
                                </div> 
                            </c:if>
                            
                            <c:if test="${fieldlist.fieldtype eq 'select'}"> 
                                    <div class="col-sm-1 py-2 text-right p-2">
                                    <span class="text-md text-primary">${fieldlist.fieldname}</span>
                                </div>
                                <div class="col-sm-5" py-2>
                                    <div class="">                           			
                                        <select name="${fieldlist.fieldname}" class="custom-select">
                                            <c:forEach items="${selectlist}" var="selectlist">
                                                <c:if test="${selectlist.parent eq fieldlist.fieldname}"> 
                                                    <option value="${selectlist.fieldname}" <c:if test="${view.get(fieldlist.fieldname) eq selectlist.fieldname}"> selected </c:if>>${selectlist.fieldname}</option>
                                                </c:if>
                                            </c:forEach>
                                        </select>                               			
                                    </div>
                                </div>
                            </c:if>
                            
                            <c:if test="${fieldlist.fieldtype eq 'address'}"> 
                                    <div class="col-sm-1 py-2 text-right p-2">
                                    <span class="text-md text-primary">주소</span>
                                </div>
                                <div class="col-sm-5 py-2 form-group">
                                    <input type="text" class="form-control" name="address" value ="${view.address}"/>
                                </div> 
                            </c:if>
                            
                            <c:if test="${fieldlist.fieldtype eq 'file'}"> 
                                    <div class="col-sm-1 py-2 text-right p-2">
                                    <span class="text-md text-primary">파일</span>
                                </div>
                                <div class="col-sm-5 py-2 form-group">
                                <input type="file" class="custom-select" name="file" />
                                    <img src="${view.image}" />
                                    <input type="hidden" name="image" value="${view.image}" /><br/>
                                </div> 
                            </c:if>
                            
                            <c:if test="${fieldlist.fieldtype eq 'content'}"> 
                                <div class="col-sm-6">&nbsp;</div>
                                <div class="col-sm-1 py-2 text-right p-2">
                                    <span class="text-md text-primary">모집 내용</span>
                                </div>
                                <div class="col-sm-11 py-2 form-group">
                                    <textarea class="form-control" name="content" cols="50" rows="5">${view.content}</textarea>
                                </div>
                            </c:if>
                            
                            <c:if test="${fieldlist.fieldtype eq 'date'}"> 
                                <div class="col-sm-1 py-2 text-right p-2">
                                    <span class="text-md text-primary">마감 날짜</span>
                                </div>
                                <div class="col-sm-5 py-2 form-group">
                                    <input type="date" class="custom-select" name="deadline" value = "${view.deadline}"/>
                                </div>
                            </c:if>
                        </c:forEach>
                    </div>
                
                <div class="row form-group mb-5">
                    <div class="col-sm-3">&nbsp;</div>
                    <div class="col-sm-6">
                        <button type="submit" class="btn btn-primary btn-user btn-block">수정</button>
                    </div>
                    <div class="col-sm-3">&nbsp;</div>
                </div>
            </form>
        </div>
    </div>
</div>
        