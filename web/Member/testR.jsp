
<%@page import="java.util.List"%>
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
        <script src="../Validation.js" type="text/javascript"></script>
        <style>
            .errortext
            {
                color:red;

            }
        </style>
        <script type="text/javascript">
            $(document).ready(function() {
                $('.errortext').hide();
                // $('.MyPins').show();

            });
        </script>
    </head>

    <body>

        <!-- Start wrapper-->
        <div id="wrapper">

            <!--Start sidebar-wrapper-->

            <!--End topbar header-->

            <div class="clearfix"></div>


            <div class="container-fluid">


                <!--<h6 class="text-uppercase">Edit Profile</h6>-->

                <div class="row">
                    <div class="col-lg-2"></div>
                    <div class="col-lg-8">
                        <div class="card">
                            <div class="card-body"> 
                                <ul class="nav nav-tabs nav-tabs-info nav-justified">
                                    <li class="nav-item">
                                        <a class="nav-link active" data-toggle="tab" href="#tabe-13"><i class="icon-user"></i> <span class="hidden-xs"> Registration</span></a>
                                    </li>


                                </ul>

                                <!-- Tab panes -->
                                <div class="tab-content">
                                    <div id="tabe-13" class="container tab-pane active">
                                        <%
//                                                String UserId = request.getParameter("userid");
%>
                                        <form id="form_validation" action="../SaveMember111" onsubmit="return myfunction();"  method="POST">
                                            <!--<form id="form_validation" action="../../../FirstId" method="post">-->



                                            <div class="form-group form-float">
                                                <label class="form-label">First Name</label>
                                                <div class="form-line">
                                                    <input type="text"  autocomplete="off" class="form-control" name="Name" placeholder="First Name" required="">

                                                </div>
                                            </div>
                                            <div class="form-group form-float">
                                                <label class="form-label">Last Name</label>
                                                <div class="form-line">
                                                    <input type="text"   autocomplete="off" class="form-control" name="LName" placeholder="Last Name" required="">

                                                </div>
                                            </div>




                                            <div id="MyUser"></div>


                                            <div class="form-group form-float">
                                                <label class="form-label">Mobile No</label>
                                                <div class="form-line">
                                                    <input type="text"   autocomplete="off" class="form-control MNUmber" name="MobNO" placeholder="Mobile No" required="">
                                                    <span class="errortext" id="errortext">Enter Correct Mobile Number</span>
                                                </div>
                                            </div>
                                            <div class="form-group form-float">
                                                <label class="form-label">Email</label>
                                                <div class="form-line">
                                                    <input type="text" value="" autocomplete="off"  class="form-control"  name="Email" placeholder="Email" required pattern="^\S+@(([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,3})$">

                                                </div>
                                            </div>
                                            <div class="form-group form-float">
                                                <label class="form-label">Password</label>
                                                <div class="form-line">
                                                    <input type="text" value="" autocomplete="off"  class="form-control"  name="Password" placeholder="Password" required="">

                                                </div>
                                            </div>

                                            <div class="form-group form-float">
                                                <label class="form-label">Password</label>
                                                <div class="form-line">
                                                    <input type="file" value="" autocomplete="off"  class="form-control"  name="Password" placeholder="Password" required="">

                                                </div>
                                            </div>

                                            <div class="form-group row">
                                                <label for="input-1" class="col-sm-4 col-form-label"></label>
                                                <div class="col-sm-8">
                                                    <div id="pinactivate">

                                                        <button class="btn btn-gradient-scooter waves-effect waves-light m-1 PRegister" type="submit">REGISTER</button>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>-->
                                        </form>
                                    </div>


                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-2"></div>
                </div><!--End Row-->

            </div>
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

//                $('#pinactivate').hide();
//                $('#EPIN').blur(function() {
//
//                    var EPIN = $('#EPIN').val();
//                    //                     alert("adsf"+EPIN);
//                    $.get("Ajax/validatePin.jsp", {EPIN: EPIN}, function(data) {
//                        $('#MyUser').html(data);
//                        var BtnShow = $('#BtnShow').val();
//                        //    alert("In Send...." + PinID);
//                        //                         alert("adsf"+BtnShow);
//                        if (BtnShow == 2) {
//
//                            $('#pinactivate').show();
//                        }
//                        //pinactivate
//                    });
//                });

        });
    </script>

    <!-- Bootstrap core JavaScript-->
    <%@include file="Script.jsp" %>
</body>

<!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
</html>
