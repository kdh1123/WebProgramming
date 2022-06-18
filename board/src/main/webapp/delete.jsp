<%--
  Created by IntelliJ IDEA.
  User: DGSW
  Date: 2022-06-15
  Time: 오후 1:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.board.Board"%>
<%@ page import="com.example.board.BoardManager"%>
<%
    String idx = request.getParameter("idx");
    BoardManager bm = new BoardManager();
    boolean success = bm.doDelete(Integer.parseInt(idx));
    if(success){
        out.println("<script>");
        out.println("alert('글삭제하였습니다.');");
        out.println("window.location.href='board.jsp';");
        out.println("</script>");
    }
%>