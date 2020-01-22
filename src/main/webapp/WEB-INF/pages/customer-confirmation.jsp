<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/19/2020
  Time: 5:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/resources/css/form.css">

    <title>Customer Confirmation</title>
</head>
<body>


<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h2>Customer Validation Form (Form Tags & Validation)</h2>
            </div>

            <div class="card-header">
                <h3>
                    The customer is confirmed: ${customer.firstName} ${customer.lastName}. <br><br>
                    Free passes: ${customer.freePasses} <br><br>
                    Postal Code: ${customer.postalCode} <br><br>
                    Course Code: ${customer.courseCode} <br><br>
                </h3>
            </div>
        </div>
    </div>
</div>


</body>
</html>
