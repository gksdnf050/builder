<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

 <div class="container" style="flex: 1 0 auto;">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Card Body -->
            <div class="p-5">
                <div class="text-center">
                
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">${view.title}</h1>
                </div>
<%-- <form class="user mb-3" action="/${c}/${sitename}/board/write" method="post" enctype="multipart/form-data"> --%>
                    
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
                           			 <span>${view.title}</span>
                        		</div>
                  			</c:if>
                  			
                        	<c:if test="${fieldlist.fieldtype eq 'text'}"> 
                        		<div class="col-sm-1 py-2 text-right p-2">
                            		<span class="text-md text-primary">${fieldlist.fieldname}</span>
                        		</div>
                        		<div class="col-sm-5 py-2 form-group">
                           			 <span> ${view.get(fieldlist.fieldname)}</span>
                        		</div> 
                        	</c:if>
                        	
                        	<c:if test="${fieldlist.fieldtype eq 'select'}"> 
                        		 <div class="col-sm-1 py-2 text-right p-2">
                            		<span class="text-md text-primary">${fieldlist.fieldname}</span>
                        		</div>
                        		<div class="col-sm-5 py-2 form-group">
                            		<span>${view.get(fieldlist.fieldname)}</span>
                        		</div>
                    	  	</c:if>
                        	
                        	<c:if test="${fieldlist.fieldtype eq 'address'}"> 
                        		 <div class="col-sm-1 py-2 text-right p-2">
                            		<span class="text-md text-primary">주소</span>
                       		 	</div>
                        		<div class="col-sm-5 py-2 form-group">
                            		<span>${view.address}</span>
                        		</div> 
                        	</c:if>
                        	
                        	<c:if test="${fieldlist.fieldtype eq 'file'}"> 
                        		 <div class="col-sm-1 py-2 text-right p-2">
                            		<span class="text-md text-primary">파일</span>
                        		</div>
                        		<div class="col-sm-5 py-2 form-group">
                            		<img src="${view.image}" />
                        		</div> 
                        	</c:if>
                        	
                        	<c:if test="${fieldlist.fieldtype eq 'content'}"> 
                        		<div class="col-sm-1 py-2 text-right p-2">
                            		<span class="text-md text-primary">모집 내용</span>
                        		</div>
                        		<div class="col-sm-11 py-2 form-group">
                            		<span>${view.content}</span>
                        		</div>
                        	</c:if>
                        	
                        	<c:if test="${fieldlist.fieldtype eq 'date'}"> 
                        		<div class="col-sm-1 py-2 text-right p-2">
                            		<span class="text-md text-primary">마감날짜</span>
                        		</div>
                        		<div class="col-sm-5 py-2 form-group">
                            		<span>${view.deadline}</span>
                        		</div>
                        	</c:if>
                        	</c:forEach>
                        	                    </div> 
                    <div class="row form-group mb-5">
                        <div class="col-sm-3">&nbsp;</div>
                        <div class="col-sm-6">
                            <a href="/allba/${sitename}/notebox/apply?boardid=${view.boardid}&touserid=${view.userid}" class="btn btn-primary btn-user btn-block">메시지 보내기</a>
                        </div>
                        <div class="col-sm-3">&nbsp;</div>
                    </div>
                    
                    <c:if test="${view.userid eq allbamember.userid}">
                    
                    <div class="row form-group mb-5">
                        <div class="col-sm-3">&nbsp;</div>
                        <div class="col-sm-6">
                            <a href="/allba/${sitename}/board/modify?boardid=${view.boardid}" class="btn btn-primary btn-user btn-block">수정</a>
                        </div>
                        <div class="col-sm-3">&nbsp;</div>
                    </div>
                    
                    <div class="row form-group mb-5">
                        <div class="col-sm-3">&nbsp;</div>
                        <div class="col-sm-6">
                            <a href="/allba/${sitename}/board/delete?boardid=${view.boardid}" class="btn btn-danger btn-user btn-block">삭제</a>
                        </div>
                        <div class="col-sm-3">&nbsp;</div>
                    </div>
                    </c:if>
                    
                    
                <!-- </form> -->
<%-- <c:forEach items="${fieldlist}" var="fieldlist">
							 
								<c:if test="${fieldlist.fieldtype eq 'title'}">
									제목: ${view.title}
								</c:if>
							
							
								<c:if test="${fieldlist.fieldtype eq 'text'}">
									${fieldlist.fieldname}: ${view.get(fieldlist.fieldname)}
								</c:if>
							
								<c:if test="${fieldlist.fieldtype eq 'select'}">
									${fieldlist.fieldname}: ${view.get(fieldlist.fieldname)}
								</c:if>
							
								<c:if test="${fieldlist.fieldtype eq 'address'}">
									주소: ${view.address}
								</c:if>
							
								<c:if test="${fieldlist.fieldtype eq 'file'}">
									파일: <img src="${view.image}" />
								</c:if>
							
								<c:if test="${fieldlist.fieldtype eq 'content'}">
									모집 내용: ${view.content}
								</c:if>
							
								<c:if test="${fieldlist.fieldtype eq 'date'}">
									마감 날짜: ${view.deadline}
									
								</c:if>
							 --%>
							<%-- </c:forEach> --%>


<%-- <a href="/allba/${sitename}/notebox/apply?boardid=${view.boardid}&touserid=${view.userid}">메시지 보내기</a>

<c:if test="${view.userid eq allbamember.userid}">
	<a href="/allba/${sitename}/board/modify?boardid=${view.boardid}">수정</a>
	<a href="/allba/${sitename}/board/delete?boardid=${view.boardid}">삭제</a>
</c:if> --%>
            </div>
        </div>
    </div>
</div>