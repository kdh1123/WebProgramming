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
    <title>회원 정보 수정</title>
</head>
<body style="text-align: center">
<%@include file="head.jsp"%>
<h1 class="main-title">회원 정보 수정</h1>

<form action="signUpdateProc.jsp">
       id    <input type="text" name = "id" te><br>
    username <input type="text" name="username"/><br>
    password <input type="text" name="password"/><br>
       남    <input type="checkbox" name="gender" value="남"/>
       여    <input type="checkbox" name="gender" value="여"/><br>
    <input type="submit" value="저장" />
</form>
</body>
</html>

