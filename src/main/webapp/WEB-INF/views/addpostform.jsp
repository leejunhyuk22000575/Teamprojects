<%--
  Created by IntelliJ IDEA.
  User: dlwns
  Date: 2023-12-01
  Time: 오후 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<h1>새 글 작성</h1>
<form action="addok" method="post" accept-charset="UTF-8">
    <table id="edit">
        <tr><td>Category:</td><td><input type="text" name="category"/></td></tr>
        <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Writer:</td><td><input type="text" name="writer"/></td></tr>
        <tr><td>Content:</td><td><textarea cols="50" rows="5" name="content"></textarea></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit"> 등록하기 </button>
</form>

</body>
</html>