<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/21/2020
  Time: 12:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Update Student Form</title>
</head>
<body>

Update Student Form (Create Objects CRUD)
<br> <br>
<form:form action="updateStudentForm" modelAttribute="student">
    id: <form:input path="id" readonly="true"/> <br><br>
    First name: <form:input path="firstName"/> <br><br>
    Last name: <form:input path="lastName"/>  <br><br>
    Email:  <form:input path="email"/>  <br><br>
    <input type="submit" value="Submit">
</form:form>
<br><br>

</body>
</html>
