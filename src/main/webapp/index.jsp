<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@ include file="head.jsp"%>
    <script>
        $(document).ready(()=>{
            $('#mybtn').on('click',()=>
            {$('#mys').slideToggle()});
        });
    </script>

</head>
<body>
<%@ include file="nav.jsp"%>
<div class="container">
    <h1 class="bg-primary text-white"  id="myh1">
        게시판
    </h1>
    <button id="mybtn">mybtn</button>
    <div id="mys">
        <h1>슬라이드...</h1>
    </div>
</div>
</body>
</html>