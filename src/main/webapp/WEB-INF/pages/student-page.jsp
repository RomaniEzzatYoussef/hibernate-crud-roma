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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/resources/css/form.css">

</head>
<body>


<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>User Options Passes Form (Form Tags & Binding)</h3>
            </div>

            <div class="card-body">
                <form:form action="userSelectOptionForm" modelAttribute="userInfo">
                    <div class="input-group form-group">
                        Country:
                        <form:select path="country">
                            <form:options items="${userInfo.countryOptions}"/>
                        </form:select> <br><br>
                    </div>

                    <div class="input-group form-group">
                        Favorite Language: <br>
                        <form:radiobuttons path="favoriteLanguage" items="${userInfo.favoriteLanguageOptions}"  /> <br><br>
                    </div>

                    <div class="input-group form-group">
                        Operating Systems: <br>
                        <form:checkboxes path="operatingSystems" items="${userInfo.operatingSystemsOptions}"  /> <br><br>
                    </div>

                    <div class="form-group">
                        <input type="submit" value="Submit" class="btn btn-primary fa-youtube-square">
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>





<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Save Student Form (Create Objects CRUD)</h3>
            </div>

            <div class="card-body">
                <form:form action="saveStudentForm" modelAttribute="student">
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



<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Select Student Form (Create Objects CRUD)</h3>
            </div>

            <div class="card-body">
                <form:form action="selectStudentForm" modelAttribute="student">
                    <div class="input-group form-group">
                        Choose Student: <br><br>
                        <form:select path="id">
                            <form:options items="${studentsIDName}"/>
                        </form:select> <br><br>
                    </div>

               <div class="form-group">
                        <input type="submit" value="Submit" class="btn btn-primary fa-youtube-square">
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>



<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>Update email for All Student (Create Objects CRUD)</h3>
            </div>

            <div class="card-body">
                <form action="updateAllStudentMails" method="post">
                    <div class="input-group form-group">
                        <input type="text" name="email" class="form-control" placeholder="Enter email for all students :"/>
                    </div>
                    <div class="form-group">
                        <input type="submit" value="Submit" class="btn btn-primary fa-youtube-square">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>

<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="card">
            <div class="card-header">
                <h3>
                    <c:set var="contextPath" value="${pageContext.request.contextPath}"/>
                    <a href="${contextPath}/student/showUpdateStudentPage">Update OR Delete Student Form (Create Objects CRUD)</a>
                </h3>
            </div>
        </div>
    </div>
</div>



</body>
</html>
