<!-- include header -->
<%@include file="header.jsp" %>

<body>
    <header class="section-header">
        <section class="header-main">
            <div class="container">
                <div class="row gy-3 align-items-center">
                    <div class="col-lg-2 col-sm-4 col-4">
                        <a href="" class="navbar-brand">
                            <img class="logo img-fluid" height="40" src="img/logo.png">
                        </a> <!-- brand end.// -->
                    </div>
                    <div class="order-lg-last col-lg-3 col-sm-8 col-8">
                        <div class="float-end">
                            <a href="#" class="btn btn-light">
                                <i class="fa fa-user"></i> <span class="ms-1 d-none d-sm-inline-block">Sign in </span>
                            </a>
                            <a href="#" class="btn btn-light">
                                <i class="fa-solid fa-right-to-bracket"></i><span class="ms-1 d-none d-sm-inline-block">Login</span>
                            </a>
                            <a data-bs-toggle="offcanvas" href="#offcanvas_cart" class="btn btn-light">
                                <i class="fa fa-shopping-cart"></i> <span class="ms-1"></span>
                            </a>
                        </div>
                    </div> <!-- col end.// -->
                    <div class="col-lg-7 col-md-12 col-12">
                        <form action="#" class="">
                            <div class="input-group">

                                <select class="form-select">
                                    <option value="">All type</option>
                                    <option value="codex">Special</option>
                                    <option value="comments">Only best</option>
                                    <option value="content">Latest</option>
                                </select>
                                <input type="search" class="form-control" style="width:55%" placeholder="Search">
                                <button class="btn btn-primary">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div> <!-- input-group end.// -->
                        </form>
                    </div> <!-- col end.// -->

                </div> <!-- row end.// -->
            </div> <!-- container end.// -->
        </section> <!-- header-main end.// -->

        <nav class="navbar navbar-light bg-white border-top navbar-expand-lg">
            <div class="container">
                <button class="navbar-toggler border" type="button" data-bs-toggle="collapse"
                        data-bs-target="#navbar_main">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbar_main">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link ps-0" href="#"> Categories </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Hot offers</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Gift boxes</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Projects</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Menu item</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Menu name</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="dropdown-toggle nav-link" href="#" data-bs-toggle="dropdown">
                                Others
                            </a>
                            <ul class="dropdown-menu">
                                <li> <a class="dropdown-item" href="#">Submenu one </a> </li>
                                <li> <a class="dropdown-item" href="#">Submenu two</a> </li>
                                <li> <a class="dropdown-item" href="#">Submenu three</a> </li>
                            </ul>
                        </li>
                    </ul>
                </div> <!-- collapse end.// -->
            </div> <!-- container end.// -->
        </nav> <!-- navbar end.// -->
    </header> <!-- section-header end.// -->

    <!-- ================ SECTION INTRO ================ -->
    <section class="section-intro  padding-y-lg">
        <div class="container">

            <article class="my-5">
                <h1 class="display-4 text-white"> Best products & <br> brands in our store </h1>
                <p class="lead text-white">Trendy Products, Factory Prices, Excellent Service</p>
                <a href="#" class="btn btn-warning"> Purchase now</a>
                <a href="#" class="btn btn-light"> Learn more </a>
            </article>

        </div> <!-- container end.// -->
    </section>
    <!-- ================ SECTION INTRO END.// ================ -->

    <!-- ================ SECTION PRODUCTS ================ -->
    <section class="padding-y bg-white shadow-sm">
        <div class="container">
            <header class="section-heading">
                <h3 class="section-title">Products Details</h3>
            </header>
            <div class="row">
                <aside class="col-lg-6">
                    <article class="gallery-wrap">
                        <div class="img-big-wrap img-thumbnail"> <a href="#"> <img height="520" src="img/4.jpg"> </a>
                        </div>
                        <!-- img-big-wrap.// -->
                        <div class="thumbs-wrap"> <a href="#" class="item-thumb"> <img width="60" height="60"
                                                                                       src="img/4.jpg"> </a> <a href="#" class="item-thumb"> <img width="60" height="60"
                                                                                       src="img/4.jpg"> </a> <a href="#" class="item-thumb"> <img width="60" height="60"
                                                                                       src="img/4.jpg"> </a> <a href="#" class="item-thumb"> <img width="60" height="60"
                                                                                       src="img/4.jpg"> </a> <a href="#" class="item-thumb"> <img width="60" height="60"
                                                                                       src="img/4.jpg"> </a> </div>
                        <!-- thumbs-wrap.// -->
                    </article> <!-- gallery-wrap .end// -->
                </aside>
                <div class="col-lg-6">
                    <article class="ps-lg-3">
                        <h4 class="title text-dark">Apple iPhone 13 Pro max 7.1" RAM 6GB 512GB <br>Global RAM 6GB 512GB
                            Global</h4>
                        <div class="rating-wrap my-3">
                            <ul class="rating-stars">
                                <li style="width:80%" class="stars-active"> <img src="img/stars-active.svg" alt="">
                                </li>
                                <li> <img height="520" src="img/starts-disable.svg" alt="">
                                </li>
                            </ul> <b class="label-rating text-warning"> 4.5</b> <i class="dot"></i> <span
                                class="label-rating text-muted"> <i class="fa fa-shopping-basket"></i> 154 orders
                            </span> <i class="dot"></i> <span class="label-rating text-success">Verified</span>
                        </div> <!-- rating-wrap.// -->

                        <div class="mb-3"> <var class="price h5">$815.00</var> <span class="text-muted">/per kg</span>
                        </div>
                        <p>Made of pure cotton Off-White is a streetwear-inspired collection that continues to break
                            away from the conventions of divstream fashion. Made in Italy, these black and brown
                            Odsy-1000 low-top sneakers.</p>
                        <dl class="row">
                            <dt class="col-3">Model#</dt>
                            <dd class="col-9">Hugo Boss</dd>
                            <dt class="col-3">Color</dt>
                            <dd class="col-9">Brown</dd>
                            <dt class="col-3">Material</dt>
                            <dd class="col-9">Cotton, Jeans </dd>
                            <dt class="col-3">Delivery</dt>
                            <dd class="col-9">Russia, USA, and Europe </dd>
                        </dl>
                        <hr>
                        <div class="row">
                            <div class="mb-4">
                                <div class="text-muted mb-2">Select color: </div>
                                <div> <label class="checkbox-btn"> <input type="radio" checked="" name="choose_55">
                                        <span class="btn btn-light"> Blue </span> </label> <label class="checkbox-btn">
                                        <input type="radio" name="choose_55"> <span class="btn btn-light"> Green </span>
                                    </label> <label class="checkbox-btn"> <input type="radio" name="choose_55"> <span
                                            class="btn btn-light"> Purple </span> </label> <label class="checkbox-btn">
                                        <input type="radio" name="choose_55"> <span class="btn btn-light"> Brown </span>
                                    </label> </div>
                            </div>
                            <ul class="list-dots mb-4">
                                <li> Materials: Leather </li>
                                <li> Size: 23 inch x 31 inch </li>
                                <li> Weight: 1200 gramm </li>
                                <li> Color: Brown </li>
                            </ul>
                        </div> <!-- row.// -->
                        <div class="input-group mb-3" style="max-width:140px"> <button class="btn btn-icon btn-light"
                                                                                       type="button"> <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
                                                fill="#999" viewBox="0 0 24 24">
                                <path d="M19 13H5v-2h14v2z"></path>
                                </svg> </button> <input class="form-control text-center" readonly="" placeholder=""
                                                    value="14"> <button class="btn btn-icon btn-light" type="button"> <svg
                                    xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#999"
                                    viewBox="0 0 24 24">
                                <path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"></path>
                                </svg> </button> </div>
                        <a href="#" class="btn btn-warning"> Buy now </a>
                        <a href="#" class="btn btn-primary">
                            <i class="me-2 fa fa-shopping-basket"></i> Add to cart </a> <a href="#"
                                                                                       class="btn btn-light"> <i class="me-2 fa fa-heart"></i> Save </a>
                    </article> <!-- product-info-aside .// -->
                </div> <!-- col.// -->
            </div> <!-- row.// -->
        </div> <!-- container .// -->
    </section>
    <section class="padding-y bg-light">
        <div class="container">
            <div class="row">
                <div class="col-lg-8">
                    <!-- =================== COMPONENT REVIEW ====================== -->
                    <div class="card mb-4">
                        <div class="card-body">
                            <h5 class="card-title">Reviews </h5>
                            <hr>
                            <blockquote class="border-bottom">
                                <div class="float-lg-end d-flex mb-3">
                                    <div class="btn-group d-inline-flex me-2"> <button
                                            class="btn btn-light btn-sm float-end" data-bs-toggle="tooltip"
                                            data-bs-title="Like"> <i class="fa fa-thumbs-up"></i> </button> <button
                                            class="btn btn-light btn-sm float-end" data-bs-toggle="tooltip"
                                            data-bs-title="Dislike"> <i class="fa fa-thumbs-down"></i> </button> </div>
                                    <button class="btn btn-light btn-sm float-end "> <i class="fa fa-ellipsis-v"></i>
                                    </button>
                                </div>
                                <div class="icontext"> <img src="img/avatar.jpg"
                                                            class="img-xs icon rounded-circle">
                                    <div class="text">
                                        <h6 class="mb-0"> Michael Jonathan </h6>
                                        <div class="rating-wrap">
                                            <ul class="rating-stars">
                                                <li style="width:80%" class="stars-active"> <img
                                                        src="bootstrap5-ecommerce/images/misc/stars-active.svg" alt="">
                                                </li>
                                                <li> <img src="bootstrap5-ecommerce/images/misc/starts-disable.svg"
                                                          alt=""> </li>
                                            </ul> <b class="dot"></b> <small class="label-rating text-muted"> Purchased
                                                on Wed, May 12 </small>
                                        </div>
                                    </div>
                                </div> <!-- icontext.// -->
                                <div class="mt-3">
                                    <p> It used to be great, finding almost every song, but now i dont know what
                                        happened (they might be hacked even) that it can not find any song and it just
                                        makes up a different song to thats all and all the best Lorem ipsum dolor sit
                                        amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore
                                        et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                                        ullamco laboris nisi </p>
                                </div>
                            </blockquote>
                            <blockquote class="border-bottom">
                                <div class="float-lg-end d-flex mb-3">
                                    <div class="btn-group d-inline-flex me-2"> <button
                                            class="btn btn-light btn-sm float-end" data-bs-toggle="tooltip"
                                            data-bs-title="Like"> <i class="fa fa-thumbs-up"></i> </button> <button
                                            class="btn btn-light btn-sm float-end" data-bs-toggle="tooltip"
                                            data-bs-title="Dislike"> <i class="fa fa-thumbs-down"></i> </button> </div>
                                    <button class="btn btn-light btn-sm float-end "> <i class="fa fa-ellipsis-v"></i>
                                    </button>
                                </div>
                                <div class="icontext"> <img src="img/avatar.jpg"
                                                            class="img-xs icon rounded-circle">
                                    <div class="text">
                                        <h6 class="mb-0"> Michael Jonathan </h6>
                                        <div class="rating-wrap">
                                            <ul class="rating-stars">
                                                <li style="width:80%" class="stars-active"> <img
                                                        src="bootstrap5-ecommerce/images/misc/stars-active.svg" alt="">
                                                </li>
                                                <li> <img src="bootstrap5-ecommerce/images/misc/starts-disable.svg"
                                                          alt=""> </li>
                                            </ul> <b class="dot"></b> <small class="label-rating text-muted"> Purchased
                                                on Wed, May 12 </small>
                                        </div>
                                    </div>
                                </div> <!-- icontext.// -->
                                <div class="mt-3">
                                    <p> It used to be great, finding almost every song, but now i dont know what
                                        happened (they might be hacked even) that it can not find any song and it just
                                        makes up a different song to thats all and all the best Just makes up a
                                        different song to thats all and all the best </p>
                                </div>
                            </blockquote>
                            <blockquote class="border-bottom">
                                <div class="float-lg-end d-flex mb-3">
                                    <div class="btn-group d-inline-flex me-2"> <button
                                            class="btn btn-light btn-sm float-end" data-bs-toggle="tooltip"
                                            data-bs-title="Like"> <i class="fa fa-thumbs-up"></i> </button> <button
                                            class="btn btn-light btn-sm float-end" data-bs-toggle="tooltip"
                                            data-bs-title="Dislike"> <i class="fa fa-thumbs-down"></i> </button> </div>
                                    <button class="btn btn-light btn-sm float-end "> <i class="fa fa-ellipsis-v"></i>
                                    </button>
                                </div>
                                <div class="icontext"> <img src="img/avatar.jpg"
                                                            class="img-xs icon rounded-circle">
                                    <div class="text">
                                        <h6 class="mb-0"> John Alex </h6>
                                        <div class="rating-wrap">
                                            <ul class="rating-stars">
                                                <li style="width:80%" class="stars-active"> <img
                                                        src="bootstrap5-ecommerce/images/misc/stars-active.svg" alt="">
                                                </li>
                                                <li> <img src="bootstrap5-ecommerce/images/misc/starts-disable.svg"
                                                          alt=""> </li>
                                            </ul> <b class="dot"></b> <small class="label-rating text-muted"> Purchased
                                                on Wed, Apr 30 </small>
                                        </div>
                                    </div>
                                </div> <!-- icontext.// -->
                                <div class="mt-3">
                                    <p> It used to be great, finding almost every song, but now i dont know what
                                        happened (they might be hacked even) that it can not find any song and it just
                                        makes up a different song to thats all and all the best It used to be great,
                                        finding almost every song, but now i dont know what happened (they might be
                                        hacked even) </p>
                                </div>
                            </blockquote>
                        </div>
                    </div><!-- =================== COMPONENT REVIEW .// ================== -->
                    <!-- =================== COMPONENT REVIEW ====================== -->
                    <div class="card">
                        <div class="card-body">
                            <h5 class="card-title">Message to seller </h5>
                            <form>
                                <div class="mb-3"> <textarea class="form-control" placeholder="Type here"></textarea>
                                </div>
                                <div class="row mb-3 gy-2 gx-3 align-items-center">
                                    <div class="col-lg-3"> <select class="form-select">
                                            <option selected=""> Quantity </option>
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                        </select> </div>
                                    <div class="col-lg-3"> <select class="form-select">
                                            <option selected=""> Boxes </option>
                                            <option value="#">Backages</option>
                                            <option value="#">Litres</option>
                                            <option value="#">Tonns</option>
                                        </select> </div>
                                    <div class="col-auto"> <label class="form-check"> <input class="form-check-input"
                                                                                             type="checkbox"> <span class="form-check-label"> I agree with terms
                                            </span> </label> </div>
                                </div> <button type="submit" class="btn btn-primary">Submit request</button>
                            </form>
                        </div>
                    </div><!-- =================== COMPONENT REVIEW .// ================== -->
                </div> <!-- col.// -->
                <div class="col-lg-4">
                    <!-- =================== COMPONENT SELLER ====================== -->
                    <article class="card">
                        <div class="card-body"> <a href="#" class="btn w-100 btn-primary-light">Write review</a>
                            <div class="rating-wrap mt-3">
                                <ul class="rating-stars stars-lg">
                                    <li style="width:80%" class="stars-active"> <img
                                            src="bootstrap5-ecommerce/images/misc/stars-active.svg" alt=""> </li>
                                    <li> <img height="520" src="bootstrap5-ecommerce/images/misc/starts-disable.svg"
                                              alt=""> </li>
                                </ul> <b class="label-rating text-lg"> 4.6 out of 5 </b>
                            </div> <!-- rating-wrap.// -->
                            <p class="mt-1 text-muted"> 320 reviews </p>
                            <table class="table table-borderless table-sm">
                                <tbody>
                                    <tr valign="middle">
                                        <td width="50"> 5 star </td>
                                        <td>
                                            <div class="progress" style="height: 10px;">
                                                <div class="progress-bar bg-warning" role="progressbar"
                                                     style="width: 95%;" aria-valuenow="25" aria-valuemax="100"></div>
                                            </div> <!-- progress .// -->
                                        </td>
                                        <td width="50"> 95 % </td>
                                    </tr>
                                    <tr valign="middle">
                                        <td> 4 star </td>
                                        <td>
                                            <div class="progress" style="height: 10px;">
                                                <div class="progress-bar bg-warning" role="progressbar"
                                                     style="width: 80%;" aria-valuenow="80" aria-valuemax="100"></div>
                                            </div> <!-- progress .// -->
                                        </td>
                                        <td> 80 % </td>
                                    </tr>
                                    <tr valign="middle">
                                        <td> 3 star </td>
                                        <td>
                                            <div class="progress" style="height: 10px;">
                                                <div class="progress-bar bg-warning" role="progressbar"
                                                     style="width: 35%;" aria-valuenow="35" aria-valuemax="100"></div>
                                            </div> <!-- progress .// -->
                                        </td>
                                        <td> 35 % </td>
                                    </tr>
                                    <tr valign="middle">
                                        <td> 2 star </td>
                                        <td>
                                            <div class="progress" style="height: 10px;">
                                                <div class="progress-bar bg-warning" role="progressbar"
                                                     style="width: 13%;" aria-valuenow="13" aria-valuemax="100"></div>
                                            </div> <!-- progress .// -->
                                        </td>
                                        <td> 13 % </td>
                                    </tr>
                                    <tr valign="middle">
                                        <td> 1 star </td>
                                        <td>
                                            <div class="progress" style="height: 10px;">
                                                <div class="progress-bar bg-warning" role="progressbar"
                                                     style="width:15%;" aria-valuenow="5" aria-valuemax="100"></div>
                                            </div> <!-- progress .// -->
                                        </td>
                                        <td> 15 % </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </article><!-- =================== COMPONENT SELLER .// ================== -->
                </div> <!-- col.// -->
            </div> <!-- row .// -->
        </div> <!-- container .// -->
    </section>
    <!-- ================ SECTION PRODUCTS END.// ================ -->



    <footer class="section-footer bg-gray-light">
        <div class="container">
            <section class="footer-main padding-y">
                <div class="row">
                    <aside class="col-12 col-sm-12 col-lg-3">
                        <article class="me-lg-4">
                            <img src="img/logo.png" class="logo-footer img-fluid">
                            <p class="mt-3"> © 2018- 2021 Templatemount. <br> All rights reserved. </p>
                        </article>
                    </aside>
                    <aside class="col-6 col-sm-4 col-lg-2">
                        <h6 class="title">Store</h6>
                        <ul class="list-menu mb-4">
                            <li> <a href="#">About us</a></li>
                            <li> <a href="#">Find store</a></li>
                            <li> <a href="#">Categories</a></li>
                            <li> <a href="#">Blogs</a></li>
                        </ul>
                    </aside>
                    <aside class="col-6 col-sm-4 col-lg-2">
                        <h6 class="title">Information</h6>
                        <ul class="list-menu mb-4">
                            <li> <a href="#">Help center</a></li>
                            <li> <a href="#">Money refund</a></li>
                            <li> <a href="#">Shipping info</a></li>
                            <li> <a href="#">Refunds</a></li>
                        </ul>
                    </aside>
                    <aside class="col-6 col-sm-4  col-lg-2">
                        <h6 class="title">Support</h6>
                        <ul class="list-menu mb-4">
                            <li> <a href="#"> Help center </a></li>
                            <li> <a href="#"> Documents </a></li>
                            <li> <a href="#"> Account restore </a></li>
                            <li> <a href="#"> My Orders </a></li>
                        </ul>
                    </aside>
                    <aside class="col-12 col-sm-12 col-lg-3">
                        <h6 class="title">Newsletter</h6>
                        <p>Stay in touch with latest updates about our products and offers </p>

                        <form class="mb-3">
                            <div class="input-group">
                                <input class="form-control" type="text" placeholder="Email">
                                <button class="btn btn-light" type="submit">
                                    Join
                                </button>
                            </div> <!-- input-group.// -->
                        </form>
                    </aside>
                </div> <!-- row.// -->
            </section> <!-- footer-top.// -->

            <section class="footer-bottom d-flex justify-content-lg-between border-top">
                <div>
                    <i class="fab fa-lg fa-cc-visa"></i>
                    <i class="fab fa-lg fa-cc-amex"></i>
                    <i class="fab fa-lg fa-cc-mastercard"></i>
                    <i class="fab fa-lg fa-cc-paypal"></i>
                </div>
                <nav class="dropup">
                    <button class="dropdown-toggle btn d-flex align-items-center py-0" type="button"
                            data-bs-toggle="dropdown">
                        <img src="images/flags/flag-usa.png" class="me-2" height="20">
                        <span>English</span>
                    </button>
                    <!--  -->
                </nav>

            </section>
        </div> <!-- container end.// -->
    </footer>

    <!-- include footer-->
    <%@include file="footer.jsp" %>
</body>

</html>