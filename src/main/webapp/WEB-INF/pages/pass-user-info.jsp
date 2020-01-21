<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Romani Ezzat
  Date: 1/19/2020
  Time: 12:37 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Pass Details</title>
</head>
<body>
The user is confirmed:  <br><br>

country: ${user.country} <br>
Favorite Language: ${user.favoriteLanguage} <br>
Operating System:
<ul>
    <c:forEach var="temp" items="${user.operatingSystems}">
        <li> ${temp} </li>
    </c:forEach>

</ul>
</body>
</html>
