<%--
  Created by IntelliJ IDEA.
  User: Kurumi
  Date: 9/2/2022
  Time: 11:26 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
  <h3>Select Favorite Subjects</h3><hr/>
    <form action="TestReq" method="post">
        Name: <input type="text" name="student_name"/><br>
        GPAX: <input type="number" name="gpax"/><br>
        Favorite Subjects: <br>
        &nbsp; <input type="checkbox" name="fav_subjects" value="INT100">INT100 xxxx<br>
        &nbsp; <input type="checkbox" name="fav_subjects" value="INT101">INT101 xxxx<br>
        &nbsp; <input type="checkbox" name="fav_subjects" value="INT105">INT105 xxxx<br>
        &nbsp; <input type="checkbox" name="fav_subjects" value="INT201">INT201 xxxx<br>
        &nbsp; <input type="checkbox" name="fav_subjects" value="INT202">INT202 xxxx<br>
        &nbsp; <input type="checkbox" name="fav_subjects" value="INT204">INT204 xxxx<br>
        <input type="submit">
    </form>
<hr/>
Name: ${param.student_name}<br/>
Your Favorite Subject::<br/>
<c:forEach items="${paramValues.fav_subjects}" var="fs">
    &nbsp; &nbsp; - ${fs}<br/>
</c:forEach>

<hr/>
<a href="index.jsp">[ Home ]</a>
</body>
</html>
