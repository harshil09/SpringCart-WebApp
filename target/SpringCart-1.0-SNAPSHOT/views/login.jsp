<%@page import="com.cart.utils.GlobalConfig"%>
<%@page import="com.cart.utils.Alert"%>
<!-- include header -->
<%@include file="header.jsp" %>
<%
 String pk = GlobalConfig.encKey;
%>
<body>
    <section class="padding-y bg-light">
        <div class="container">
            <div class="row gy-4 d-flex justify-content-center">

                <aside class="col-lg-5 col-md-6">
                    <!-- ============= COMPONENT LOGIN 2 ============ -->
                    <div class="card">
                        <div class="card-body">
                            <a href="" class="navbar-brand d-flex justify-content-center">
                                <img class="logo img-fluid" height="40" src="assets/img/logo.png" >
                            </a>
                            <h5 class="mb-4 text-center">Login</h5>
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
                            <form action="validateUser" method="POST" id="signForm" autocomplete="off">
                                <p class="text-divider my-4"> Login with username </p>
                                <div class="input-group mb-3"> 
                                    <span class="input-group-text"><i class="fa fa-user"></i></span>
                                    <input type="text" class="form-control" value="${user.username}" name="username" maxlength="25" id="username" placeholder="Username" /> 
                                </div> <!-- input-group end.// -->
                                <div class="input-group mb-3"> 
                                    <span class="input-group-text"> <i class="fa fa-lock"></i> </span> 
                                    <input type="password" class="form-control" name="password" maxlength="15" id="password" placeholder="Password"> 
                                </div> <!-- input-group end.// -->
                                <button class="btn btn-primary w-100" id="signInBtn" type="button"> Sign in </button>
                                <!--                                <a href="index" class="btn btn-primary w-100" type="button"> Login </a>-->

                                <p class="mb-0 mt-4 text-center">Don't have an account? <a href="signup">Sign Up</a></p>
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
                <button class="dropdown-toggle btn d-flex align-items-center py-0" type="button"
                        data-bs-togglde="dropdown">
                    <img src="assets/images/flags/flag-usa.png" class="me-2" height="20">
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
        $("#signInBtn").click(function () {
            $(".parsley-errors-list").hide();
            let userName = $("#username").val().trim();
            let userPass = $("#password").val().trim();
            if (userName == '') {
                showMSG("username", "Username Required");
                return false;
            }
            if (userPass == '') {
                showMSG("password", "Password Required");
                return false;
            }

            var enc_con = new JSEncrypt();
            var pk = '<%=pk%>';

            enc_con.setPublicKey(pk);
            var enc_data = enc_con.encrypt(userPass);
            $("#password").val(enc_data);
            $("#signForm").submit();
        });
    </script>
</body>
</html>