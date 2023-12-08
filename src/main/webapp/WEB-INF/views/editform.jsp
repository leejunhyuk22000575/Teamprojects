<%--
  Created by IntelliJ IDEA.
  User: dlwns
  Date: 2023-12-01
  Time: 오후 9:21
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit</title>
</head>
<body>

<h1>Edit</h1>
<form:form modelAttribute="u" method="post" action="../editok">
  <form:hidden path="seq"/>
  <table id="edit">
    <tr><td>category </td><td><form:input path="category"/></td></tr>
    <tr><td>title </td><td><form:input path="title"/></td></tr>
    <tr><td>writer </td><td><form:input path="writer"/></td></tr>
    <tr><td>content </td><td><form:textarea path="content" cols="50" rows="5"/></td></tr>
    <tr><td><input type="submit" value="수정"/><input type="button" value="취소" onclick="history.back()"/></td></tr>
  </table>
</form:form>

</body>
</html>