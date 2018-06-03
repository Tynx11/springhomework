<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="include.jsp"/>
<html>
<head>
    <title>Title</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>

<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <form class="login100-form" action="login/process" method="post">
					<span class="login100-form-title p-b-26">
						Welcome
					</span>


                <div class="wrap-input100">
                    <input class="input100" type="text" name="username">
                    <span class="focus-input100" data-placeholder="Username"></span>
                </div>

                <div class="wrap-input100">
                    <span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
                    <input class="input100" type="password" name="password">
                    <span class="focus-input100" data-placeholder="Password"></span>
                </div>

                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn">
                            Login
                        </button>
                    </div>
                </div>

                <c:if test="${success}">
                    <h4 id="reg-successful-text">Registration succesful</h4>
                </c:if>

                <c:if test="${error}">
                    <h6 id="error" style="margin-top: 10%">Incorrect login or password</h6>
                </c:if>

                <div class="text-center p-t-115">
						<span class="txt1">
							Don't have an account?
						</span>

                    <a class="txt2" href="registration">
                        Sign Up
                    </a>
                </div>
            </form>
        </div>
    </div>
</div>


<div id="dropDownSelect1"></div>

<script src="<c:url value="/resources/vendor/jquery/jquery-3.2.1.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/animsition/js/animsition.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/popper.js"/>"></script>
<script src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/select2/select2.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/daterangepicker/daterangepicker.js"/>"></script>
<script src="<c:url value="/resources/vendor/daterangepicker/moment.min.js"/>"></script>
<script src="<c:url value="/resources/vendor/countdowntime/countdowntime.js"/>"></script>
<script src="<c:url value="/resources/js/main.js"/>"></script>

</body>
</html>