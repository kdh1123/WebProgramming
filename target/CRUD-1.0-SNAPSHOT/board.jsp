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
<%@ page import="java.util.List" %>
<%
    BoardManager bm = new BoardManager();
    List<Board> list = bm.doSelect();
%>
<html>
<head>
    <title>JSP - Hello World</title>
    <%@ include file="head.jsp"%>
    <script>
        $(document).ready(()=>{
            $('#mybtn').on('click',()=>
            {$('#mys').slideToggle()});
        });
    </script>
</head>
<body>
<%@ include file="nav.jsp"%>
<div class="container" id="board_title"  >
    <h1 class="main-title" >
        게시판입니다. 글을 작성하고, 소통해보세요.
    </h1>
    <div class="board-table">
        <div class="col">
            <table class="table">
                <thead>
                <tr>
                    <th scope="col">번호</th>
                    <th scope="col">제목</th>
                    <th scope="col">작성자</th>
                    <th scope="col">작성일</th>
                    <th scope="col">조회수</th>
                </tr>
                </thead>
                <tbody>
                <% for(int i=0; i< list.size(); i++){
                        Board board = list.get(i);%>
                <tr>
                    <th scope="row"><%=board.getIdx()%></th>
                    <td><a href="view.jsp?idx=<%=board.getIdx()%>"><%=board.getTitle()%></a></td>
                    <td><%=board.getName()%></td>
                    <td><%=board.getWdate()%></td>
                    <td><%=board.getCount()%></td>

                </tr>
                <%}%>
                </tbody>
            </table>
            <h6>2106 김도현 제작 </h6>
        </div>
    </div>
    <div class="row">
           <div class="col">
               <a class="btn btn-primary" href="insert.jsp">글 작성</a>
           </div>
    </div>
</div>
</body>
</html>
