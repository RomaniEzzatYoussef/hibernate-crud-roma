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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/resources/css/form.css">
    <style>
        span {
            color: blueviolet;
        }
    </style>
</head>
<body>


<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h6><span style="background: aquamarine; color: midnightblue; margin: 25px">${message}</span></h6>
            </div>

            <div class="card-header">
                <h2>All Students</h2>
            </div>

            <div class="card-body">
                <table border="2">
                    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
                    <tr>
                        <td>id</td>
                        <td>firstName</td>
                        <td>lastName</td>
                        <td>email</td>
                        <td><a href="${contextPath}/student/deleteAllStudent">Delete All Students</a></td>
                    </tr>

                    <c:forEach var="student" items="${students}">
                        <tr>
                            <td><c:out value="${student.id}"/></td>
                            <td><c:out value="${student.firstName}"/></td>
                            <td><c:out value="${student.lastName}"/></td>
                            <td><c:out value="${student.email}"/></td>
                            <td><a href="${contextPath}/student/updateStudent?studentId=${student.id}">Update</a></td>
                            <td><a href="${contextPath}/student/deleteStudent?studentId=${student.id}">Delete</a></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>
    </div>
</div>


</body>
</html>
