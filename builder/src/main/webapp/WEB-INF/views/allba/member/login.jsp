<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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

                    <div class="container-fluid">
                        <h1 class="h3 mb-0 text-gray-800 font-weight-bold">로그인 / 회원가입 <font class="font-italic font-weight-light text-primary text-sm text-blue-">BETA</font></h1>
                    </div>
                </div>
                <!-- End of Main Content -->

                <%@ include file="/WEB-INF/views/allba/member/login-contents.jsp" %>

                <!-- Footer -->
                <%@ include file="/WEB-INF/views/allba/_mixins/footer.jsp" %>
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->

        로그인
        <form method="post">
            <p><label for="userId">아이디</label> <input type="text" id="userid" name="userid" /></p>
            <p><label for="userPass">패스워드</label> <input type="password" id="userpass" name="userpass" /></p>

            <p>
                <button type="submit" id="submit">로그인</button>
            </p>
        </form>
        <c:if test="${msg == false}">
            <p style="color: #f00;">로그인 실패 아이디 or 비밀번호 확인해주세요.</p>
        </c:if>
        <p>
            <a href="/allba/${sitename}/register">회원가입</a>
        </p>
    </body>
</html>
