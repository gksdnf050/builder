<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- ####이부분 꼭 넣어줘야댐 #####-->
<link href="https://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js" ></script>

</head>
<body>


 <script>
    $(function() {

        $('#sortable').sortable({

        	 axis: 'y',
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
        $( "#sortable" ).disableSelection();
     });

    
    function test1(){
    	var arr = $('#sortable').sortable('toArray');
		console.log(arr);
		 $.ajax({
	            data:  {
	                'main' : arr
	            },
	            type: 'POST',
	            url: '/allba/${sitename}/manage/changefield'
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
  
<ul id="sortable">
<c:forEach items="${fieldlist}" var="fieldlist">
<c:choose>
 <c:when test="${fieldlist.fieldtype eq 'hidden'}">
		
	</c:when>
	<c:when test="${fieldlist.fieldtype eq 'title'}">
		${fieldlist.fieldname}
	</c:when>
<c:when test="${fieldlist.fieldtype ne 'content'}">
<li id = "${fieldlist}">
${fieldlist.fieldname}
	
</li>
</c:when>
<c:otherwise>
${fieldlist.fieldname}
</c:otherwise>
</c:choose>
</c:forEach>
</ul>
 <form id="form1" name="form1" method="post">
<input type="button" value="확인" onclick="test1();">
</form>

</body>
</html>