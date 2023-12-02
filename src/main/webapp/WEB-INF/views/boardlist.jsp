<%@ page import="com.example.board.BoardDAO" %>
<%@ page import="com.example.board.BoardVO" %>
<%@ page import="java.util.List" %>
<%@ page import="com.example.board.BoardService" %>
<%@ page import="org.springframework.beans.factory.annotation.Autowired" %><%--
  Created by IntelliJ IDEA.
  User: dlwns
  Date: 2023-12-01
  Time: 오후 5:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="path" value="${pageContext.request.contextPath}" />
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="${path}/resources/css/style.css">
    <style>
        #boardlist {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #boardlist td, #boardlist th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #boardlist tr:nth-child(even){background-color: #f2f2f2;}
        #boardlist tr:hover {background-color: #ddd;}
        #boardlist th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
    <script>
        function delete_ok(id){
            var a = confirm("정말로 삭제하겠습니까?");
            if(a) location.href='deleteok/' + id;
        }
    </script>
</head>
<body>
<h1>자유게시판</h1>

<table id="boardlist" width="90%">
    <tr>
        <th>Id</th>
        <th>Category</th>
        <th>Title</th>
        <th>Writer</th>
        <th>Content</th>
        <th>Regdate</th>
        <th>Edit</th>
        <th>Delete</th>
    </tr>
    <c:forEach items="${boardlist}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td>${u.category}</td>
            <td>${u.title}</td>
            <td>${u.writer}</td>
            <td>${u.content}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">edit</a></td>
            <td><a href="javascript:delete_ok('${u.seq}')">delete</a></td>
        </tr>
    </c:forEach>
    </table>
        <br/><button type="button" onclick="location.href='add'">새글쓰기</button>
</body>
</html>
