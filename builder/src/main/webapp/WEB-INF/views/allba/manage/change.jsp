<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- This is Header. icluding css, js, something like that  -->
        <%@ include file="/WEB-INF/views/allba/_mixins/header.jsp" %>
        <!-- ####이부분 꼭 넣어줘야댐 #####-->
        <link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
        <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    </head>
    <script>
        $(function () {
            $("#sortable").sortable({
                axis: "y",
                /*    update: function (event, ui) {
				var arr = $(this).sortable('toArray');
				 
				// POST to server using $.post or $.ajax
				$.ajax({
					data:  {
						'main' : arr
					},
					type: 'POST',
					url: '/allba/${sitename}/manage/changefield'
				});
			} */
            });
            $("#sortable").disableSelection();
        });

        function test1() {
            var arr = $("#sortable").sortable("toArray");
            console.log(arr);
            $.ajax({
                data: {
                    main: arr,
                },
                type: "POST",
                url: "/allba/${sitename}/manage/changefield",
                success: function (data) {
                    alert("변경완료.");
                },
            });
            /* $.ajax({
		cache : false,
		url : '/allba/${sitename}/manage/changefield'
		type : 'POST', 
		data : {
			'main' : arr
		},
		success : function(data) {
			var jsonObj = JSON.parse(data);
		}, // success 

		error : function(xhr, status) {
			alert(xhr + " : " + status);
		}
	});  */
        }
    </script>
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
                        <h1 class="h3 mb-0 text-gray-800 font-weight-bold">보여지는 순서 변경하기<font class="font-italic font-weight-light text-primary text-sm text-blue-">BETA</font></h1>
                    </div>
                </div>
                <!-- End of Main Content -->

                <%@ include file="/WEB-INF/views/allba/manage/change-contents.jsp" %>

                <!-- Footer -->
                <%@ include file="/WEB-INF/views/allba/_mixins/footer.jsp" %>
            </div>
            <!-- End of Content Wrapper -->
        </div>
        <!-- End of Page Wrapper -->
    </body>
</html>
