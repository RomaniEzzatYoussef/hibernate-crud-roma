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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/resources/css/form.css"></head>
<body>

<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Update Student Form (Create Objects CRUD)</h3>
            </div>

            <div class="card-body">
                <form:form action="updateStudentForm" modelAttribute="student">
                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" readonly="true" placeholder="id" path="id"/>
                    </div>

                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" placeholder="first name" path="firstName"/>
                    </div>

                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" placeholder="last name" path="lastName"/>
                    </div>

                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" placeholder="email" path="email"/>
                    </div>

                    <div class="form-group">
                        <input type="submit" value="Submit" class="btn btn-primary fa-youtube-square">
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>



</body>
</html>
