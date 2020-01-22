<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/22/2020
  Time: 12:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">

    <!--Custom styles-->
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/resources/css/signin.css">
    <script src="${pageContext.request.contextPath}/resources/js/signin.js"></script>


    <title>Sign In Page</title>
</head>
<body>

<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Sign In</h3>
<%--                <div class="d-flex justify-content-end social_icon">--%>
<%--                    <span><i class="fab fa-facebook-square"></i></span>--%>
<%--                    <span><i class="fab fa-google-plus-square"></i></span>--%>
<%--                    <span><i class="fab fa-twitter-square"></i></span>--%>
<%--                </div>--%>
            </div>
            <div class="card-body">
                <form:form action="login" modelAttribute="user">
                    <p style="color:red">${message}</p>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-user"></i></span>
                        </div>
                        <form:input type="text" class="form-control" placeholder="username" path="username"/>

                    </div>
                    <div class="input-group form-group">
                        <div class="input-group-prepend">
                            <span class="input-group-text"><i class="fas fa-key"></i></span>
                        </div>
                        <form:input type="password" class="form-control" placeholder="password" path="password"/>
                    </div>
<%--                    <div class="row align-items-center remember">--%>
<%--                        <input type="checkbox">Remember Me--%>
<%--                    </div>--%>
                    <div class="form-group">
                        <input type="submit" value="Login" class="btn float-right login_btn">
                    </div>
                </form:form>
            </div>
            <div class="card-footer">
                <div class="d-flex justify-content-center links">
                    Don't have an account?<a href="showSignUpPage">Sign Up</a>
                </div>
<%--                <div class="d-flex justify-content-center">--%>
<%--                    <a href="#">Forgot your password?</a>--%>
<%--                </div>--%>
            </div>
        </div>
    </div>
</div>


</body>
</html>
