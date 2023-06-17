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

        <div class="container mt-5">
            <div class="row">
                <aside class="col-lg-3">
                    <!-- COMPONENT MENU LIST -->
                    <div class="card p-3 h-100">
                        <nav class="nav flex-column nav-pills"> 
                            <a class="nav-link active" href="order-list">Orders history</a>
                            <a class="nav-link" href="profile">Profile setting</a>
                            <a class="nav-link" href="logout">Logout</a>
                        </nav>
                    </div> <!-- COMPONENT MENU LIST END .// -->
                </aside>
                <div class="col-lg-9">
                   
                    <c:forEach items="${orderMap}" var="itemMap" varStatus="loop">
                         <c:set var="total" value="${0}"/>
                        <article class="card mb-3">
                            <div class="card-body">
                                <header class="d-md-flex">
                                    <div class="flex-grow-1">
                                        <h6 class="mb-0"> Order ID: ${itemMap.key}</h6> 
                                        <span>Date: ${fn:substring(itemMap.value.get(0).creationDate,0,16)}</span>
                                    </div>
                                </header>
                                
                                <hr>
                                <ul class="row">
                                    <c:forEach items="${itemMap.value}" var="item">
                                         <c:set var="total" value="${total + item.total}" />
                                        <li class="col-lg-4 col-md-6">
                                            <div class="itemside mb-3">
                                                <div class="aside"> 
                                                    <img width="72" height="72" src="${item.imgPath}" class="img-sm rounded border"> 
                                                </div>
                                                <div class="info">
                                                    <p class="title">${item.productName}</p> 
                                                    <strong>&#163;${item.price} x ${item.quantity} = &#163;${item.total} </strong>
                                                </div>
                                            </div>
                                        </li>
                                    </c:forEach>
                                </ul>
                                <hr>
                                <div class="row">
<!--                                    <div class="col-md-4">
                                        <p class="mb-0 text-muted">Contact</p>
                                        <p class="m-0"> Alex Donald <br> Phone: 109-295-9131 <br> Email: info@mywebsite.com
                                        </p>
                                    </div>  col.// 
                                    <div class="col-md-4 border-start">
                                        <p class="mb-0 text-muted">Shipping address</p>
                                        <p class="m-0"> United States <br> 600 Markley Street, Suite 170777 Port Reading, NJ
                                            07064 </p>
                                    </div>  col.// -->
                                    <div class="col-md-4 border-start">
                                        <p class="mb-0 text-muted">Payment</p>
                                        <p class="m-0"> 
                                            <!--<span class="text-success"> Visa **** 0932 </span>-->
                                            <!--<br> Shipping fee: $12--> 
                                            <br> 
                                            Total paid: &#163;${total} </p>
                                    </div> <!-- col.// -->
                                </div> <!-- row.// -->
                            </div> <!-- card-body .// -->
                        </article> <!-- card .// -->
                    </c:forEach>
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