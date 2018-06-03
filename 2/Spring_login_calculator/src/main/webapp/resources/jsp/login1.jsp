<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="<c:url value="/resources/vendor/bootstrap/css/bootstrap.min.css" />" type="text/css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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

<div class="login-form">
    <div class="login-form">
        <div class="form-group">
            <form class="login100-form" action="login/process" method="post">
					<span class="login100-form-title p-b-26">
						Welcome
					</span>


                <div class="form-group">
                    <input class="form-control" type="text" name="username" placeholder="name">
                    <span class="focus-input100" placeholder="Username"></span>
                </div>

                <div class="form-group">
                    <input class="form-control" type="password" name="password" placeholder="password">
                    <span class="focus-input100" data-placeholder="Password"></span>
                </div>

                <div class="form-group">
                        <button class="btn btn-primary btn-block">
                            Login
                        </button>
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


</body>
</html>