<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2023/05/08
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="/customer?action=create">Create</a>
</p>
<table border="1">
    <tr>
        <td>Name</td>
        <td>Email</td>
        <td>Address</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="ct">
        <tr>
            <td><a href="/customers?action=view&id=${ct.getId()}">${ct.getName()}</a></td>
            <td>${ct.getEmail()}</td>
            <td>${ct.getAddress()}</td>
            <td><a href="/customers?action=edit&id=${ct.getId()}">Edit</a></td>
            <td><a href="/customers?action=delete&id=${ct.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
