<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<ul id="sortable">
    <c:forEach items="${fieldlist}" var="fieldlist">
        <c:choose>
            <c:when test="${fieldlist.fieldtype eq 'hidden'}"> </c:when>
            <c:when test="${fieldlist.fieldtype eq 'title'}">
                ${fieldlist.fieldname}
            </c:when>
            <c:when test="${fieldlist.fieldtype ne 'content'}">
                <li id="${fieldlist}">
                    ${fieldlist.fieldname}
                </li>
            </c:when>
            <c:otherwise>
                ${fieldlist.fieldname}
            </c:otherwise>
        </c:choose>
    </c:forEach>
</ul>

<div class="container" style="flex: 1 0 auto;">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Card Body -->
            <div class="p-5">
                <div class="text-center">
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">카테고리를 등록하세요</h1>
                </div>

                <form id="form1" name="form1" method="post">
                    <input type="button" value="확인" onclick="test1();" />
                </form>

                <hr />
            </div>
        </div>
    </div>
</div>
