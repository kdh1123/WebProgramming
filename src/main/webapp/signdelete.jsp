<%--
  Created by IntelliJ IDEA.
  User: DGSW
  Date: 2022-04-20
  Time: 오후 2:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.crud.MemberDB" %>


<%
    String ids[] = request.getParameterValues("id");


    MemberDB md  = new MemberDB();
    md.doDelete(ids);

    response.sendRedirect("select.jsp");

%>