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
<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
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
			<section id="sidebar">
				<div class="inner">
					<nav>
						<ul>
							<li><a href="#intro">사이트 이름 설정</a></li>
							<li><a href="#one">중개 상품 설정</a></li>
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
							<p><input type="text"/></p>
							<ul class="actions">
								<li><a href="#one" class="button scrolly">다음으로 </a></li>
							</ul>
						</div>
					</section>
					</div>
					
					<section id="one" class="wrapper style2 spotlights">
						<section>
							<a href="#" class="image"><img src="images/pic01.jpg" alt="" data-position="center center" /></a>
							<div class="content">
								<div class="inner">
									<h2>Sed ipsum dolor</h2>
									<p>Phasellus convallis elit id ullamcorper pulvinar. Duis aliquam turpis mauris, eu ultricies erat malesuada quis. Aliquam dapibus.</p>
									<ul class="actions">
										<li><a href="generic.html" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section>
						<section>
							<a href="#" class="image"><img src="images/pic02.jpg" alt="" data-position="top center" /></a>
							<div class="content">
								<div class="inner">
									<h2>Feugiat consequat</h2>
									<p>Phasellus convallis elit id ullamcorper pulvinar. Duis aliquam turpis mauris, eu ultricies erat malesuada quis. Aliquam dapibus.</p>
									<ul class="actions">
										<li><a href="generic.html" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section>
						<section>
							<a href="#" class="image"><img src="images/pic03.jpg" alt="" data-position="25% 25%" /></a>
							<div class="content">
								<div class="inner">
									<h2>Ultricies aliquam</h2>
									<p>Phasellus convallis elit id ullamcorper pulvinar. Duis aliquam turpis mauris, eu ultricies erat malesuada quis. Aliquam dapibus.</p>
									<ul class="actions">
										<li><a href="generic.html" class="button">Learn more</a></li>
									</ul>
								</div>
							</div>
						</section>
					</section>
					
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