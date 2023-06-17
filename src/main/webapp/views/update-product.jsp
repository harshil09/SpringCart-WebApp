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
                <h3 class="section-title">Update Product</h3>
            </header>
            <div style="float: right">
                <a href="product-list">View product</a>
            </div>
            <!-- <div class="card"> -->
            <div class="row">
                <div class="alert alert-success" role="alert" id="msgDiv" style="display: none"></div>
                <aside class="col-8">
                    <!-- ============== COMPONENT POSTING ============== -->
                    <div class="card mb-4">
                        <article class="card-body">
                            <!-- <h4 class="mb-4">Submit product</h4> -->
                            <form>
                                <div class="row mb-4"> 
                                    <label class="col-3 col-form-label">Name</label>
                                    <div class="col-9"> 
                                        <input type="text" name="name" id="name" value="${product.name}" class="form-control" placeholder="Type here">
                                    </div> <!-- col end.// -->
                                </div> <!-- row end.// -->
                                <div class="row mb-4"> 
                                    <label class="col-3 col-form-label">Category</label>
                                    <div class="col-9"> 
                                        <input type="text" name="productType" id="productType" value="${product.productType}" class="form-control" placeholder="Type here">
                                    </div> <!-- col end.// -->
                                </div> <!-- row end.// -->
                                <div class="row mb-4"> 
                                    <label class="col-3 col-form-label">Manufacturer</label>
                                    <div class="col-9"> 
                                        <input type="text" name="manufacturer" id="manufacturer" value="${product.manufacturer}" class="form-control" placeholder="Type here">
                                    </div> <!-- col end.// -->
                                </div> <!-- row end.// -->
                                <div class="row mb-4"> 
                                    <label class="col-3 col-form-label">Price</label>
                                    <div class="col-9">
                                        <input type="text" name="price" id="price" value="${product.price}" class="form-control only_no" placeholder="&#8364; 0.00">
                                    </div> <!-- col end.// -->
                                </div>
                                <div class="row mb-4"> 
                                    <label class="col-3 col-form-label">Qty In Stock</label>
                                    <div class="col-9"> 
                                        <input type="number" name="qtyInStock" id="qtyInStock" value="${product.qtyInStock}" class="form-control only_no" placeholder="Type here">
                                    </div> <!-- col end.// -->
                                </div> <!-- row end.// -->


                                <div class="row mb-2">
                                    <div class="col-9 offset-3"> 
                                        <button type="button" id="addProductBtn" class="btn btn-primary">Update product</button> 
                                    </div> <!-- col end.// -->
                                </div> <!-- row end.// -->
                            </form> <!-- form end.// -->
                        </article> <!-- card-body end .// -->
                    </div> <!-- card end.// -->
                    <!-- ============== COMPONENT POSTING END.// ============== -->
                </aside> <!-- col end.// -->
            </div>
            <!-- </div> -->





        </div> <!-- container .// -->
    </section>

    <!-- include login-footer-->
    <%@include file="login-footer.jsp" %>

    <!-- include footer-->
    <%@include file="footer.jsp" %>

    <script>
        $("#addProductBtn").click(function () {
            $(".parsley-errors-list").hide();
            let name = $('#name').val().trim();
            let productType = $('#productType').val().trim();
            let manufacturer = $('#manufacturer').val().trim();
            let price = $('#price').val().trim();
            let qtyInStock = $('#qtyInStock').val().trim();
//            let description = $('#description').val().trim();
            if (name == '') {
                showMSG("name", "Product name required");
                return false;
            }
            if (productType == '') {
                showMSG("productType", "Product category required");
                return false;
            }
            if (manufacturer == '') {
                showMSG("manufacturer", "Product manufacturer required");
                return false;
            }
            if (price == '') {
                showMSG("price", "Product price required");
                return false;
            }
            if (qtyInStock == '') {
                showMSG("qtyInStock", "Product quentity required");
                return false;
            }

            $.ajax({
                url: base_url + "/updateProduct",
                type: 'POST',
                data: {
                    productId: '${productId}',
                    name: name,
                    productType: productType,
                    manufacturer: manufacturer,
                    price: price,
                    qtyInStock: qtyInStock,
                },
                beforeSend: function (xhr) {
                    startLoader();
                },
                success: function (data) {
                    data = JSON.parse(data);
                    if (data.errCode = '000') {
                        $('#msgDiv').text(data.resMsg);
                        $('#msgDiv').show();
                    } else {
                        alert(data.resMsg);
                    }
                }, error: function (jqXHR, textStatus, errorThrown) {

                }, complete: function (jqXHR, textStatus) {
                    endLoader();
                }
            });

        });

        function uploadFiles(id) {
            var formData = new FormData();
            $.each($('#file1')[0].files, function (i, file) {
                formData.append('file-' + i, file);
            });

            formData.append('productId', id);
            $.ajax({
                url: base_url + '/uploadFile',
                type: 'POST',
                data: formData,
                cache: false,
                contentType: false,
                processData: false,
                beforeSend: function (xhr) {
                    startLoader();
                }, success: function (data) {
                    data = JSON.parse(data);
//                    alertify.set('notifier', 'delay', 15);
//                    alertify.set('notifier', 'position', 'top-right');
//                    alertify.success(data.resMsg);
                    $('#msgDiv').text(data.resMsg);
                    $('#msgDiv').show();
                    resetForm();
                }, complete: function (jqXHR, textStatus) {
                    endLoader();
                }, error: function (jqXHR, textStatus, errorThrown) {

                }
            });
        }

        function resetForm() {
            $(".parsley-errors-list").hide();
            $('#name').val('');
            $('#productType').val('');
            $('#manufacturer').val('');
            $('#price').val('');
            $('#qtyInStock').val('');
            $('#description').val('');
            $('#file1').val('');
        }
    </script>
</body>

</html>