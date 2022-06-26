<%--
  Created by IntelliJ IDEA.
  User: DGSW
  Date: 2022-04-27
  Time: 오후 1:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.board.MemberDB" %>

<html >
<head>
    <title>회원 가입</title>
</head>
<body>
<%@ include file="head.jsp"%>
<h1 class="main-title" style="text-align: center">회원 가입</h1>

<div>
<form action="signUpProc.jsp"  style="text-align: center">
    username <input type="text" name="username" style="margin-bottom: 10px"/><br>
    password <input type="text" name="password"style="margin-bottom: 10px"/><br>
    남 <input type="checkbox" name="gender" value="남" style="margin-bottom: 10px"/>
    여 <input type="checkbox" name="gender" value="여" style="margin-bottom: 10px"/><br>
    <input type="submit" value="저장" />
</form>
</div>
</body>
</html>

