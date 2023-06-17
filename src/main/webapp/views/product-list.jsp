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
    <section class="padding-y">
        <div class="container">
            <header class="section-heading">
                <a href="add-product">Add product</a>
            </header>

            <div class="row">
                <c:forEach items="${productList}" var="item">
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="card card-product-grid">
                            <div class="img-wrap"> <img id="image_${item.id}" src="product_img/${item.id}/${item.imgs.get(0)}"> </div>
                            <div class="info-wrap"> <span class="text-warning">Bestseller</span>
                                <p class="title" id="productName_${item.id}" item-name="${item.name}">${item.name}</p>
                                <div class="rating-wrap">
                                    <ul class="rating-stars">
                                        <li class="stars-active" style="width: 90%;"> <img
                                                src="assets/img/stars-active.svg" alt=""> </li>
                                        <li> <img src="assets/img/starts-disable.svg" alt=""> </li>
                                    </ul> 
                                    <span class="label-rating text-warning">4.5</span>
                                </div>
                            </div>
                            <div class="bottom-wrap"> 
                                <div id="addToCartDiv_${item.id}">
                                    <a href="update-product?id=${item.id}" class="btn btn-sm btn-primary float-end"> Update </a>
                                </div>

                                <div class="price-wrap lh-sm"> 
                                    <strong class="price" id="price_${item.id}" price-tag="${item.price}"> &#163;${item.price} </strong> 
                                </div> <!-- price-wrap.// -->
                            </div> <!-- bottom-wrap.// -->
                        </div> <!-- card // -->
                    </div>
                </c:forEach>
                <c:if test="${empty productList}">
                    <div>
                        <h4 class="text-center">No result found</h4>
                        <p class="text-center">With keyword : <strong>${search}</strong></p>
                    </div>
                </c:if>
            </div> <!-- row end.// -->
            <footer class="d-flex mt-4 justify-content-center">
                <!--                <div>
                                    <a href="javascript: history.back()" class="btn btn-light"> « Go back</a>
                                </div>
                                <nav class="ms-3 ">
                                    <ul class="pagination">
                                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                                        <li class="page-item active" aria-current="page">
                                            <span class="page-link">2</span>
                                        </li>
                                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                                        <li class="page-item">
                                            <a class="page-link" href="#">Next</a>
                                        </li>
                                    </ul>
                                </nav>-->

                <div id="pagination"></div>
            </footer>

        </div> <!-- container end.// -->

    </section>

    <!-- include login-footer-->
    <%@include file="login-footer.jsp" %>

    <!-- include footer-->
    <%@include file="footer.jsp" %>

    
</body>

</html>