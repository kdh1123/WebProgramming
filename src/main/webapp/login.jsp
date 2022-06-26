<%--
  Created by IntelliJ IDEA.
  User: DGSW
  Date: 2022-05-11
  Time: 오후 2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="head.jsp"%>
<%@ page import="com.example.board.Board" %>
<%@ page import="com.example.board.BoardManager" %>
<html>
<head>
    <title>로그인</title>
</head>
<body>
<div style="text-align: center">
        <h1 class="main-title" style="text-align: center">로그인</h1>
        <form action="loginProc.jsp" style="text-align: center; margin-top: 100px">

            id <input  style="margin-bottom: 10px" name = "username" type="text"><br>
            pw <input name = "password" type="text" style="margin-bottom: 10px"><br>
            <input type="submit" value="로그인">

        </form>
        <h4><a href="signup.jsp">회원가입</a></h4>
        <h4><a href="userList.jsp">회원목록</a></h4>
    <h4><a href="signUpdate.jsp">정보수정</a></h4>
</div>
</body>
</html>
