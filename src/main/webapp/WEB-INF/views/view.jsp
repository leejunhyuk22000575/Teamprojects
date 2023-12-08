<%--
  Created by IntelliJ IDEA.
  User: dlwns
  Date: 2023-12-01
  Time: 오후 11:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>View</title>
    <style>
        #viewer {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #viewer td, #viewer th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #viewer tr:nth-child(even){background-color: #f2f2f2;}
        #viewer tr:hover {background-color: #ddd;}
        #viewer th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
</head>
<body>
<h1>게시글 view</h1>
<table id="viewer">
    <tr><td>Category:</td><td>${boardVO.category}</td></tr>
    <tr><td>Title:</td><td>${boardVO.title}</td></tr>
    <tr><td>Writer:</td><td>${boardVO.writer}</td></tr>
    <tr><td>Content:</td><td>${boardVO.content}</td></tr>
</table>
<a href="../list">목록보기</a>
</body>
</html>