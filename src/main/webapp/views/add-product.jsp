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
                <h3 class="section-title">Add Product</h3>
            </header>
            <div style="float: right">
                <a href="product-list">View & update product</a>
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
                                        <input type="text" name="name" id="name" class="form-control" placeholder="Type here">
                                    </div> <!-- col end.// -->
                                </div> <!-- row end.// -->
                                <div class="row mb-4"> 
                                    <label class="col-3 col-form-label">Category</label>
                                    <div class="col-9"> 
                                        <input type="text" name="productType" id="productType" class="form-control" placeholder="Type here">
                                    </div> <!-- col end.// -->
                                </div> <!-- row end.// -->
                                <div class="row mb-4"> 
                                    <label class="col-3 col-form-label">Manufacturer</label>
                                    <div class="col-9"> 
                                        <input type="text" name="manufacturer" id="manufacturer" class="form-control" placeholder="Type here">
                                    </div> <!-- col end.// -->
                                </div> <!-- row end.// -->
                                <div class="row mb-4"> 
                                    <label class="col-3 col-form-label">Price</label>
                                    <div class="col-9">
                                        <input type="text" name="price" id="price" class="form-control only_no" placeholder="&#163; 0.00">
                                    </div> <!-- col end.// -->
                                </div>
                                <div class="row mb-4"> 
                                    <label class="col-3 col-form-label">Qty In Stock</label>
                                    <div class="col-9"> 
                                        <input type="number" name="qtyInStock" id="qtyInStock" class="form-control only_no" placeholder="Type here">
                                    </div> <!-- col end.// -->
                                </div> <!-- row end.// -->
                                <div class="row mb-4">
                                    <label class="col-3 col-form-label"> Image <br>
                                        <!--<small class="text-muted">(Max 10 mb)</small>--> 
                                    </label>
                                    <div class="col-9">
                                        <div class="gallery-uploader-wrap"> 
                                            <!--                                            <label style="width: 80px; height: 80px" class="uploader-img"> 
                                                                                            <img width="100" src="assets/img/4.jpg"> 
                                                                                        </label>-->
                                            <label style="width: 80px; height: 80px" class="uploader-img"> 
                                                <input type="file" name="file1" id="file1" multiple="multiple">

                                                <svg xmlns="http://www.w3.org/2000/svg"
                                                     fill="#999" width="32" height="32" viewBox="0 0 24 24">
                                                <circle cx="12" cy="12" r="3"></circle>
                                                <path
                                                    d="M16.83 4L15 2H9L7.17 4H2v16h20V4h-5.17zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5z">
                                                </path>
                                                </svg> </label>
                                            <!--                                            <label
                                                                                            style="width: 80px; height: 80px" class="uploader-img"> 
                                                                                            <input type="file" name="file2" id="file2" multiple="multiple">
                                            
                                                                                            <svg xmlns="http://www.w3.org/2000/svg"
                                                                                                 fill="#999" width="32" height="32" viewBox="0 0 24 24">
                                                                                            <circle cx="12" cy="12" r="3"></circle>
                                                                                            <path
                                                                                                d="M16.83 4L15 2H9L7.17 4H2v16h20V4h-5.17zM12 17c-2.76 0-5-2.24-5-5s2.24-5 5-5 5 2.24 5 5-2.24 5-5 5z">
                                                                                            </path>
                                                                                            </svg> 
                                                                                        </label> -->
                                        </div> <!-- gallery-uploader-wrap //end -->
                                        <div id="fileErr"></div>
                                    </div> <!-- col end.// -->
                                </div> <!-- row end.// -->
                                <!--                                <div class="row mb-4"> 
                                                                    <label class="col-3 col-form-label">Description</label>
                                                                    <div class="col-9">
                                                                        <textarea class="form-control" name="description" id="description" placeholder="Type here"></textarea>
                                                                    </div>  col end.// 
                                                                </div>  row end.// -->

                                <div class="row mb-2">
                                    <div class="col-9 offset-3"> 
                                        <button type="button" id="addProductBtn" class="btn btn-primary">Add product</button> 
                                        <button type="reset" class="btn btn-outline-danger" onclick="resetForm()">Cancel</button>
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

            var fileInput = document.getElementById('file1');
            var filePath = fileInput.value;

            if (filePath == '') {
                showMSG("fileErr", "Please select valid file");
                return false;
            }
            var allowedExtensions =
                    /(\.jpg|\.jpeg|\.png|\.gif)$/i;

            if (!allowedExtensions.exec(filePath)) {
                showMSG("fileErr", "Please select valid file");
                fileInput.value = '';
                return false;
            }
            $.ajax({
                url: base_url + "/saveProduct",
                type: 'POST',
                data: {
                    name: name,
                    productType: productType,
                    manufacturer: manufacturer,
                    price: price,
                    qtyInStock: qtyInStock,
//                    description: description
                },
                beforeSend: function (xhr) {
                    startLoader();
                },
                success: function (data) {
                    data = JSON.parse(data);
                    uploadFiles(data.productId);
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