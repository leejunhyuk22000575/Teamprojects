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
        body{
            align-items: center;
            justify-content: center;
        }
        #viewer {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 25%;
            margin: 20px auto;
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
        .add{
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #FF6F2C;
            color: white;
        }
        a {
            text-align: center;
            display: block;
            padding: 10px;
        }
        h1 {
            text-align: center;
        }
    </style>
</head>
<body>
<h1>${boardVO.title}</h1>
<table id="viewer">
    <tr><td class="add">Pay:</td><td>${boardVO.pay}</td></tr>
    <tr><td class="add">Number of Employee:</td><td>${boardVO.numEmployee}</td></tr>
    <tr><td class="add">Work Period:</td><td>${boardVO.workPeriod}</td></tr>
    <tr><td class="add">Gender:</td><td>${boardVO.gender}</td></tr>
    <tr><td class="add">Day of Week:</td><td>${boardVO.dayOfWeek}</td></tr>
    <tr><td class="add">Location:</td><td>${boardVO.location}</td></tr>
    <tr><td class="add">Job Type:</td><td>${boardVO.jobType}</td></tr>
</table>
<a href="../list">목록보기</a>
</body>
</html>