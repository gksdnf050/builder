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
                        <h1 class="h3 mb-0 text-gray-800 font-weight-bold">광고배너 등록하기<font class="font-italic font-weight-light text-primary text-sm text-blue-"></font></h1>
                    </div>
                </div>
                <!-- End of Main Content -->

                <%@ include file="/WEB-INF/views/allba/manage/registerbanner-contents.jsp" %>

                <!-- Footer -->
                <%@ include file="/WEB-INF/views/allba/_mixins/footer.jsp" %>
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->
    </body>
</html>
