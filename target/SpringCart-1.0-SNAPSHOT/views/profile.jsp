<!-- include header -->
<%@include file="header.jsp" %>

<body>

    <!-- include login-header -->
    <%@include file="login-header.jsp" %>

    <!-- ================ SECTION INTRO ================ -->
    <section class="section-intro  padding-y-lg">
        <div class="container">

            <article class="my-5">
                <h1 class="display-4 text-white"> Best products & <br> brands in our store </h1>
                <p class="lead text-white">Trendy Products, Factory Prices, Excellent Service</p>
            </article>

        </div> <!-- container end.// -->
    </section>
    <!-- ================ SECTION INTRO END.// ================ -->

    <!-- ================ SECTION PRODUCTS ================ -->
    <section class="padding-y bg-white shadow-sm">
        <div class="container">
            <header class="section-heading">
                <h3 class="section-title">Manage Profile</h3>
            </header>
            <!-- <div class="card"> -->
            <div class="row">
                <aside class="col-lg-3">
                    <!-- COMPONENT MENU LIST -->
                    <div class="card p-3 h-100">
                        <nav class="nav flex-column nav-pills"> 
                            <a class="nav-link" href="order-list">Orders history</a>
                            <a class="nav-link active" href="profile">Profile setting</a>
                            <a class="nav-link" href="logout">Logout</a>
                        </nav>
                    </div> <!-- COMPONENT MENU LIST END .// -->
                </aside>
                <div class="col-lg-9">
                    <article class="card">
                        <div class="card-body">
                            <form>
                                <div class="row">
                                    <div class="col-lg-8">
                                        <div class="row gx-3">
                                            <div class="col-6 mb-3">
                                                <label class="form-label">Name</label> 
                                                <input value="${user.fullName}" class="form-control" type="text" placeholder="Type here" readonly>
                                            </div>
                                            <!-- col .// -->

                                            <div class="col-lg-6 col-md-6 mb-3"> <label class="form-label">Username</label>
                                                <input class="form-control" value="${user.username}" type="email" placeholder="example@mail.com" readonly>
                                            </div> <!-- col .// -->
                                            <div class="col-lg-6 col-md-6 mb-3"> <label class="form-label">Phone</label>
                                                <input class="form-control" type="tel" value="${user.phoneNo}" placeholder="+1234567890" readonly> </div>
                                            <!-- col .// -->
                                            <!--                                            <div class="col-lg-12 ">
                                                                                            <div class="row">
                                                                                                <div class="col-sm-8 mb-3"> <label
                                                                                                        class="form-label">Address</label> <input type="text"
                                                                                                        class="form-control" placeholder="Type here"> </div>
                                                                                                 col end.// 
                                                                                                <div class="col-sm-4 mb-3"> <label class="form-label">City*</label>
                                                                                                    <select class="form-select" id="city" aria-label="City*">
                                                                                                        <option value="1">New York</option>
                                                                                                        <option value="2">Moscow</option>
                                                                                                        <option value="3">Samarqand</option>
                                                                                                    </select> </div>  col end.// 
                                                                                                <div class="col-sm-4 col-6 mb-3"> <label
                                                                                                        class="form-label">House</label> <input type="text"
                                                                                                        class="form-control" placeholder="Type here"> </div>
                                                                                                 col end.// 
                                                                                                <div class="col-sm-4 col-6 mb-3"> <label class="form-label">Postal
                                                                                                        code</label> <input type="text" class="form-control"
                                                                                                                        placeholder=""> </div>  col end.// 
                                                                                                <div class="col-sm-4 col-6 mb-3"> <label
                                                                                                        class="form-label">Zip</label> <input type="text"
                                                                                                        class="form-control" placeholder=""> </div>
                                                                                                 col end.// 
                                                                                            </div>
                                            
                                                                                        </div>-->
                                            <!-- col .// -->
                                           
                                    </div> <!-- col.// -->
                                    <!--                                    <aside class="col-lg-4">
                                                                            <div class="text-lg-center mt-3"> <img class="img-lg mb-3 img-avatar"
                                                                                                                   src="assets/img/avatar.jpg" alt="User Photo">
                                                                                <div> <a class="btn btn-sm btn-light" href="#"> <i class="fa fa-camera"></i>
                                                                                        Upload </a> <a class="btn btn-sm btn-outline-danger" href="#"> <i
                                                                                            class="fa fa-trash"></i> </a> </div>
                                                                            </div>
                                                                        </aside>  col.// -->
                                </div> <!-- row.// --> <br> 
                                
                            </form>
                            <hr class="my-4">
                            <!--                            <div class="row" style="max-width:920px">
                                                            <div class="col-md">
                                                                <article class="box mb-3 bg-light"> <a class="btn float-end btn-light btn-sm"
                                                                                                       href="#">Change</a>
                                                                    <p class="title mb-0">Password</p> <small class="text-muted d-block"
                                                                                                              style="width:70%">You can reset or change your password by clicking
                                                                        here</small>
                                                                </article>
                                                            </div>  col.// 
                                                            <div class="col-md">
                                                                <article class="box mb-3 bg-light"> <a
                                                                        class="btn float-end btn-outline-danger btn-sm" href="#">Deactivate</a>
                                                                    <p class="title mb-0">Remove account</p> <small class="text-muted d-block"
                                                                                                                    style="width:70%">Once you delete your account, there is no going
                                                                        back.</small>
                                                                </article>
                                                            </div>  col.// 
                                                        </div>  row.// -->
                        </div> <!-- card-body .// -->
                    </article> <!-- card .// -->
                </div>
            </div>
            <!-- </div> -->
        </div> <!-- container .// -->
    </section>

    <!-- include login-footer-->
    <%@include file="login-footer.jsp" %>

    <!-- include footer-->
    <%@include file="footer.jsp" %>

</body>

</html>