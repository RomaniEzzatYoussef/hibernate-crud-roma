<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/19/2020
  Time: 11:13 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Student Page</title>
</head>
<body>

User Options Passes Form (Form Tags & Binding)
<br><br>
<form:form action="userSelectOptionForm" modelAttribute="user">
    Country:
    <form:select path="country">
        <form:options items="${user.countryOptions}"/>
    </form:select> <br><br>
    Favorite Language: <br>
    <form:radiobuttons path="favoriteLanguage" items="${user.favoriteLanguageOptions}"  /> <br><br>
    Operating Systems: <br>
    <form:checkboxes path="operatingSystems" items="${user.operatingSystemsOptions}"  /> <br><br>

    <input type="submit" value="Submit"/>
</form:form>
<br><br>

Save Student Form (Create Objects CRUD)
<br> <br>
<form:form action="saveStudentForm" modelAttribute="student">
    First name: <form:input path="firstName"/> <br><br>
    Last name: <form:input path="lastName"/>  <br><br>
    Email:  <form:input path="email"/>  <br><br>
    <input type="submit" value="Submit">
</form:form>
<br><br>

Select Student Form (Create Objects CRUD)
<br> <br>
<form:form action="selectStudentForm" modelAttribute="student">
    Choose Student: <br><br>
    <form:select path="id">
        <form:options items="${studentss}"/>
    </form:select> <br><br>
    <input type="submit" value="Submit">
</form:form>
<br><br>

Update email for All Student (Create Objects CRUD)
<br> <br>
<form action="updateAllStudentMails" method="post">
    Enter email for all students : <br><br>
    <input type="text" placeholder="type email for all students" name="email"><br><br>
    <input type="submit" value="Submit"/>
</form>
<br><br>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<a href="${contextPath}/student/showUpdateStudentPage">Update OR Delete Student Form (Create Objects CRUD)</a>

<p style="margin: 60px"></p>
</body>
</html>
