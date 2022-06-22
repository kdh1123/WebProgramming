<%--
  Created by IntelliJ IDEA.
  User: DGSW
  Date: 2022-04-27
  Time: 오후 2:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.example.board.MemberDB" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    String gender = request.getParameter("gender");

    MemberDB md = new MemberDB();
    md.doInsert(username, password, gender);

    response.sendRedirect("select.jsp");
%>