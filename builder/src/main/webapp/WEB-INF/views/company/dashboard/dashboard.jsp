<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dashboard</title>
</head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>
body {
    font-family: "Lato", sans-serif;
}

.main-head{
    height: 150px;
    background: #333;
   
}

.sidenav {
    height: 100%;
    background-color: #333;
    overflow-x: hidden;
    padding-top: 20px;
    
}


.main {
    padding: 0px 10px;
}

@media screen and (max-height: 450px) {
    .sidenav {padding-top: 15px;}
}

@media screen and (max-width: 450px) {
    .login-form{
        margin-top: 10%;
    }

    .register-form{
        margin-top: 10%;
    }
}

@media screen and (min-width: 768px){
    .main{
        margin-left: 30%; 
    }

    .sidenav{
        width: 30%;
        position: fixed;
        z-index: 1;
        top: 0;
        left: 0;
    }

    .login-form{
        margin-top: 80%;
    }

    .register-form{
        margin-top: 20%;
    }
}


.login-main-text{
    margin-top: 20%;
    padding: 60px;
    color: #fff;
}

.login-main-text h2{
    font-weight: 300;
}

.btn-black{
    background-color: #333 !important;
    color: #fff;
    }

.topnav {
    overflow: hidden;
    background-color: #333;
}

.btn btn-dark{
	width : 80%
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
<body>
	<div class="sidenav">
         <div class="login-main-text">
            <h2>3LEE1CHAE<br> 사이트 목록 </h2>
            <p>당신의 사이트를 확인하세요!</p>
         </div>
         <div style= 'text-align : center'>
     	 <button class="btn btn-outline-primary" style ="width : 80%" onclick = "location.href = '/dashboard/createsite' ">사이트생성</button>
         	
         </div>
      </div>
      <div class="main">
      <div id="nav"><%@ include file="/WEB-INF/views/company/companynavbar/companynav.jsp" %></div>
      
	<c:forEach items="${dtos}" var="dtos">
		<c:choose>
			<c:when test="${dtos.getStatus() eq 'store' }">
				<div class="card">
                	<h2 style = "text-align : center">${dtos.getSitename()}</h2>
                	<h5 style = "text-align : center">생성중</h5>
                	<div style= "text-align : center">
                		<button class='btn btn-warning' style = "width : 48%" style = "float : left" onclick = "location.href ='/dashboard/modifysite?siteid=${dtos.getSiteid()}'">수정</button>
                		<button class='btn btn-danger' style = "width : 48%" style = "float : right" onclick = "location.href ='/dashboard/deletesite?siteid=${dtos.getSiteid()}&status=${dtos.getStatus()}&sitename=${dtos.getSitename()}'">삭제</button>
                	</div>
            	</div>
			</c:when>
			<c:when
				test="${dtos.getStatus() eq 'deploy' && dtos.getCategory() eq 'product'}">
					<div class="card">
                	<h2 style = "text-align : center">${dtos.getSitename()}</h2>
                	<h5 style = "text-align : center">물건</h5>
                	<div style= "text-align : center">
                		<button class='btn btn-success' style = "width : 48%" style = "float : left" onclick = "location.href ='/product/${dtos.getSitename()}'">접속</button>
                		<button class='btn btn-danger' style = "width : 48%" style = "float : right" onclick = "location.href ='/dashboard/deletesite?siteid=${dtos.getSiteid()}&status=${dtos.getStatus()}&sitename=${dtos.getSitename()}'">삭제</button>
                	</div>
            	</div>
			</c:when>
			<c:when
				test="${dtos.getStatus() eq 'deploy' && dtos.getCategory() eq 'location'}">

				
				<div class="card">
                	<h2 style = "text-align : center">${dtos.getSitename()}</h2>
                	<h5 style = "text-align : center">장소</h5>
                	<div style= "text-align : center">
                		<button class='btn btn-success' style = "width : 48%" style = "float : left" onclick = "location.href ='/location/${dtos.getSitename()}'">접속</button>
                		<button class='btn btn-danger' style = "width : 48%" style = "float : right" onclick = "location.href ='/dashboard/deletesite?siteid=${dtos.getSiteid()}&status=${dtos.getStatus()}&sitename=${dtos.getSitename()}'">삭제</button>
                	</div>
            	</div>
			</c:when>
			<c:when
				test="${dtos.getStatus() eq 'deploy' && dtos.getCategory() eq 'people'}">

				
				<div class="card">
                	<h2 style = "text-align : center">${dtos.getSitename()}</h2>
                	<h5 style = "text-align : center">사람</h5>
                	<div style= "text-align : center">
                		<button class='btn btn-success' style = "width : 48%" style = "float : left" onclick = "location.href ='/people/${dtos.getSitename()}'">접속</button>
                		<button class='btn btn-danger' style = "width : 48%" style = "float : right" onclick = "location.href ='/dashboard/deletesite?siteid=${dtos.getSiteid()}&status=${dtos.getStatus()}&sitename=${dtos.getSitename()}'">삭제</button>
                	</div>
            	</div>
			</c:when>
		</c:choose>
	</c:forEach>
      </div>
      
      
      
</body>
</html>


      
      	<%-- <c:forEach items="${dtos}" var="dtos">
		<c:choose>
			<c:when test="${dtos.getStatus() eq 'store' }">
				<p>
					<a href="/modifysite?siteid=${dtos.getSiteid()}">${dtos.getSitename()}</a> <a href="/deletesite?siteid=${dtos.getSiteid()}&status=${dtos.getStatus()}&sitename=${dtos.getSitename()}">삭제</a>
				</p>
			</c:when>
			<c:when
				test="${dtos.getStatus() eq 'deploy' && dtos.getCategory() eq 'product'}">
				<p>
					<a href="/product/${dtos.getSitename()}">${dtos.getSitename()}</a> <a href="/deletesite?siteid=${dtos.getSiteid()}&status=${dtos.getStatus()}&sitename=${dtos.getSitename()}">삭제</a>
				</p>
			</c:when>
			<c:when
				test="${dtos.getStatus() eq 'deploy' && dtos.getCategory() eq 'location'}">
				<p>
					<a href="/location/${dtos.getSitename()}">${dtos.getSitename()}</a> <a href="/deletesite?siteid=${dtos.getSiteid()}&status=${dtos.getStatus()}&sitename=${dtos.getSitename()}">삭제</a>
				</p>
			</c:when>
			<c:when
				test="${dtos.getStatus() eq 'deploy' && dtos.getCategory() eq 'people'}">
				<p>
					<a href="/people/${dtos.getSitename()}">${dtos.getSitename()}</a> <a href="/deletesite?siteid=${dtos.getSiteid()}&status=${dtos.getStatus()}&sitename=${dtos.getSitename()}">삭제</a>
				</p>
			</c:when>
		</c:choose>
	</c:forEach>

	<a href="/createsite">사이트 생성</a> <br/> --%>