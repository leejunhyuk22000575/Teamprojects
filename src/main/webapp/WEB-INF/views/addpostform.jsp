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
        <tr><td>Title:</td><td><input type="text" name="title"/></td></tr>
        <tr><td>Pay:</td><td><input type="text" name="pay"/></td></tr>
        <tr><td>Number of Employee:</td><td><input type="text" name="numEmployee"/></td></tr>
        <tr><td>Work Period</td>:</td><td><input type="text" name="workPeriod"/></td></tr>
        <tr><td>Gender:</td><td><input type="text" name="gender"/></td></tr>
        <tr><td>Day of Week:</td><td><input type="text" name="dayOfWeek"/></td></tr>
        <tr><td>Location:</td><td><input type="text" name="location"/></td></tr>
        <tr><td>Job Type:</td><td><input type="text" name="jobType"/></td></tr>
    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit"> 등록하기 </button>
</form>

</body>
</html>