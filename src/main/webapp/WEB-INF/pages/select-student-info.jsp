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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/resources/css/form.css"></head>
<body>



<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Student selected is:</h3>
            </div>

            <div class="card-body">
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
            </div>
        </div>
    </div>
</div>




</body>
</html>
