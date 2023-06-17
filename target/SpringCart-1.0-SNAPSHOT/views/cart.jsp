<!-- include header -->
<%@include file="header.jsp" %>

<body>

    <!-- include login-header -->
    <%@include file="login-header.jsp" %>

    <!-- ================ SECTION PRODUCTS ================ -->
    <section class="padding-y bg-white shadow-sm">
        <div class="container">
            <header class="section-heading">
                <h3 class="section-title">Products Details</h3>
            </header>
            <div class="card">
                <div class="row gx-0">
                    <aside class="col-md-9" id="productList">

                    </aside> <!-- col.// -->
                    <aside class="col-md-3 border-start">
                        <div class="card-body">
                            <!--                            <div class="input-group mb-3"> 
                                                            <input type="text" class="form-control" placeholder="Promo code"> 
                                                            <button class="btn btn-light text-primary">Apply</button>
                                                        </div>-->
                            <dl class="dlist-align">
                                <dt>Total price:</dt>
                                <dd class="text-end" id="totalPrice"> &#163;1403.97</dd>
                            </dl>
                            <dl class="dlist-align">
                                <dt>Discount:</dt>
                                <dd class="text-end text-success"> - &#163;0.0 </dd>
                            </dl>
                            <dl class="dlist-align">
                                <dt>TAX:</dt>
                                <dd class="text-end text-danger"> + &#163;0.0 </dd>
                            </dl>
                            <dl class="dlist-align">
                                <dt>Total:</dt>
                                <dd class="text-end text-dark h5" id="total"> &#163;0.0 </dd>
                            </dl>
                            <hr>
                            <div id="balenceError"></div>
                            <p class="text-center mt-3">
                                <img src="assets/img/payments.png" height="24"> 
                            </p>
                            <button class="btn btn-primary mb-2 w-100" id="checkoutBtn">Checkout</button> 
                            <a href="#" class="btn btn-outline-primary w-100">Go Back</a>
                        </div>
                    </aside> <!-- col.// -->
                </div> <!-- row.// -->
            </div>
        </div> <!-- container .// -->
    </section>

    <!-- include login-footer-->
    <%@include file="login-footer.jsp" %>

    <!-- include footer-->
    <%@include file="footer.jsp" %>

    <script>
        var productMap = JSON.parse(sessionStorage.getItem('productMap'));
        //console.log(productMap);
        renderHtml();

        function pluseQuentity(id) {
            let qnt = $('#quentityInput_' + id).val();

            let product = productMap[id];
            let itemStock = product['itemStock'];
            if (qnt < itemStock) {
                $('#quentityInput_' + id).val(parseInt(qnt) + 1);
                product['quantity'] = (parseInt(qnt) + 1);
                productMap[id] = product;
                addToSession();
                renderHtml();
            }
        }

        function minusQuentity(id) {
            let qnt = $('#quentityInput_' + id).val();
            if (parseInt(qnt) == 1) {
                removeProduct(id);
            } else {
                $('#quentityInput_' + id).val(parseInt(qnt) - 1);
                let product = productMap[id];
                product['quantity'] = (parseInt(qnt) - 1);
                productMap[id] = product;
                addToSession();
                renderHtml();
            }
        }

        function removeProduct(id) {
            if (productMap.hasOwnProperty(id)) {
                delete productMap[id];
                renderHtml();
                addToSession();
            }
        }

        function renderHtml() {
            let total = 0;
            $('#productList').empty();
            $.each(productMap, function (id, product) {
                let name = product['name'];
                let quantity = product['quantity'];
                let price = product['price'];
                let img = product['img'];

                total += (price * quantity);

                let html = '<article class="card-body border-bottom">' +
                        '<div class="row gy-3">' +
                        '<div class="col-md-7">' +
                        '<div class="itemside">' +
                        '<a href="#" class="aside">' +
                        '<img src="' + img + '" class="img-md img-thumbnail">' +
                        '</a>' +
                        '<div class="info">' +
                        '<a href="#" class="title">' + name + '</a>' +
                        '<strong class="price d-block mb-2">&#163;' + (price + " x " + quantity + " = &#163;" + (price * quantity)) + '</strong>' +
                        '<div>' +
                        '<a href="cart#" onclick="removeProduct(' + id + ')" class="btn-link text-danger">Remove </a>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '<div class="col-md-5">' +
                        '<div class="input-group input-spinner float-lg-end">' +
                        '<button class="btn btn-light" type="button" onclick="minusQuentity(' + id + ')">' +
                        '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#999" viewBox="0 0 24 24">' +
                        '<path d="M19 13H5v-2h14v2z"></path>' +
                        '</svg>' +
                        '</button>' +
                        '<input type="text" class="form-control" id="quentityInput_' + id + '" value="' + quantity + '" readonly>' +
                        '<button class="btn btn-light" type="button" onclick="pluseQuentity(' + id + ')">' +
                        '<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="#999" viewBox="0 0 24 24">' +
                        '<path d="M19 13h-6v6h-2v-6H5v-2h6V5h2v6h6v2z"></path>' +
                        '</svg>' +
                        '</button>' +
                        '</div>' +
                        '</div>' +
                        '</div>' +
                        '</article>';

                $('#productList').append(html);
            });
            $('#totalPrice').html('&#163;' + total);
            $('#total').html('&#163;' + total);
        }

        function addToSession() {
            if (window.sessionStorage) {
                sessionStorage.setItem('productMap', JSON.stringify(productMap));
            }
        }


        $('#checkoutBtn').click(function () {
            $(".parsley-errors-list").hide();
            if ('${username}' == '') {
                window.location = base_url + '/login';
                return false;
            }

            let len = Object.keys(productMap).length;
            if (len == 0) {
                alert('Please add product');
                setTimeout(function () {
                    window.location = base_url + '/index';
                }, 1000)
                return false;
            }

            let total = 0;
            $.each(productMap, function (id, product) {
                let quantity = product['quantity'];
                let price = product['price'];
                total += (price * quantity);
            });
            if ('${bankBalance}' < total) {
                showMSG('balenceError', 'Insufficient bank balance');
                return false;
            }


            let reqData = JSON.stringify(productMap);
            $.ajax({
                url: base_url + "/saveOrder",
                type: 'POST',
                data: {
                    orderData: reqData
                },
                beforeSend: function (xhr) {
                    startLoader();
                },
                success: function (data) {
                    data = JSON.parse(data);
                    if (data.errCode == '000') {
                        window.location = base_url + '/success?orderId=' + data.orderId;
                        sessionStorage.removeItem('productMap');
                    } else {
                        alert(data.errMsg);
                    }
                }, error: function (jqXHR, textStatus, errorThrown) {

                }, complete: function (jqXHR, textStatus) {
                    endLoader();
                }
            });
        });

    </script>
</body>

</html>