<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" type="text/css" rel="stylesheet">
    <style type="text/css">
        .login-form {
            width: 340px;
            margin: 50px auto;
        }
        .login-form form {
            margin-bottom: 15px;
            background: #f7f7f7;
            box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
            padding: 30px;
        }
        .login-form h2 {
            margin: 0 0 15px;
        }
        .form-control, .btn {
            min-height: 38px;
            border-radius: 2px;
        }
        .btn {
            font-size: 15px;
            font-weight: bold;
        }
    </style>
</head>
<body>
<div class="limiter">
    <div class="login-form">
        <div class="form-group">
            <sf:form action="reg_process" method="post" modelAttribute="userForm"
                     class="login100-form validate-form">

                <span class="login100-form-title p-b-26">
						Registration
					</span>

                <div class="form-group" >
                    <sf:input path="username" class="input100" type="text" name="username" placeholder="Username"/>
                    <span class="focus-input100" data-placeholder="Username"></span>
                </div>
                <sf:errors id="error" path="username"/>

                <div class="form-group" >
                    <sf:input path="email" class="input100" type="text" name="email" placeholder="email"/>
                    <span class="focus-input100" data-placeholder="Email"></span>
                </div>
                <sf:errors id="error" path="email"/>

                <div class="form-group">
                    <span class="btn-show-pass">
							<i class="zmdi zmdi-eye"></i>
						</span>
                    <sf:input path="password" class="input100" type="password" name="pass" placeholder="password"/>
                    <span class="focus-input100" data-placeholder="Password"></span>
                </div>
                <sf:errors id="error" path="password"/>

                <div class="form-group">
                    <sf:input path="repassword" class="input100" type="password" name="repass" placeholder="password again"/>
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


</body>
</html>