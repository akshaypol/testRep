<%@page import="java.text.DecimalFormat"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <%@include file="Title.jsp" %>
        <%@include file="Css.jsp" %>
        <style>
            .card-body{
                background-color:#82828245;
                padding: 0.6rem;
            }
            .MyLabel{
                font-size: 22px;
                color: white;
            }
            #MySpan{
                font-size: 18px;
                background-color: red;
                padding: 8px;
                color: white;
            }
        </style>
    </head>

    <body>

        <!-- Start wrapper-->
        <div id="wrapper">

            <!--Start sidebar-wrapper-->
            <%@include file="Sidebar.jsp" %>
            <!--End sidebar-wrapper-->

            <!--Start topbar header-->
            <%@include file="Topbar.jsp" %>
            <!--End topbar header-->

            <div class="clearfix"></div>

            <div class="content-wrapper">
                <div class="container-fluid">

                    <!--Start Dashboard Content-->
                    <%MemberModel m = new MemberDao().getById(sidebarr.getId());
                     DecimalFormat df = new DecimalFormat("#.##");
                    %>  
                    <input type="hidden" id="WAmtID" value="<%=m.getWAmmount()%>">
                    <div class="row mt-3">

                        <div class="col-12 col-lg-6 col-xl-3">
                            <div class="card bg-pattern-danger">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body text-left">
                                            <h4 class="text-white"><%=df.format(m.getWAmmount())%></h4>
                                            <input type="hidden" value="<%=df.format(m.getWAmmount())%>" id="WalletAmt">
                                            <span class="text-white">Total Wallet Amount</span>
                                        </div>
                                        <div class="align-self-center w-circle-icon rounded-circle bg-contrast">
                                            <i class="icon-wallet text-white"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div><!--End Row-->

                    <br>

                    <div class="row">
                        <div class="col-12 col-lg-12 col-xl-12">
                            <div class="card">
                                <div class="card-header">
                                   Generate E-Pin
                                </div>
                                <div class="card-body">
                                    <!--<form id="form_validation" action="#"  method="POST">-->
                                    <!--<form id="form_validation" action="../../../FirstId" method="post">-->
                                    <div class="row">
                                        <div class="col-lg-6 ">
                                            <div class="form-group form-float">
                                                <label class="form-label">Pins</label>
                                                <div class="form-line">
                                                    <input type="text" id="pin" class="form-control" autocomplete="off"  required="" name="SponcerId" style="" placeholder="Enter Number Of Pins You Want To Buy"> 
                                                    <p id="event"></p>
                                                </div>
                                            </div>
                                            <div class="form-group row">
                                                <label for="input-1" class="col-sm-4 col-form-label"></label>
                                                <div class="col-sm-8">
                                                    <button class="btn btn-gradient-scooter waves-effect waves-light m-1 " id='buy'>Check Amount Details</button>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6 ">
                                            <div id='MySpanDiv'>
                                                <span id="MySpan">You Don't Have Enough Funds In Wallet To Buy This Pin</span>
                                                <br><br>
                                            </div>
                                            <!--                                            <a href="#" id="MyHref">-->
                                            <div class="card gradient-shifter">

                                                <div class="card-body">
                                                    <div class="media">
                                                        <div class="media-body text-left">
                                                            <h4 class="text-white"><label class="MyLabel"  id="PinID"></label> Pin</h4>
                                                            <span class="text-white">Rs.<label class="MyLabel"  id="Amt"></label></span><br>
                                                            <span class="text-white">Admin Cost 5%</span><br>
                                                            <span class="text-white">Total Amount <label class="MyLabel" id="Total"></label> Rs</span><br>
                                                        </div>
                                                        <!--                                                            <div class="align-self-center w-circle-icon rounded bg-contrast">
                                                                                                                        <i class="fa fa-cart-plus text-white"></i></div>-->
                                                        <div class="form-group row">
                                                            <!--<label for="input-1" class="col-sm-4 col-form-label"></label>-->
                                                            <div class="col-sm-8">
                                                                <button class="btn btn-gradient-quepal waves-effect waves-light m-1 " id="BuyPin">Buy Pin</button>
                                                                <button class="btn btn-gradient-blooker waves-effect waves-light m-1 " id="cancel">Cancel</button>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <!--</a>-->

                                        </div>
                                    </div>

                                    <!--                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>-->
                                    <!--</form>-->
                                </div>
                            </div>
                        </div>
                    </div>
                    <br>

                    <!-- End container-fluid-->

                </div><!--End content-wrapper-->
                <!--Start Back To Top Button-->
                <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
                <!--End Back To Top Button-->

                <!--Start footer-->
                <%@include file="Footer.jsp" %>
                <!--End footer-->

            </div><!--End wrapper-->
            <script type="text/javascript">
                $(document).ready(function() {
                    $('#MySpanDiv').hide();
                    $('#BuyPin').hide();
//                    $('#pin').on('keyup change', function() {
                    $('#cancel').click(function() {
                        location.reload();
                    });
                    $('#buy').click(function() {
                        // alert("dasd");
                        var pin = $('#pin').val();
                        var WalletAmt = $('#WalletAmt').val();

                        document.getElementById('PinID').innerHTML = pin;
                        var amt = 500 * pin;
                        document.getElementById('Amt').innerHTML = amt;

                        var a = 5;
                        var v = 0;
                        var z = 0;
                        var grandtotal = 0;
                        v = amt * a / 100;
                        grandtotal = parseFloat(amt) + parseFloat(v);

                        document.getElementById('Total').innerHTML = grandtotal;
//alert(grandtotal);
                        if (WalletAmt < grandtotal) {
//                            alert("in if");
                            // $('#MyHref').removeAttr('href');
                            $('#BuyPin').hide();
                            $('#MySpanDiv').show();

                        } else {
//                            alert("in else");
                            $('#BuyPin').show();
                            $('#BuyPin').click(function() {
                                $.get("BuyPin.jsp", {Pin: pin, Amt: grandtotal}, function(data) {
                                    location.reload();
                                });
                            });

                            $('#MySpanDiv').hide();
                        }
                    });
                });
            </script>
            <!-- Bootstrap core JavaScript-->
            <%@include file="Script.jsp" %>
    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
</html>
