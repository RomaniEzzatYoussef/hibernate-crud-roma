<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/19/2020
  Time: 4:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <title>Customer Registration Form</title>

    <style>
        .error {color:red}
    </style>
</head>
<body>


Customer Validation Form (Form Tags & Validation) <br><br>

<form:form action="processCustomerForm" modelAttribute="customer">

    First name: <form:input path="firstName"/>
    <form:errors path="firstName" cssClass="error"/> <br><br>
    Last name (*): <form:input path="lastName"/>
    <form:errors path="lastName" cssClass="error"/> <br><br>
    Free Passes (*): <form:input path="freePasses"/>
    <form:errors path="freePasses" cssClass="error"/> <br><br>
    Postal Code: <form:input path="postalCode"/>
    <form:errors path="postalCode" cssClass="error"/> <br><br>
    Course Code: <form:input path="courseCode"/>
    <form:errors path="courseCode" cssClass="error"/> <br><br>

    <input type="submit" value="submit">
</form:form>
<br><br>

<p>${redirected}</p> <br><br>

</body>
</html>
