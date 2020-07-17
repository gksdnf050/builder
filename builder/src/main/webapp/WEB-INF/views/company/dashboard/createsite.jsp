<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사이트 생성 </title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="/resources/assets/css/main.css" />
<noscript><link rel="stylesheet" href="/resources/assets/css/noscript.css" /></noscript>
  <script>
 function changeItem(e){

	 var sub = document.getElementById("category");
	 var select = e.value;
	 if(select == "people"){
		sub.innerHTML = "<select name='category'><option value=''>취업</option><option value='allba'>알바</option></select>"
		 
	 }
	 if(select == "product"){
		 sub.innerHTML = "<select name='category'><option value='clothes'>옷</option></select>";
		 
	 }	
	 if(select == "location"){
		 sub.innerHTML = "<select name='category'><option value='motel'>숙박</option></select>";
		 
	 }	
	
 }
 </script>
</head>
<body>
<form method = "post">
			<section id="sidebar">
				<div class="inner">
					<nav>
						<ul>
							<li><a href="#intro">사이트 이름 설정</a></li>
							<li><a href="#one">이메일 입력</a></li>
							<li><a href="#two">중개 상품 설정</a></li>
							
						</ul>
					</nav>
				</div>
			</section>

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Intro -->
					<section id="intro" class="wrapper style1 fullscreen fade-up">
						<div class="inner">
						<h1>사이트 이름을 적어주세요!</h1>
						<p><label for="sitename"/>
							<input type="text" id="sitename" name="sitename" /></p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">다음으로 </a></li>
							</ul>
						</div>
					</section>
					
						<section id="one" class="wrapper style1 fullscreen fade-up">
						<div class="inner">
						<h1>이메일을 적어주세요!</h1>
						<p>
							<input type="text" id="siteemail" name="siteemail" /></p>
							<ul class="actions">
								<li><a href="#two" class="button scrolly">다음으로 </a></li>
							</ul>
						</div>
					</section>
					
					<section id="two" class="wrapper style1 fullscreen fade-up">
						<div class="inner">
							<h1>중개 상품을 선택하세요!</h1>
							 <p>
  <label >중개상품</label>
	<select name="topcategory" id="topcategory" onchange="changeItem(this)">
		<option value="">---</option>
    	<option value="product">물건</option>
    	<option value="location">장소</option>
    	<option value="people">사람</option>
	</select>
 </p>
  
소분류<div id ="category"></div>
 <p></p>
							
					
							 <p>
   <button type="submit" name="status" value="store">저장</button>  <button type="submit" name="status" value="deploy">생성</button>  
 </p>
						</div>
					</section>
					</div>
					
	
					</form>
	<script src="/resources/assets/js/jquery.min.js"></script>
	<script src="/resources/assets/js/jquery.scrollex.min.js"></script>
	<script src="/resources/assets/js/jquery.scrolly.min.js"></script>
	<script src="/resources/assets/js/browser.min.js"></script>
	<script src="/resources/assets/js/breakpoints.min.js"></script>
	<script src="/resources/assets/js/util.js"></script>
	<script src="/resources/assets/js/main.js"></script>


</body>
</html>

<%-- <div id="nav"><%@ include file="/WEB-INF/views/company/companynavbar/companynav.jsp" %></div>
<form method="post">

 <p>
  <label for="sitename">사이트이름</label>
  <input type="text" id="sitename" name="sitename"/>
 </p>
   

 <p>
  <label >중개상품</label>
	<select name="topcategory" id="topcategory" onchange="changeItem(this)">
		<option value="">---</option>
    	<option value="product">물건</option>
    	<option value="location">장소</option>
    	<option value="people">사람</option>
	</select>
 </p>
소분류<div id ="category"></div>
 <p>
   <button type="submit" name="status" value="store">저장</button>  <button type="submit" name="status" value="deploy">생성</button>  
 </p>
 
</form> --%>