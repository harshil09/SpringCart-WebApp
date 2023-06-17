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
            <c:if test="${not empty productList}">
                <header class="section-heading">
                    <h3 class="section-title">New products</h3>
                </header>
            </c:if>

            <div class="row">
                <c:forEach items="${productList}" var="item">
                    <div class="col-lg-3 col-sm-6 col-12">
                        <div class="card card-product-grid">
                            <div class="img-wrap"> <img id="image_${item.id}" src="product_img/${item.id}/${item.imgs.get(0)}"> </div>
                            <div class="info-wrap"> <span class="text-warning">Bestseller</span>
                                <p class="title" id="productName_${item.id}" item-stock="${item.qtyInStock}" item-name="${item.name}">${item.name}</p>
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
                                    <button onclick="addProductToCart(${item.id})" class="btn btn-sm btn-primary float-end"> Add to cart </button>
                                </div>

                                <div class="input-group input-spinner float-lg-end" id="quantityDiv_${item.id}" style="display: none">
                                    <button class="btn btn-light" type="button" onclick="minusQuentity(${item.id})"> 
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#999" viewBox="0 0 24 24">
                                        <path d="M19 13H5v-2h14v2z"></path>
                                        </svg> 
                                    </button> 
                                    <input type="text" class="form-control" id="quentityInput_${item.id}" value="1" readonly> 
                                    <button class="btn btn-light" type="button" onclick="pluseQuentity(${item.id})"> 
                                        <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#999" viewBox="0 0 24 24">
                                        <path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"></path>
                                        </svg>
                                    </button> 
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

    <script>
//        $('#pagination').pagination({
//            dataSource: '$ {productList}',
//            pageSize: 2,
//            showPrevious: false,
//            showNext: false,
//            callback: function (data, pagination) {
//                // template method of yourself
//                var html = template(data);
//                dataContainer.html(html);
//            }
//        })


        var productMap = JSON.parse(sessionStorage.getItem('productMap'));
        if (productMap == null) {
            productMap = {};
        } else {
            $.each(productMap, function (id, product) {
                $('#addToCartDiv_' + id).hide();
                $('#quantityDiv_' + id).show();
                $('#quentityInput_' + id).val(product['quantity']);
            });
        }
        showHideCart();
        function addProductToCart(productId) {
            $('#addToCartDiv_' + productId).hide();
            $('#quantityDiv_' + productId).show();
            let qnt = $('#quentityInput_' + productId).val();
            let price = $('#price_' + productId).attr('price-tag');
            let name = $('#productName_' + productId).attr('item-name');
            let itemStock = $('#productName_' + productId).attr('item-stock');
            let img = $('#image_' + productId).attr('src');

            let product = {};
            product['id'] = productId;
            product['name'] = name;
            product['quantity'] = parseInt(qnt);
            product['price'] = parseFloat(price);
            product['img'] = img;
            product['itemStock'] = parseInt(itemStock);

            productMap[productId] = product;

            addToSession();
        }

        function minusQuentity(productId) {
            let qnt = $('#quentityInput_' + productId).val();
            if (parseInt(qnt) == 1) {
                $('#addToCartDiv_' + productId).show();
                $('#quantityDiv_' + productId).hide();
                removeProduct(productId);
            } else {
                $('#quentityInput_' + productId).val(parseInt(qnt) - 1);
                let product = productMap[productId];
                product['quantity'] = (parseInt(qnt) - 1);
                productMap[productId] = product;
                addToSession();
            }
        }
        function pluseQuentity(productId) {
            let qnt = $('#quentityInput_' + productId).val();

            let product = productMap[productId];
            let itemStock = product['itemStock'];
//            console.log("itemStock - " + itemStock);
//            console.log("qnt - " + qnt);
            if (qnt < itemStock) {
                $('#quentityInput_' + productId).val(parseInt(qnt) + 1);
                product['quantity'] = (parseInt(qnt) + 1);
                productMap[productId] = product;
                addToSession();
            }
        }

        function removeProduct(id) {
            if (productMap.hasOwnProperty(id)) {
                delete productMap[id];
                addToSession();
            }
        }

        function addToSession() {
            if (window.sessionStorage) {
                sessionStorage.setItem('productMap', JSON.stringify(productMap));
            }

            showHideCart();
        }

        function showHideCart() {
            let len = Object.keys(productMap).length;
            if (len > 0) {
                $('#cartDiv').show();
            } else {
                $('#cartDiv').hide();
            }
        }

    </script>
</body>

</html>