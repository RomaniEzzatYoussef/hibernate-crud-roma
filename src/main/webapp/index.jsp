<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/index.css">
    <script src="${pageContext.request.contextPath}/resources/js/index.js"></script>

    <title>Index Page</title>
</head>
<body>

<h2>Hibernate CRUD Index Page</h2>

<div id="wrapper" class="animate">
    <nav class="navbar header-top fixed-top navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="index.jsp">Home</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
                aria-controls="navbarText"
                aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarText">
            <ul class="navbar-nav ml-md-auto d-md-flex">
                <li class="nav-item">
                    <a class="nav-link" href="showSignInPage"><i class="fas fa-key"></i> Login</a>
                </li>
            </ul>
        </div>
    </nav>
    <nav  class="position-fixed navbar-toggler navbar-dark bg-dark">
        <ul class="navbar-light animate side-nav ">

            <li class="nav-item">
                <a class="nav-link" href="customer/showCustomerForm" title="customer"> <i
                        class="fas fa-cart-plus"></i><span class="ttip">Go To Customer Validation Form</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="student/showStudentPage" title="student"> <i
                        class="fas fa-comment"></i><span class="ttip">Go To Student Page With Hibernate CRUD</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="instructor/showInstructorPage" title="instructor OneToOne"> <i
                        class="fas fa-comment"></i><span class="ttip">Go To Instructor Page With Database @OneToOne Relationship</span></a>
            </li>
        </ul>
    </nav>

</div>

<%--<div>--%>
<%--    <img src="${pageContext.request.contextPath}/resources/images/spring-logo.jpg" /><br><br>--%>
<%--    <input type="button" onclick="doSomeWork()" value="Click Me"/><br><br>--%>
<%--</div>--%>

</body>
</html>
