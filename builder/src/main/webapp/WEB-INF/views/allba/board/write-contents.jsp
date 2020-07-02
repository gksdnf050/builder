<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container" style="flex: 1 0 auto;">
    <div class="card o-hidden border-0 shadow-lg my-5">
        <div class="card-body p-0">
            <!-- Card Body -->
            <div class="p-5">
                <div class="text-center">
                    <h1 class="font-weight-bold mb-5 text-gray-800 text-xl">아르바이트 모집 공고를 작성해보세요!</h1>
                </div>
				
                <form class="user mb-3" action="/allba/${sitename}/board/write" method="post" enctype="multipart/form-data">
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
                           			 <input name="${fieldlist.fieldname}" class="form-control" placeholder="제목을 입력해주세요." />
                        		</div>
                  			</c:if>
                  			
                        	<c:if test="${fieldlist.fieldtype eq 'text'}"> 
                        		<div class="col-sm-1 py-2 text-right p-2">
                            		<span class="text-md text-primary">${fieldlist.fieldname}</span>
                        		</div>
                        		<div class="col-sm-5 py-2 form-group">
                           			 <input name="${fieldlist.fieldname}" type="text" class="form-control" placeholder="입력하세요." />
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
                                    				<option value="${selectlist.fieldname}">${selectlist.fieldname}</option>
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
                            		<input type="text" class="form-control" name="address" placeholder="상세 주소를 입력해주세요." />
                        		</div> 
                        	</c:if>
                        	
                        	<c:if test="${fieldlist.fieldtype eq 'file'}"> 
                        		 <div class="col-sm-1 py-2 text-right p-2">
                            		<span class="text-md text-primary">파일</span>
                        		</div>
                        		<div class="col-sm-5 py-2 form-group">
                            		<input type="file" class="custom-select" name="file" />
                        		</div> 
                        	</c:if>
                        	
                        	<c:if test="${fieldlist.fieldtype eq 'content'}"> 
                        		<div class="col-sm-1 py-2 text-right p-2">
                            		<span class="text-md text-primary">모집 내용</span>
                        		</div>
                        		<div class="col-sm-11 py-2 form-group">
                            		<textarea class="form-control" name="content" placeholder="모집 내용을 작성해주세요." cols="50" rows="5"></textarea>
                        		</div>
                        	</c:if>
                        	
                        	<c:if test="${fieldlist.fieldtype eq 'date'}"> 
                        		<div class="col-sm-1 py-2 text-right p-2">
                            		<span class="text-md text-primary">마감날짜</span>
                        		</div>
                        		<div class="col-sm-5 py-2 form-group">
                            		<input type="date" class="custom-select" name="deadline" />
                        		</div>
                        	</c:if>
                        	
                    	  </c:forEach>
                    <!--     <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">제목</span>
                        </div>
                        <div class="col-sm-11 py-2 form-group">
                            <input name="title" class="form-control" placeholder="제목을 입력해주세요." />
                        </div>
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">모집 직종</span>
                        </div>
                        <div class="col-sm-5" py-2>
                            <div class="">
                                <select name="직종" class="custom-select">
                                    <option value="매장관리">매장관리</option>
                                    <option value="서빙주방">서빙주방</option>
                                    <option value="서비스/미디어">서비스/미디어</option>
                                    <option value="고객상담/영업/리서치">고객상담/영업/리서치</option>
                                    <option value="강사교육">강사교육</option>
                                    <option value="생산/기능/운전/배달">생산/기능/운전/배달</option>
                                    <option value="사무회계">사무회계</option>
                                    <option value="it디자인">it디자인</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">경력</span>
                        </div>
                        <div class="col-sm-5" py-2>
                            <div class="form-group">
                                <select name="경력" id="" class="custom-select">
                                    <option value="무관">무관</option>
                                    <option value="신입">신입</option>
                                    <option value="경력">경력</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">모집 성별</span>
                        </div>
                        <div class="col-sm-5" py-2>
                            <div class="form-group">
                                <select name="gender" id="" class="custom-select">
                                    <option value="남자">남자</option>
                                    <option value="여자">여자</option>
                                    <option value="all">all</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">근무 기간</span>
                        </div>
                        <div class="col-sm-5" py-2>
                            <div class="">
                                <select name="date" id="" class="custom-select">
                                    <option value="1일">1일</option>
                                    <option value="1주일이내">1주일이내</option>
                                    <option value="1주일~1개월">1주일~1개월</option>
                                    <option value="1개월~3개월">1개월~3개월</option>
                                    <option value="3개월~6개월">3개월~6개월</option>
                                    <option value="6개월~1년">6개월~1년</option>
                                    <option value="1년이상">1년이상</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">마감날짜</span>
                        </div>
                        <div class="col-sm-5 py-2 form-group">
                            <input type="date" class="custom-select" name="deadline" />
                        </div>
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">이미지</span>
                        </div>
                        <div class="col-sm-5 py-2 form-group">
                            <input type="file" class="custom-select" name="file" />
                        </div>
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">지역</span>
                        </div>
                        <div class="col-sm-5" py-2>
                            <div class="">
                                <select name="지역" id="" class="custom-select">
                                    <option value="서울">서울</option>
                                    <option value="부산">부산</option>
                                    <option value="인천">인천</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">시급</span>
                        </div>
                        <div class="col-sm-5 py-2 form-group">
                            <input name="money" type="text" class="form-control" placeholder="시급을 입력하세요." />
                        </div>
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">주소</span>
                        </div>
                        <div class="col-sm-11 py-2 form-group">
                            <input class="form-control" name="address" placeholder="상세 주소를 입력해주세요." />
                        </div>
                        <div class="col-sm-1 py-2 text-right p-2">
                            <span class="text-md text-primary">모집 내용</span>
                        </div>
                        <div class="col-sm-11 py-2 form-group">
                            <textarea class="form-control" name="content" placeholder="모집 내용을 작성해주세요." cols="50" rows="5"></textarea>
                        </div>
                        <input type="hidden" name="userid" value="${allbamember.getUserid()}" /> -->
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
                <!-- <div class="text-center">
                    <a class="small" href="forgot-password.html">Forgot Password?</a>
                </div>
                <div class="text-center">
                    <a class="small" href="login.html">Already have an account? Login!</a>
                </div> -->
            </div>
        </div>
    </div>
</div>