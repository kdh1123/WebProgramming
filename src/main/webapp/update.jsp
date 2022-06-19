<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
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
    <title>수정 페이지</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%@include file="nav.jsp"%>
<div class="container mt-3">
    <form action="updateproc.jsp">
        <h1 class="main-title">
            글을 수정하세요
        </h1>
        <div class="row" style="margin-bottom: 40px">
            <div class="col">
                제목
                <input class="form-control" type="text" name="title">
                내용
                <textarea class="form-control" rows="15" name="content"></textarea>
                작성자
                <div class="form-control" name="name" value="<%=board.getName()%>">
                <input type="hidden" name="idx" value="<%=idx%>" />
            </div>
        </div>
        <div class="row">
            <div class="col">
                <input class="btn btn-primary" type="submit" value="저장">
            </div>
        </div>
    </form>
</div>
</body>
</html>
