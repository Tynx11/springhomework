<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<base href="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/" />
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1> Добавление нового пользователя: </h1>

<sf:form action="reg_process" method="post" modelAttribute="UserRegistrationForm">

    <sf:label path="username">Username: </sf:label> <sf:input path="username"/> <sf:errors path="username"/> <br>
    <sf:label path="email">Email: </sf:label> <sf:input path="email"/> <sf:errors path="email"/><br>
    <sf:label path="password">Password: </sf:label> <sf:input path="password"/> <sf:errors path="password"/><br>

    <button type="submit">Save</button>
</sf:form>

</body>
</html>