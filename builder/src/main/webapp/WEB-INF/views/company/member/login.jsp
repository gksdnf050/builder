<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

<title>로그인</title>
</head>
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
        margin-top: 70%;
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

</style>

<body>
<h1 style = "text-align : center"><a href="/"> <img src="../../resources/logo/logo.jpg/"/></a></h1>
<div class="sidenav">
         <div class="login-main-text">
            <h2>3LEE1CHAE<br> 로그인</h2>
            <p>J O I N</p>
         </div>
      </div>
      <div class="main">      
         <div class="col-md-6 col-sm-12">
            <div class="login-form">
               <form method="post">
                  <div class="form-group">
                     <label for="userid">아이디</label>
                     <input type="text" class="form-control" placeholder="아이디" id = "userid" name = "userid">
                  </div>
                  <div class="form-group">
                     <label>비밀번호</label>
                     <input type="password" class="form-control" placeholder="비밀번호" id = "userpass" name = "userpass">
                  </div>
                  <button type="submit" class="btn btn-black" id = "submit">로그인</button>
                  <button type="button" class="btn btn-secondary" onclick = "location.href = '/register' ">회원가입</button>
               </form>
               <c:if test="${msg == false}">
		<p style="color: #f00;">Please check your ID or Password</p>
 	</c:if> 
            </div>
         </div>
      </div>
</body>
</html>