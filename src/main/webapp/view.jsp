<%--
  Created by IntelliJ IDEA.
  User: DGSW
  Date: 2022-05-18
  Time: 오후 3:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.board.Board" %>
<%@ page import="com.example.board.BoardManager" %>
<%
    String idx = request.getParameter("idx");
    BoardManager bm = new BoardManager();
    Board board = bm.doSelectRow(Integer.parseInt(idx));
%>
<!DOCTYPE html>
<html>
<head>
    <title>게시물</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="nav.jsp"%>
<div class="container mt-3">
    <h1 class="main-title">
        게시물
    </h1>
    <div class="row" style="margin-bottom: 40px">
        <div class="col">
            제목
            <div class="form-control"><%=board.getTitle()%></div>
            내용
            <div class="form-control" style="height: 20rem;"><%=board.getContent()%></div>
            작성자
            <div class="form-control"><%=board.getName()%></div>
        </div>
    </div>
    <div class="row mt-3 mb-3">
        <div class="col">
            <a class="btn btn-primary" href="update.jsp?idx=<%=board.getIdx()%>">글수정</a>
            <a class="btn btn-primary" href="delete.jsp?idx=<%=board.getIdx()%>">글삭제</a>
        </div>
    </div>
</div>
</body>
</html>