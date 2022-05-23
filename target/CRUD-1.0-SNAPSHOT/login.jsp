<%--
  Created by IntelliJ IDEA.
  User: DGSW
  Date: 2022-05-11
  Time: 오후 2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="head.jsp"%>
<html>
<head>
    <title>로그인</title>
</head>
<body>
<h1>로그인</h1>
<div style="">
<form action="loginproc.jsp">
    id <input name = "username" type="text"><br>
    pw <input name = "password" type="text"><br>
    <input type="submit" value="로그인">

</form>
</div>
</body>
</html>
