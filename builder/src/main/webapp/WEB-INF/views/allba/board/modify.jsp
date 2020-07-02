<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<form action="/allba/${sitename}/board/modify" method="post" enctype="multipart/form-data">
		<input type="hidden" name="boardid" value="${view.boardid}" /><br />
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
		<!--  
		
		<input type="hidden" name="boardid" value="${view.boardid}" /><br />
		<input type="hidden" name="userid" value="${allbamember.getUserid()}" /><br />
		
		
		
		<label>제목</label> 
			<input type="text" name="title" value="${view.title}" /><br /> 
		
		<label>경력</label>
			<select name="career">
				<option value="all" <c:if test="${view.career eq '무관'}"> selected </c:if>>무관</option>
				<option value="new" <c:if test="${view.career eq '신입'}"> selected </c:if>>신입</option>
				<option value="experienced" <c:if test="${view.career eq '경력'}"> selected </c:if>>경력</option>
			</select> <br /> 
		
		<label>성별 </label>
		 	<select name="gender">
				<option value="남자">남자</option>
				<option value="여자">여자</option>
				<option value="all">all</option>
			</select> <br /> 
		
		<label>모집 직종 </label> 
			<select name="occupation">
				<option value="매장관리">매장관리</option>
				<option value="서빙주방">서빙주방</option>
				<option value="서비스/미디어">서비스/미디어</option>
				<option value="고객상담/영업/리서치">고객상담/영업/리서치</option>
				<option value="강사교육">강사교육</option>
				<option value="생산/기능/운전/배달">생산/기능/운전/배달</option>
				<option value="사무회계">사무회계</option>
				<option value="it디자인">it디자인</option>
			</select> <br />
			
		 <label>근무 기간</label> 
		 	<select name="date">
				<option value="1일">1일</option>
				<option value="1주일이내">1주일이내</option>
				<option value="1주일~1개월">1주일~1개월</option>
				<option value="1개월~3개월">1개월~3개월</option>
				<option value="3개월~6개월">3개월~6개월</option>
				<option value="6개월~1년">6개월~1년</option>
				<option value="1년이상">1년이상</option>
			</select> <br /> 
			
		<label>지역 </label> 
			<select name="location">
				<option value="서울">서울</option>
				<option value="부산">부산</option>
				<option value="인천">인천</option>
			</select> <br />
			
		 <label>근무지 주소</label> 
		 	<input type="text" name="address" value ="${view.address}"/><br />
		 	
		<label>시급</label> 
			<input type="text" name="money" value = "${view.money}"/>원<br /> 
			
		 <label>이미지</label>
 			 <input type="file" name="file" /> <br/>
			 <img src="${view.image}" />
 			 <input type="hidden" name="image" value="${view.image}" /><br/>
			
		<label>내용</label>
			<textarea cols="50" rows="5" name="content">${view.content}</textarea><br />
		<label>마감날짜</label>
			<input type="date" name="deadline" value = "${view.deadline}"/> <br/>
			-->
		<button type="submit">수정</button>

	</form>
</body>
</html>