<div class="my_overlay" id="overlay" style="display: none;">
    <div class="span">
        <div class="timer"></div>
        <div class="load">Loading...</div>
    </div>
</div>

<script src="https://ajax.googleapis.com//ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>-->
<!--<script src="assets/js/bootstrap.min.js"></script>-->
<!--<script src="assets/js/main.js"></script>-->

<!-- Bootstrap js -->
<script src="assets/js/bootstrap.bundle.min.js"></script>

<!-- Custom js -->
<script src="assets/js/script.js"></script>

<script src="assets/alertifyjs/alertify.js" type="text/javascript"></script>
<script src="assets/alertifyjs/alertify.min.js" type="text/javascript"></script>
<script src="assets/js/jsencrypt.js" type="text/javascript"></script>

<!-- pagination -->
<!--<script src="assets/js/pagination.js" type="text/javascript"></script>-->
<!--<script src="assets/js/pagination.min.js" type="text/javascript"></script>-->

<script>

    function startLoader() {
        $('#overlay').show();
    }

    function endLoader() {
        setTimeout(function () {
            $('#overlay').hide();
        }, 1000);
    }

    function showMSG(id, msg) {
        $("#" + id).after(
                "<div class='parsley-errors-list filled'>\n\
                    <span class='parsley-required text-danger'>"
                + msg +
                ".</span>\n\
                </div>"
                );
    }
//    function showMSG(id, msg) {
//        $("#" + id)
//                .after(
//                        "<ul class='parsley-errors-list filled' id='parsley-id-5'><li class='parsley-required text-danger'>"
//                        + msg + ".</li></ul>");
//    }
</script>
<script>
    $('.only_no').keypress(function (event) {
        return isNumber(event, this)
    });

    $(document).ready(function () {
        $('.only_alpha').keypress(function (event) {
            return Checkalpha(event, this)
        });
    });

    $(".only_alpha_numeric").keydown(function (e) {
        var k = e.keyCode || e.which;
        var ok = k >= 65 && k <= 90 || // A-Z
                k >= 96 && k <= 105 || // a-z
                k >= 35 && k <= 40 || // arrows
                k == 9 || //tab
                k == 46 || //del
                k == 8 || // backspaces
                (!e.shiftKey && k >= 48 && k <= 57); // only 0-9 (ignore SHIFT options)

        if (!ok || (e.ctrlKey && e.altKey)) {
            e.preventDefault();
        }
    });

//****NUMBER ACCESPT VALIDATION****//
    function isNumber(evt, element)
    {
        var charCode = (evt.which) ? evt.which : event.keyCode
        if (
                (charCode != 45 || $(element).val().indexOf('-') != -1) && // �-� CHECK MINUS, AND ONLY ONE.
                (charCode != 46 || $(element).val().indexOf('.') != -1) && // �.� CHECK DOT, AND ONLY ONE.
                (charCode < 48 || charCode > 57))
            return false;
        return true;
    }
//****NUMBER ACCESPT VALIDATION****//


    function Checkalpha(e) {
        var a = [];
        var k = e.which;
        for (i = 97; i < 123; i++)
            a.push(i);

        for (i = 65; i < 91; i++)
            a.push(i);

        a.push(8);
        a.push(13);
        a.push(32);
        a.push(0);

        if (!(a.indexOf(k) >= 0))
        {
            e.preventDefault();
        }
    }


</script>

<script>
    $(document).ready(
            function () {
                $("#myInput").on(
                        "keyup",
                        function () {
                            var value = $(this).val().toLowerCase();
                            $("#myTable tr").filter(
                                    function () {
                                        $(this).toggle(
                                                $(this).text().toLowerCase()
                                                .indexOf(value) > -1)
                                    });

                            $("#myTable .filterBy").filter(
                                    function () {
                                        $(this).toggle(
                                                $(this).text().toLowerCase()
                                                .indexOf(value) > -1)
                                    });
                        });
            });
</script>