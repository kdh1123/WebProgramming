<%--
  Created by IntelliJ IDEA.
  User: DGSW
  Date: 2022-04-13
  Time: 오후 1:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.example.crud.MemberDB" %>
<%@ page import="java.util.List"%>
<%@ page import="com.example.crud.Member" %>
<%
    MemberDB md = new MemberDB();
    List<Member> list = md.doselect();
//    out.println(list);
%>
<!DOCTYPE html>
<html>
<head>
    <title>유저 목록 & 삭제</title>
</head>
<body>
<%@ include file="head.jsp" %>
<h1>유저 목록 관리</h1>
<form action="signdelete.jsp">
    <table style="width:100%; border: 1px solid black;">
        <tr>
            <th>id</th><th>순번</th><th>이름</th><th>비번</th><th>성별</th>
        </tr>
        <%
            for(int i =0; i< list.size(); i++){
                Member member = list.get(i);
        %>
        <tr>
            <td> <input type="checkbox" name="id" value="<%=member.getId()%>" /></td>
            <td> <%=member.getId()%> </td>
            <td> <%=member.getUsername()%> </td>
            <td> <%=member.getPassword()%> </td>
            <td> <%=member.getGender()%> </td>
        </tr>
        <%
            }
        %>
    </table>
    <input type="submit" value="삭제" />
</form>
</body>
</html>
