<%@ page import="com.example.crud.MemberDB" %>
<%@ page import="java.lang.reflect.Modifier" %><%--
  Created by IntelliJ IDEA.
  User: DGSW
  Date: 2022-05-11
  Time: 오후 2:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String username = request.getParameter("username");
    String password = request.getParameter("password");

    MemberDB memberDB = new MemberDB();
    boolean loginck = memberDB.doLoginCheck(username,password);

    if(loginck){
        System.out.println("성공");
    }
    else {
        System.out.println("실패");
    }
%>
