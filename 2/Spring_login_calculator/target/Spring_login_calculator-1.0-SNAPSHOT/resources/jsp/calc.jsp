<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<sec:authentication var="username" property="principal.username" />

<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="include.jsp"/>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/"/>
<html>
<head>
    <title>Title</title>
    <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" type="text/css" rel="stylesheet">

</head>

<body>

<div class="welcome-calc">
    <h2 style="margin-right: 14%">Hello, ${username}</h2>
    <form action="logout">
        <input type="submit" class="btn btn-outline-primary" value="Выйти"/>
    </form>
</div>

<div class="form-calc">
    <sf:form action="calculate" method="post" modelAttribute="operation">
        <sf:input path="digit" id="my-input-calc" class="form-control" name="digit"/>
        <sf:input path="mathAction" type="submit" class="btn btn-outline-primary" value="+"/>
        <sf:input path="mathAction" type="submit" class="btn btn-outline-primary" value="-"/>
        <sf:input path="mathAction" type="submit" class="btn btn-outline-primary" value="/"/>
        <sf:input path="mathAction" type="submit" class="btn btn-outline-primary" value="*"/>
        <sf:input path="mathAction" type="submit" class="btn btn-outline-primary" value="="/>
        <br>
        <h3 id="error"><sf:errors path="digit"/></h3>
        <h3 id="error">${divisionByNull}</h3>
    </sf:form>
</div>

<h2 id="my-h2-history">${history}</h2>


</body>
</html>