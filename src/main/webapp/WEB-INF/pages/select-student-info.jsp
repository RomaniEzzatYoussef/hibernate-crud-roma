<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/21/2020
  Time: 12:27 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Selected Student Info</title>
</head>
<body>

Student selected is: <br><br><br>
<table border="2">
    <tr>
        <td>id</td>
        <td>firstName</td>
        <td>lastName</td>
        <td>email</td>
    </tr>

    <tr>
        <td><c:out value="${student.id}"/></td>
        <td><c:out value="${student.firstName}"/></td>
        <td><c:out value="${student.lastName}"/></td>
        <td><c:out value="${student.email}"/></td>
    </tr>


</table>
</body>
</html>
