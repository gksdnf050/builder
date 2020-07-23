<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div class="container" style="flex: 1 0 auto;">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Card Body -->
            <div class="p-5">
                <div class="text-center">
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">드래그하여 변경하세요</h1>
                </div>
                <div class="container">
                    <div class="row">
                        <div class="col-12">
                            <ul id="sortable">
                                <c:forEach items="${fieldlist}" var="fieldlist">
                                    <c:choose>
                                        <c:when test="${fieldlist.fieldtype eq 'hidden'}"> </c:when>
                                        <c:when test="${fieldlist.fieldtype eq 'title'}">
                                            ${fieldlist.fieldname}이 표시됩니다.
                                        </c:when>
                                        <c:when test="${fieldlist.fieldtype ne 'content'}">
                                            <li id="${fieldlist}" class="text-xl">
                                                <span class="badge badge-pill badge-primary text-md text-white text-xl">${fieldlist.fieldname}</span>
                                            </li>
                                        </c:when>
                                        <c:otherwise>
                                            ${fieldlist.fieldname}가 표시됩니다.
                                        </c:otherwise>
                                    </c:choose>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="row form-group mb-5">
                    <div class="col-sm-3">&nbsp;</div>
                    <div class="col-sm-6">
                        <form class="user mb-3" id="form1" name="form1" method="post">
                            <input class="btn btn-primary btn-user btn-block" type="button" value="확인" onclick="test1();" />
                        </form>
                    </div>
                    <div class="col-sm-3">&nbsp;</div>
                </div>

                <hr />
            </div>
        </div>
    </div>
</div>
