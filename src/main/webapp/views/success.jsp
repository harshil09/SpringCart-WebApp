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
                <h3 class="section-title">Your Order</h3>
            </header>
            <!-- <div class="card"> -->
            <div class="row">
                <div class="col-lg-8">
                    <!-- ============== COMPONENT FINAL =============== -->
                    <article class="card">
                        <div class="card-body">
                            <div class="mt-4 mx-auto text-center" style="max-width:600px"> <svg width="96px"
                                    height="96px" viewBox="0 0 96 96" version="1.1" xmlns="http://www.w3.org/2000/svg"
                                    xmlns:xlink="http://www.w3.org/1999/xlink">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <g id="round-check">
                                            <circle id="Oval" fill="#D3FFD9" cx="48" cy="48" r="48"></circle>
                                            <circle id="Oval-Copy" fill="#87FF96" cx="48" cy="48" r="36"></circle>
                                            <polyline id="Line" stroke="#04B800" stroke-width="4" stroke-linecap="round"
                                                points="34.188562 49.6867496 44 59.3734993 63.1968462 40.3594229">
                                            </polyline>
                                        </g>
                                    </g>
                                </svg>
                                <div class="my-3">
                                    <h4>Thank you for order</h4>
                                    <h5> Order Id - <span class="font-weight-bold">${orderId}</span></h5>
<!--                                    <p>Some information will be written here, bla bla lorem ipsum you enter into any new
                                        area of science, you almost always find yourself</p>-->
                                </div>
                            </div>
                            <ul class="steps-wrap mx-auto" style="max-width: 600px">
                                <li class="step active"> <span class="icon">1</span> <span class="text">Order
                                        received</span> </li> <!-- step.// -->
                                <li class="step "> <span class="icon">2</span> <span class="text">Confirmation</span>
                                </li> <!-- step.// -->
                                <li class="step "> <span class="icon">3</span> <span class="text">Delivery</span> </li>
                                <!-- step.// -->
                            </ul> <!-- tracking-wrap.// --> <br>
                        </div>
                    </article><!-- ============== COMPONENT FINAL .// =============== -->
                </div> <!-- col.// -->
                
            </div>
            <!-- </div> -->
        </div>

    </section>

    


   <!-- include login-footer-->
    <%@include file="login-footer.jsp" %>

    <!-- include footer-->
    <%@include file="footer.jsp" %>
</body>

</html>