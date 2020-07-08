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

                
                    <form class="user mb-3" action="/allba/${sitename}/manage/registerfield" method="post" enctype="multipart/form-data">
                       <c:forEach items="${fieldlist}" var="fieldlist" varStatus="status">
                        <c:if test ="${fieldlist.fieldtype eq 'hidden'}">
                        <input type="hidden" name="fieldname${status.count}"/>
                        </c:if>
                       	<c:if test ="${fieldlist.fieldtype ne 'hidden'}">
                        <div class="row form-group mb-3">
                            <div class="col-sm-1 py-2 text-right p-2">
                                <span class="text-md text-primary">${fieldlist.fieldname}</span>
                            </div>
                            <c:if test ="${fieldlist.fieldtype ne 'select'}">
                        		<input type="hidden" name="fieldname${status.count}"/>
                        	</c:if>
                            <c:if test="${fieldlist.fieldtype eq 'select' }">
                            <div class="col-sm-4 py-2 form-group">
                                <input type="text" name="fieldname${status.count}" />
                                <input type="hidden" name="parent${status.count}" value="${fieldlist.fieldname}" />
                                <input type="hidden" name="depth${status.count}" value="2" />
                                 <input type="hidden" name="fieldtype${status.count}" value="" />
                                <button type="submit" class="btn btn-primary">등록하기</button>
                            </div>
                            <div class="col-sm-2 py-2 text-right p-2">
                                <span class="text-md text-primary">${fieldlist.fieldname} 선택 목록 : </span>
                            </div>
                            <div class="col-sm-4 py-2 text-left p-2">
                                
                                <select name="" class="custom-select">
                                			<c:forEach items="${selectlist}" var="selectlist">
                                				<c:if test="${selectlist.parent eq fieldlist.fieldname}"> 
                                    				<option value="">${selectlist.fieldname}</option>
                                    			</c:if>
                                    		</c:forEach>
                                		</select>      
                                   
                                
                            </div>
                            </c:if>
                        </div>
                        </c:if>
                         </c:forEach>
                         	큰 필드 등록
                          <div class="col-sm-4 py-2 form-group">
                         <input type="text" name="fieldname" />
 						 <input type="hidden" name="depth" value="1" />
 						 <input type="hidden" name="parent" value="" /> 
 						 <select name="fieldtype" class="custom-select">
 						 	<option value="text">text</option>
 						 	<option value="select">select</option>
 						 </select>
    					 <button type="submit" class="btn btn-primary">등록하기</button>
    					 </div>
                    </form>
               
                <hr />
            </div>
        </div>
    </div>
</div>
