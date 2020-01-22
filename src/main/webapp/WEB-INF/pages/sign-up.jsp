<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/22/2020
  Time: 11:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/resources/css/signin.css">

    <title>Sign Up Page</title>
</head>
<body>

<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Sign Up</h3>
            </div>

            <div class="card-body">
                <form:form action="signUp" modelAttribute="user">
                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" placeholder="firstName" path="firstName"/>
                    </div>

                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" placeholder="lastName" path="lastName"/>
                    </div>

                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" placeholder="email" path="email"/>
                    </div>

                    <div class="input-group form-group">
                        <form:input type="text" class="form-control" placeholder="username" path="username"/>
                    </div>

                    <div class="input-group form-group">
                        <form:input type="password" class="form-control" placeholder="password" path="password"/>
                    </div>

<%--                    <label><input type="checkbox" name="terms"> I agree with the <a href="#">Terms and Conditions</a>.</label>--%>
                    <div class="form-group">
                        <input type="submit" value="Sign up" class="btn btn-primary pull-right">
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>

</body>
</html>
