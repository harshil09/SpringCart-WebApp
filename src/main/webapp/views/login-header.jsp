<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header class="section-header">
    <section class="header-main">
        <div class="container">
            <div class="row gy-3 align-items-center">
                <div class="col-lg-2 col-sm-4 col-4">
                    <a href="" class="navbar-brand">
                        <img class="logo img-fluid" height="40" src="assets/img/logo.png" >
                    </a> <!-- brand end.// -->
                </div>
                <div class="order-lg-last col-lg-3 col-sm-8 col-8">
                    <div class="float-end">
                        <c:if test="${empty username}">
                            <a href="signup" class="btn btn-light">
                                <i class="fa fa-user"></i> <span class="ms-1 d-none d-sm-inline-block">Sign Up </span>
                            </a>
                            <a href="login" class="btn btn-light">
                                <i class="fa-solid fa-right-to-bracket"></i><span class="ms-1 d-none d-sm-inline-block">Login</span>
                            </a>
                        </c:if>
                        <c:if test="${pageName !='cart'}">
                            <!--<div id="cartDiv" style="display: none;">-->
                            <a href="cart" class="btn btn-light" id="cartDiv" style="display: none;">
                                <i class="fa fa-shopping-cart"></i> <span class="ms-1"></span>
                            </a>
                            <!--</div>-->
                        </c:if>

                        <c:if test="${not empty username}">
                            <!--                            <a href="logout" class="btn btn-light">
                                                           <i class="fa-solid fa-right-to-bracket"></i><span class="ms-1">Logout</span>
                                                        </a>-->

                            <div class="d-inline-flex align-middle dropdown">
                                <a
                                    class="btn btn-primary show" type="button" id="dropdownMenu2"
                                    data-bs-toggle="dropdown" aria-expanded="true"><i class="fa-solid fa-user"></i>  </a>
                                <nav class="dropdown-menu dropdown-menu-end show" aria-labelledby="dropdownMenu2"
                                     data-popper-placement="top-end"
                                     style="position: absolute; inset: auto 0px 0px auto; margin: 0px; transform: translate(0px, -42px);">
                                    <a class="dropdown-item" href="order-list">Order History</a> 
                                    <!--                                    <a class="dropdown-item" href="profile">User Profile</a> -->
                                    <a class="dropdown-item" href="logout">Log Out</a> </nav>
                            </div>

                            <a class="ml-4" style="margin-left: 14px;">Balance : &#163;${bankBalance}</a>


                        </c:if>
                    </div>
                </div> <!-- col end.// -->

                <div class="col-lg-7 col-md-12 col-12">
                    <c:if test="${pageName eq 'index'}">
                        <form action="index" method="GET">
                            <div class="input-group">
                                <select class="form-select" disabled>
                                    <option value="">All type</option>
                                    <!--                                    <option value="codex">Special</option>
                                                                        <option value="comments">Only best</option>
                                                                        <option value="content">Latest</option>-->
                                </select>
                                <input type="search" name="search" value="${search}" class="form-control" style="width:55%" placeholder="Search">
                                <button class="btn btn-primary" type="submit">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div> <!-- input-group end.// -->
                        </form>
                    </c:if>
                </div> <!-- col end.// -->

            </div> <!-- row end.// -->
        </div> <!-- container end.// -->
    </section> <!-- header-main end.// -->
</header> <!-- section-header end.// -->
<hr>