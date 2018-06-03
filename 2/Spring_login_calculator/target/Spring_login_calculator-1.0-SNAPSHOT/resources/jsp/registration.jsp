<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="include.jsp"/>
<html>
<head>
    <title>Title</title>

</head>
<body>
<div class="limiter">
    <div class="container-login100">
        <div class="wrap-login100">
            <sf:form action="reg_process" method="post" modelAttribute="userForm"
                     class="login100-form validate-form">

                <span class="login100-form-title p-b-26">
						Registration
					</span>

                <div class="wrap-input100" >
                    <sf:input path="username" class="input100" type="text" name="username"/>
                    <span class="focus-input100" data-placeholder="Username"></span>
                </div>
                <sf:errors id="error" path="username"/>

                <div class="wrap-input100" >
                    <sf:input path="email" class="input100" type="text" name="email"/>
                    <span class="focus-input100" data-placeholder="Email"></span>
                </div>
                <sf:errors id="error" path="email"/>

                <div class="wrap-input100">
                    <span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
                    <sf:input path="password" class="input100" type="password" name="pass"/>
                    <span class="focus-input100" data-placeholder="Password"></span>
                </div>
                <sf:errors id="error" path="password"/>

                <div class="wrap-input100">
                    <span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
                    <sf:input path="repassword" class="input100" type="password" name="repass"/>
                    <span class="focus-input100" data-placeholder="Password Again"></span>
                </div>
                <sf:errors id="error"/>

                <div class="container-login100-form-btn">
                    <div class="wrap-login100-form-btn">
                        <div class="login100-form-bgbtn"></div>
                        <button class="login100-form-btn">
                            Sign Up
                        </button>
                    </div>
                </div>

                <div class="text-center p-t-115">
						<span class="txt1">
							Already have an account?
						</span>

                    <a class="txt2" href="login">
                        Sign In
                    </a>
                </div>
            </sf:form>
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