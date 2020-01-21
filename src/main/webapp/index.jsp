<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/20/2020
  Time: 7:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/resources/css/my-test.css">

    <script src="${pageContext.request.contextPath}/resources/js/simple-test.js"></script>
    <title>Index Page</title>
</head>
<body>

<h2>Hibernate CRUD Index Page</h2>

<a href="customer/showCustomerForm">Go To Customer Validation Form</a> <br><br>
<a href="student/showStudentPage">Go To Student Page With Hibernate CRUD</a> <br><br>


<img src="${pageContext.request.contextPath}/resources/images/spring-logo.jpg" />

<br><br>

<input type="button" onclick="doSomeWork()" value="Click Me"/>

</body>
</html>
