<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>calc</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
<h1>Calculator by anton</h1>

<div>
    <button id="connect" class="btn btn-primary">Connect</button>
    <button id="disconnect" disabled="disabled" class="btn btn-primary">Disconnect</button>
</div>


<div id="calculator" style="transition: all .3s; display: none;" div class="form-group">
        <div class="form-group">
    <label for="input">Number:</label><input id="input" class="form-control" type="text">
    <p><span id="response" class="btn btn-primary"></span></p>
    <button id="plus" class="btn btn-primary" >+</button>
    <button id="sub" class="btn btn-primary" >-</button>
    <button id="mult" class="btn btn-primary">*</button>
    <button id="divide" class="btn btn-primary">/</button>
</div>
</div>

<script src="<c:url value="/views/js/sockjs-0.3.min.js"/>"></script>
<script src="<c:url value="/views/js/stomp.min.js"/>"></script>
<script src="<c:url value="/views/js/stompwebsocket.js"/>"></script>
</body>
</html>
