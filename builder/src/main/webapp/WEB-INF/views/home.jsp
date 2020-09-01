<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
 	
 	<link rel="stylesheet" href="/resources/assetss/css/mains.css" />
	<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
	<noscript>
		<link rel="stylesheet" href="/resources/assetss/css/noscript.css" /></noscript>
	<title>Home</title>

</head>
<style>
.topnav {
    overflow: hidden;
    background-color: #333;
}
.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}
</style>

<body class="is-preload">
	<div id="nav" style = " padding : 30px;"><%@ include file="./company/companynavbar/companynav.jsp" %></div>

	<!-- Wrapper -->
	<div id="wrapper" class="divided" style = "padding : 10px">

		<!-- <!-- One -->
		<section
			class="banner style5 orient-left content-align-left image-position-right halfscreen onload-image-fade-in onload-content-fade-right"
			>
			<div class="content">
				<h1> 단 1분</h1>
				<p class="major">중개홈페이지 생성</p>
				
				<ul class="actions stacked" style = "text-align : center">
					<li><a href="/dashboard" class="button big wide smooth-scroll-middle">Get Started</a></li>
				</ul>
			</div>
			<div class="image" style = "width : 100%; height : 100%;">
				<img src="/resources/imagess/main.png" alt="" />
			</div>
		</section>
		
		<br>
		<!-- Two -->
		<section class="spotlight  style1 orient-right content-align-left image-position-left onload-content-fade-in onload-image-fade-in"
			id="first">
			<div class="content">
				<h2>1단계</h2>
				<p>홈페이지 이름을 입력하세요!!!</p>
				
				
			</div>
			<div class="image">
				<img src="/resources/imagess/1.png" alt="" />
			</div>
		</section>

		<!-- Three -->
		<section class="spotlight  style1 orient-left content-align-left image-position-left onload-content-fade-in onload-image-fade-in">
			<div class="content">
				<h2>2단계</h2>
				<p>이메일 주소를 입력하세요!!!</p>
				
			</div>
			<div class="image">
				<img src="/resources/imagess/2.png" alt="" />
			</div>
		</section>

		<!-- Four -->
		<section class="spotlight  style1 orient-right content-align-left image-position-left onload-content-fade-in onload-image-fade-in">
			<div class="content" >
				<h2>3단계</h2>
				<p>원하는 카테고리를 선택하세요!!!</p>
				
			</div>
			<div class="image">
				<img  src="/resources/imagess/3.png" alt="" />
			</div>
		</section>

		<section class="wrapper style1 align-center">
			<div class="inner">
				<h2>홈페이지들을 확인 해보세요!</h2>
				<p>무엇이든, 누구를 위해서든 만들어보세요!</p>
			</div>

			<!-- Gallery -->
			<div class="gallery style2 medium lightbox onscroll-image-fade-in">
				<article>
					<a href="/resources/imagess/gallery/fulls/01.jpg" class="image">
						<img src="/resources/imagess/x.png" alt="" />
					</a>
					<div class="caption">
						<h3>Ipsum Dolor</h3>
						<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
						<ul class="actions fixed">
							<li><span class="button small">Details</span></li>
						</ul>
					</div>
				</article>
				<article>
					<a href="/resources/imagess/gallery/fulls/02.jpg" class="image">
						<img src="/resources/imagess/x.png" alt="" />
					</a>
					<div class="caption">
						<h3>Feugiat Lorem</h3>
						<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
						<ul class="actions fixed">
							<li><span class="button small">Details</span></li>
						</ul>
					</div>
				</article>
				<article>
					<a href="/resources/imagess/gallery/fulls/03.jpg" class="image">
						<img src="/resources/imagess/x.png" alt="" />
					</a>
					<div class="caption">
						<h3>Magna Amet</h3>
						<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
						<ul class="actions fixed">
							<li><span class="button small">Details</span></li>
						</ul>
					</div>
				</article>
				<article>
					<a href="/resources/imagess/gallery/fulls/04.jpg" class="image">
						<img src="/resources/imagess/x.pngx" alt="" />
					</a>
					<div class="caption">
						<h3>Sed Tempus</h3>
						<p>Lorem ipsum dolor amet, consectetur magna etiam elit. Etiam sed ultrices.</p>
						<ul class="actions fixed">
							<li><span class="button small">Details</span></li>
						</ul>
					</div>
				</article>
			</div>

		</section>

		<!-- Six -->
		<section class="wrapper style1 align-center">
			<div class="inner">
				<h2>Ipsum sed consequat</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi id ante sed ex pharetra lacinia sit
					amet vel massa. Donec facilisis laoreet nulla eu bibendum. Donec ut ex risus. Fusce lorem lectus,
					pharetra pretium massa et, hendrerit vestibulum odio lorem ipsum.</p>
				<div class="items style1 medium onscroll-fade-in">
					<section>
						<span class="icon style2 major fa-gem"></span>
						<h3>Lorem</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui turpis, cursus eget orci
							amet aliquam congue semper. Etiam eget ultrices risus nec tempor elit.</p>
					</section>
					<section>
						<span class="icon solid style2 major fa-save"></span>
						<h3>Ipsum</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui turpis, cursus eget orci
							amet aliquam congue semper. Etiam eget ultrices risus nec tempor elit.</p>
					</section>
					<section>
						<span class="icon solid style2 major fa-chart-bar"></span>
						<h3>Dolor</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui turpis, cursus eget orci
							amet aliquam congue semper. Etiam eget ultrices risus nec tempor elit.</p>
					</section>
					<section>
						<span class="icon solid style2 major fa-wifi"></span>
						<h3>Amet</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui turpis, cursus eget orci
							amet aliquam congue semper. Etiam eget ultrices risus nec tempor elit.</p>
					</section>
					<section>
						<span class="icon solid style2 major fa-cog"></span>
						<h3>Magna</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui turpis, cursus eget orci
							amet aliquam congue semper. Etiam eget ultrices risus nec tempor elit.</p>
					</section>
					<section>
						<span class="icon style2 major fa-paper-plane"></span>
						<h3>Tempus</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui turpis, cursus eget orci
							amet aliquam congue semper. Etiam eget ultrices risus nec tempor elit.</p>
					</section>
					<section>
						<span class="icon solid style2 major fa-desktop"></span>
						<h3>Aliquam</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui turpis, cursus eget orci
							amet aliquam congue semper. Etiam eget ultrices risus nec tempor elit.</p>
					</section>
					<section>
						<span class="icon solid style2 major fa-sync-alt"></span>
						<h3>Elit</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui turpis, cursus eget orci
							amet aliquam congue semper. Etiam eget ultrices risus nec tempor elit.</p>
					</section>
					<section>
						<span class="icon solid style2 major fa-hashtag"></span>
						<h3>Morbi</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui turpis, cursus eget orci
							amet aliquam congue semper. Etiam eget ultrices risus nec tempor elit.</p>
					</section>
					<section>
						<span class="icon solid style2 major fa-bolt"></span>
						<h3>Turpis</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui turpis, cursus eget orci
							amet aliquam congue semper. Etiam eget ultrices risus nec tempor elit.</p>
					</section>
					<section>
						<span class="icon solid style2 major fa-envelope"></span>
						<h3>Ultrices</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui turpis, cursus eget orci
							amet aliquam congue semper. Etiam eget ultrices risus nec tempor elit.</p>
					</section>
					<section>
						<span class="icon solid style2 major fa-leaf"></span>
						<h3>Risus</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dui turpis, cursus eget orci
							amet aliquam congue semper. Etiam eget ultrices risus nec tempor elit.</p>
					</section>
				</div>
			</div>
		</section>

		<!-- Seven -->
		<section class="wrapper style1 align-center">
			<div class="inner medium">
				<h2>Get in touch</h2>
				<form method="post" action="#">
					<div class="fields">
						<div class="field half">
							<label for="name">Name</label>
							<input type="text" name="name" id="name" value="" />
						</div>
						<div class="field half">
							<label for="email">Email</label>
							<input type="email" name="email" id="email" value="" />
						</div>
						<div class="field">
							<label for="message">Message</label>
							<textarea name="message" id="message" rows="6"></textarea>
						</div>
					</div>
					<ul class="actions special">
						<li><input type="submit" name="submit" id="submit" value="Send Message" /></li>
					</ul>
				</form>

			</div>
		</section>

		<!-- Footer -->
		<footer class="wrapper style1 align-center">
			<div class="inner">
				<ul class="icons">
					<li><a href="#" class="icon brands style2 fa-twitter"><span class="label">Twitter</span></a></li>
					<li><a href="#" class="icon brands style2 fa-facebook-f"><span class="label">Facebook</span></a>
					</li>
					<li><a href="#" class="icon brands style2 fa-instagram"><span class="label">Instagram</span></a>
					</li>
					<li><a href="#" class="icon brands style2 fa-linkedin-in"><span class="label">LinkedIn</span></a>
					</li>
					<li><a href="#" class="icon style2 fa-envelope"><span class="label">Email</span></a></li>
				</ul>
				<p>Untitled. Design: <a href="https://html5up.net">HTML5 UP</a>.</p>
			</div>
		</footer>

	</div>  
	<!--   Scripts -->
	<script  type="text/javascript" src="/resources/assetss/js/jquery.min.js"></script>
	<script  type="text/javascript" src="/resources/assetss/js/jquery.scrollex.min.js"></script>
	<script  type="text/javascript" src="/resources/assetss/js/jquery.scrolly.min.js"></script>
	<script  type="text/javascript" src="/resources/assetss/js/browser.min.js"></script>
	<script  type="text/javascript" src="/resources/assetss/js/breakpoints.min.js"></script>
	<script  type="text/javascript" src="/resources/assetss/js/util.js"></script>
	<script  type="text/javascript" src="/resources/assetss/js/main.js"></script>

</body>
</html>