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

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/resources/css/form.css">
    <title>Customer Page</title>

    <style>
        .error {color:red}
    </style>
</head>
<body>


<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Customer Validation Form (Form Tags & Validation)</h3>
            </div>

            <div class="card-body">
                <form:form action="processCustomerForm" modelAttribute="customer">
                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" placeholder="first name" path="firstName"/>
                        <form:errors path="firstName" cssClass="error"/>
                    </div>

                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" placeholder="last name(*)" path="lastName"/>
                        <form:errors path="lastName" cssClass="error"/>
                    </div>

                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" placeholder="free passes (*)" path="freePasses"/>
                        <form:errors path="freePasses" cssClass="error"/>
                    </div>

                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" placeholder="postal code" path="postalCode"/>
                        <form:errors path="postalCode" cssClass="error"/>
                    </div>

                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" placeholder="course code" path="courseCode"/>
                        <form:errors path="courseCode" cssClass="error"/>
                    </div>

                    <%--                    <label><input type="checkbox" name="terms"> I agree with the <a href="#">Terms and Conditions</a>.</label>--%>
                    <div class="form-group">
                        <input type="submit" value="Submit" class="btn btn-primary fa-youtube-square">
                    </div>

                    <div class="input-group form-group">
                        <h3>${redirected}</h3>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>


</body>
</html>
