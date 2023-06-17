<%@page import="com.cart.utils.Alert"%>
<!-- include header -->
<%@include file="header.jsp" %>
<body>
    <section class="padding-y bg-light">
        <div class="container">
            <div class="row gy-4 d-flex justify-content-center">

                <aside class="col-lg-5 col-md-6">
                    <!-- ============= COMPONENT LOGIN 2 ============ -->
                    <div class="card">
                        <div class="card-body">
                            <a href="" class="navbar-brand d-flex justify-content-center">
                                <img class="logo img-fluid" height="40" src="assets/img/logo.png">
                            </a>
                            <h5 class="mb-4 text-center">Sign Up</h5>
                            <%
                                String message = (String) session.getAttribute("msg");
                                session.removeAttribute("msg");
//                                System.out.println(message);
                                if (message == null || message.isEmpty()) {

                                } else if (message.equalsIgnoreCase("err") && message != null) {
                                    out.println(Alert.getMessage());
                                } else if (message.equalsIgnoreCase("ok") && message != null) {
                                    out.println(Alert.getMessage());
                                } else {
                                }
                            %>
                            <form action="signUpUser" method="POST" id="signUpForm">
                                <p class="text-divider my-4"> Create an account </p>
                                <div class="input-group mb-3">
                                    <span class="input-group-text"><i class="fa-solid fa-envelope"></i> </span> 
                                    <input type="text" class="form-control" value="${user.username}" name="username" id="username" maxlength="25" placeholder="Username">

                                </div>
                                <div class="input-group mb-3">
                                    <span class="input-group-text"><i class="fa-solid fa-phone"></i> </span> 
                                    <input type="text" class="form-control only_no" value="${user.phoneNo}" name="phoneNo" id="phoneNo" placeholder="Phone No" maxlength="10" minlength="10"> 
                                </div> 
                                <div class="input-group mb-3">
                                    <span class="input-group-text"> <i class="fa fa-user"></i></span> 
                                    <input type="text" class="form-control only_alpha" value="${user.fullName}" name="fullName" id="fullName" maxlength="25" placeholder="Full Name"> 
                                </div><!-- input-group end.// -->
                                <div class="input-group mb-3"> 
                                    <span class="input-group-text"> <i class="fa fa-lock"></i>
                                    </span> <input type="password" class="form-control" name="password" id="password" maxlength="15" placeholder="Password"> 
                                </div> <!-- input-group end.// -->

                                <button class="btn btn-primary w-100" type="button" id="signUpBtn"> Sign Up </button>
                                <p class="mb-0 mt-4 text-center">Have an account <a href="login">Login</a></p>
                            </form> <!-- form end.// -->
                        </div> <!-- card-body end.// -->
                    </div> <!-- card end.// -->
                    <!-- ============= COMPONENT LOGIN 2 END.// ============== -->
                </aside> <!-- col end.// -->

            </div> <!-- row end.// --> <br><br>


        </div> <!-- container end.// -->
    </section>



    <!--    <section class="footer-bottom d-flex justify-content-lg-between border-top px-5">
            <div>
                <i class="fab fa-lg fa-cc-visa"></i>
                <i class="fab fa-lg fa-cc-amex"></i>
                <i class="fab fa-lg fa-cc-mastercard"></i>
                <i class="fab fa-lg fa-cc-paypal"></i>
            </div>
            <nav class="dropup">
                <button class="dropdown-toggle btn d-flex align-items-center py-0" type="button" data-bs-toggle="dropdown">
                    <img src="images/flags/flag-usa.png" class="me-2" height="20">
                    <span>English</span>
                </button>
                <ul class="dropdown-menu dropdown-menu-end">
                    <li><a class="dropdown-item" href="#">Russian</a></li>
                    <li><a class="dropdown-item" href="#">Arabic</a></li>
                    <li><a class="dropdown-item" href="#">Spanish</a></li>
                </ul>
            </nav>
    
        </section>-->

    <!-- include footer-->
    <%@include file="footer.jsp" %>


    <script>
        $('#signUpBtn').click(function () {
            $(".parsley-errors-list").hide();
            let userName = $("#username").val().trim();
            let userPass = $("#password").val().trim();
            let phoneNo = $("#phoneNo").val().trim();
            let fullName = $("#fullName").val().trim();


            if (userName == '') {
                showMSG("username", "Username Required");
                return false;
            }

            if (phoneNo == '') {
                showMSG("phoneNo", "Password Required");
                return false;
            }
            if (fullName == '') {
                showMSG("fullName", "Name Required");
                return false;
            }
            if (userPass == '') {
                showMSG("password", "Password Required");
                return false;
            }
            $("#signUpForm").submit();
        });
    </script>

</body>

</html>