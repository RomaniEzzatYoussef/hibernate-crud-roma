<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/21/2020
  Time: 8:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Instructor Info Page</title>
    <link rel="stylesheet" type="text/css"  href="${pageContext.request.contextPath}/resources/css/form.css">

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css"
          integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/form.css">
    <!------ Include the above in your HEAD tag ---------->

</head>
<body>




<%--<div class="container">--%>
<%--    <div class="d-flex justify-content-center h-100">--%>
<%--        <div class="card">--%>
<%--            <div class="card-header">--%>
<%--                <h3>Save Instructor Form (Cascade Saving)</h3>--%>
<%--            </div>--%>

<%--            <div class="card-body">--%>
<%--    --%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<div class="container">
    <div class="d-flex justify-content-center h-100">
        <div class="cardtable">
            <div class="card-header">
                <h6><span style="background: aquamarine; color: midnightblue; margin: 25px">${message}</span></h6>
                <h3>All Instructors & InstructorDetail objects</h3>
            </div>

            <div class="card-body">
                <div class="table-responsive" id="sailorTableArea3">
                    <table id="sailorTable3" class="table table-striped table-bordered" width="100%">

                        <thead>
                        <tr>
                            <td>id</td>
                            <td>firstName</td>
                            <td>lastName</td>
                            <td>email</td>
                            <td>instrDetailID</td>
                            <td>youtube channel</td>
                            <td>hobby</td>
                            <td colspan="2"><a href="${contextPath}/instructor/">Delete All Instructors</a></td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="instructor" items="${instructors}">
                            <tr>
                                <td><c:out value="${instructor.id}"/></td>
                                <td><c:out value="${instructor.firstName}"/></td>
                                <td><c:out value="${instructor.lastName}"/></td>
                                <td><c:out value="${instructor.email}"/></td>
                                <td><c:out value="${instructor.instructorDetail.id}"/></td>
                                <td><c:out value="${instructor.instructorDetail.youtubeChannel}"/></td>
                                <td><c:out value="${instructor.instructorDetail.hobby}"/></td>
                                <td><a href="${contextPath}/instructor/showUpdateInstructorPage?instructorId=${instructor.id}">Update</a></td>
                                <td><a href="${contextPath}/instructor/deleteInstructor?instructorId=${instructor.id}">Delete</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="card-header">
                <h6><span style="background: aquamarine; color: midnightblue; margin: 25px">${message}</span></h6>
                <h3>All Instructors objects</h3>
            </div>

            <div class="card-body">
                <div class="table-responsive" id="sailorTableArea2">
                    <table id="sailorTable2" class="table table-striped table-bordered" width="100%">

                        <thead>
                        <tr>
                            <td>id</td>
                            <td>firstName</td>
                            <td>lastName</td>
                            <td>email</td>

                            <td colspan="2"><a href="${contextPath}/instructor/">Delete All Instructors</a></td>
                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="instructor" items="${instructors}">
                            <tr>
                                <td><c:out value="${instructor.id}"/></td>
                                <td><c:out value="${instructor.firstName}"/></td>
                                <td><c:out value="${instructor.lastName}"/></td>
                                <td><c:out value="${instructor.email}"/></td>

                                <td><a href="${contextPath}/instructor/showUpdateInstructorPage?instructorId=${instructor.id}">Update</a></td>
                                <td><a href="${contextPath}/instructor/deleteInstructorDetail?instructorId=${instructor.id}">Delete</a></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

            <div class="card-header">
                <h6><span style="background: aquamarine; color: midnightblue; margin: 25px">${message}</span></h6>
                <h3>All Instructors Detail objects</h3>
            </div>

            <div class="card-body">
                <div class="table-responsive" id="sailorTableArea1">
                    <table id="sailorTable1" class="table table-striped table-bordered" width="100%">

                        <thead>
                        <tr>
                            <td>instrDetailID</td>
                            <td>youtube channel</td>
                            <td>hobby</td>

                            <td colspan="2"><a href="${contextPath}/instructor/">Delete All Instructors</a></td>

                        </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="instructor" items="${instructors}">
                            <tr>
                                <td><c:out value="${instructor.instructorDetail.id}"/></td>
                                <td><c:out value="${instructor.instructorDetail.youtubeChannel}"/></td>
                                <td><c:out value="${instructor.instructorDetail.hobby}"/></td>

                                <td><a href="${contextPath}/instructor/showUpdateInstructorPage?instructorId=${instructor.id}">Update</a> </td>
                                <td><a href="${contextPath}/instructor/deleteInstructor?instructorId=${instructor.id}">Delete</a> </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>



