<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="com.example.board.Board"%>
<%@ page import="com.example.board.BoardManager"%>
<%
    String idx =request.getParameter("idx");
    String title = request.getParameter("title");
    String name = request.getParameter("name");
    String content = request.getParameter("content");
    Board board = new Board();
    board.setTitle(title);
    board.setContent(content);
    board.setName(name);
    BoardManager bm = new BoardManager();
    boolean success = bm.doUpdate(idx, board);
    if(success){
        out.println("<script>");
        out.println("alert('글을 수정하였습니다.');");
        out.println("window.location.href='view.jsp?idx="+idx+"';");
        out.println("</script>");
    }
%>