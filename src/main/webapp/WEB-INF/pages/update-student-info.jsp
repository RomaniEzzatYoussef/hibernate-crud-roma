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
    <title>Update Info</title>
    <style>
        span {
            color: blueviolet;
        }
    </style>
</head>
<body>
The student <span>${s.firstName} ${s.lastName}</span> updated successful to MySQL DB with id: <span>${s.id}</span>.

<br><br>
All Students
<table border="2">
    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    <tr>
        <td>id</td>
        <td>firstName</td>
        <td>lastName</td>
        <td>email</td>
        <td><a href="${contextPath}/student/deleteAllStudent">Delete All Students</a> </td>
    </tr>

    <c:forEach var="student" items="${students}">
        <tr>
            <td><c:out value="${student.id}"/></td>
            <td><c:out value="${student.firstName}"/></td>
            <td><c:out value="${student.lastName}"/></td>
            <td><c:out value="${student.email}"/></td>
            <td><a href="${contextPath}/student/updateStudent?studentId=${student.id}">Update</a> </td>
            <td><a href="${contextPath}/student/deleteStudent?studentId=${student.id}">Delete</a> </td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
