<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- This is Header. icluding css, js, something like that  -->
        <%@ include file="/WEB-INF/views/allba/_mixins/header.jsp" %>
    </head>
    <body id="page-top">
        <!-- Page Wrapper -->
        <div id="wrapper">
            <!--  This is Sidebar. -->
            <%@ include file="/WEB-INF/views/allba/_mixins/sidebar.jsp" %>

            <!--  This is Contents. & Wrapper -->
            <div id="content-wrapper" class="d-flex flex-column">
                <!-- Main Content -->
                <div id="content">
                    <!-- This is Topbar-->
                    <%@ include file="/WEB-INF/views/allba/_mixins/topbar.jsp" %>
                    <div class="container-fluid"></div>
                    <!---->
                    <!---->
                    <!-- Put the contents Here-->
               		<%@ include file="/WEB-INF/views/allba/main/contents.jsp" %>
               		<!---->
               		<!---->
                </div>
                <!-- End of Main Content -->
                <!-- Footer -->
                <%@ include file="/WEB-INF/views/allba/_mixins/footer.jsp" %>
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->
    </body>
</html>

<!--준태형 작
<html>
<head>
<title>${sitename}</title>
<script src="/resources/js/jquery-3.5.1.min.js"></script>
<link rel="stylesheet" href="/resources/bs/bootstrap.min.css">
<link rel="stylesheet" href="/resources/bs/bootstrap-theme.min.css">
<script src="/resources/bs/bootstrap.min.js"></script>

<style>
 #menu{height:50px; background: #fcc; }
 .one{width: 600px; height: 100%; margin:0 auto;}
 .one > li{float: left; width: 20%; line-height: 50px; text-align:center; position:relative;}
 .one > li:hover .two{left: 0;}
 .one > li a{display:block;}
 .one > li a:hover {bakground: #B21016; color: #fff; font-weight: bold;}
 .two{position:absolute; top:50px; left: -9999px; background: #ccc; width:120%;}
 .two > li{position: relative;}
 .two > li:hover .three{left: 100%;}

 .three{position:absolute; top: 0; background: #6BD089; left:-9999px; width:200%;}
 .three > li a:hover{backgorund: #085820; color: #fff;}
</style>
</head>
<body>
<h1>${sitename}</h1>
	<h1>메인화면</h1>
	<%@ include file="/WEB-INF/views/allba/allbanavbar/allbanav.jsp" %>

</body>
</html>
-->
