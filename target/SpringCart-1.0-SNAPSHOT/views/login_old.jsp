<%@page import="com.cart.utils.Alert"%>
<%@page import="com.cart.utils.Utility"%>
<%@page import="com.cart.utils.GlobalConfig"%>
<%@page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%><!DOCTYPE html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!--base url -->
        <base href="${pageContext.request.contextPath}/" target="_self">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/style.css">

        <!-- plugin -->
        <link href="assets/plugin/boxicons-2.0.7/css/boxicons.min.css" rel="stylesheet">

        <title>CSC e-Governance Services India Limited</title>
    </head>
    <body>
        <div class="container-fluid login-main">
            <div class="row login-main-row">
                <div class="col-md-6 login-left">
                    <img src="assets/img/login.png" />
                </div>
                <div class="col-md-6 login-right">
                    <div class="login-logo text-right">
                        <img src="assets/img/csc_logo.png" />
                    </div>
                    <form action="admin/validateAdmin" method="POST" id="signForm" autocomplete="off">
                        <h4>Sign in</h4>
                        <p class="mb-5">with your email ID and Password</p>
                        <div class="form-group">
                            <label for="userName">Email address</label>
                            <input type="email" class="form-control" name="userName" id="userName" aria-describedby="emailHelp">
                            <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone
                                else.</small>
                        </div>
                        <div class="form-group">
                            <label for="userPass">Password</label>
                            <input type="password" name="userPass" class="form-control" id="userPass">
                        </div>
                        <%
                            String message = (String) session.getAttribute("msg");
                            session.removeAttribute("msg");
                            System.out.println(message);
                            if (message == null || message.isEmpty()) {
                            } else if (message.equalsIgnoreCase("err") && message != null) {
                                out.println(Alert.getMessage());
                            } else if (message.equalsIgnoreCase("ok") && message != null) {
                                out.println(Alert.getMessage());
                            } else {
                            }
                        %>
                        <button type="button" id="signInBtn" class="btn btn-primary px-4">Sign in</button>
                    </form>

                    <div class="login-footer">
                        <i class='bx bx-copyright'></i> copyright 2022. all rights reserved.
                    </div>
                </div>
            </div>
        </div>

        <!--include footer-->
        <%@include file="footer.jsp" %>
        <script>
            $("#signInBtn").click(function () {
                $(".parsley-errors-list").hide();
                let userName = $("#userName").val().trim();
                let userPass = $("#userPass").val().trim();
                if (userName == '') {
                    showMSG("userName", "Username Required");
                } else if (userPass == '') {
                    showMSG("userPass", "Password Required");
                } else {
                    $("#signForm").submit();
                }
            });
        </script>
    </body>

</html>