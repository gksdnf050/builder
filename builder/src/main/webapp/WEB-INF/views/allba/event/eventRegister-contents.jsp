<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="container" style="flex: 1 0 auto;">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Card Body -->
            <div class="p-5">
                <div class="text-center">
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">이벤트를 등록해주세요 </h1>
                </div>
				<form action="/${c}/${sitename}/event/register" method="post" enctype="multipart/form-data">
                    <div class="row form-group mb-3">
                    	  
                    	                   
                  			 	<div class="col-sm-1 py-2 text-right p-2">
                            		<span class="text-md text-primary">제목</span>
                        		</div>
                        		<div class="col-sm-11 py-2 form-group">
                           			 <input name="title" class="form-control" placeholder="제목을 입력해주세요." />
                        		</div>
                  		
                        		 <div class="col-sm-1 py-2 text-right p-2">
                            		<span class="text-md text-primary">파일</span>
                        		</div>
                        		<div class="col-sm-11 py-2 form-group">
                            		<input type="file" class="custom-select" name="file" />
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