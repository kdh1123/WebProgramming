<%@ page import="com.example.board.MemberDB" %>
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
        session.setAttribute("username",username);
        response.sendRedirect("boardMain.jsp?username="+username);
    }
    else {
        out.println("<script>");
        out.println("alert('아이디 비밀번호 확인하세요.');");
        out.println("location.href ='login.jsp';");
        out.println("</script>");
    }
%>
