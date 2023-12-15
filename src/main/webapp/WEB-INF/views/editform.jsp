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
    <tr><td>title </td><td><form:input path="title"/></td></tr>
    <tr><td>pay </td><td><form:input path="pay"/></td></tr>
    <tr><td>numEmployee </td><td><form:input path="numEmployee"/></td></tr>
    <tr><td>workPeriod </td><td><form:input path="workPeriod"/></td></tr>
    <tr><td>gender </td><td><form:input path="gender"/></td></tr>
    <tr><td>dayOfWeek </td><td><form:input path="dayOfWeek"/></td></tr>
    <tr><td>location </td><td><form:input path="location"/></td></tr>
    <tr><td>jobType </td><td><form:input path="jobType"/></td></tr>
    <tr><td><input type="submit" value="수정"/><input type="button" value="취소" onclick="history.back()"/></td></tr>
  </table>
</form:form>

</body>
</html>