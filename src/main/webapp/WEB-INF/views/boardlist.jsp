<%--
  Created by IntelliJ IDEA.
  User: dlwns
  Date: 2023-12-01
  Time: 오후 9:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>

    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
    </style>
</head>
<script>
    function delete_ok(id){
        var a = confirm("정말로 삭제하시겠습니까?");
        if(a) location.href= 'deleteok/' + id;
    }
</script>

<body>
<div>
    <table id="list">
        <tr>
            <th>num</th>
            <th>Category</th>
            <th>title</th>
            <th>writer</th>
            <th>content</th>
            <th>regdate</th>
            <th>Edit</th>
            <th>Delete</th>
            <th>View</th>
        </tr>
        <c:forEach items="${list}" var="u">
            <tr>
                <td>${u.seq}</td>
                <td>${u.category}</td>
                <td>${u.title}</td>
                <td>${u.writer}</td>
                <td>${u.content}</td>
                <td>${u.regdate}</td>
                <td><a href="editform/${u.seq}">Edit</a> </td>
                <td><a href="javascript:delete_ok('${u.seq}')">Delete</a></td>
                <td><a href="view/${u.seq}">View</a> </td>
            </tr>
        </c:forEach>
    </table>
    <br/><button type="button" onclick="location.href='add'">New Post</button>
</div>
</body>
</html>