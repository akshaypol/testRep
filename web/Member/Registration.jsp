<%-- 
    Document   : Registration
    Created on : 15 Jan, 2018, 10:50:04 AM
    Author     : Ravi
--%>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <%@include file="Title.jsp" %>

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

        <!-- Bootstrap Core Css -->
        <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

        <!-- Waves Effect Css -->
        <link href="plugins/node-waves/waves.css" rel="stylesheet" />

        <!-- Animation Css -->
        <link href="plugins/animate-css/animate.css" rel="stylesheet" />

        <!-- Sweet Alert Css -->
        <link href="plugins/sweetalert/sweetalert.css" rel="stylesheet" type="text/css"/>

        <!-- Custom Css -->
        <link href="Css/style.css" rel="stylesheet">
        <script src="Alertajax.js" type="text/javascript"></script>

    </head>

    <body class="login-page">
        <div class="login-box">
            <div class="logo">
                <a href="javascript:void(0);">Gods<b>Gift</b></a>          
            </div>             
        </div>


        <!-- Basic Validation -->
        <div class="row clearfix">

            <div class="row clearfix">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2 style="text-align: center">Registration Form</h2>
                            <ul class="header-dropdown m-r--5">

                            </ul>
                        </div>
                        <div class="body">
                            <%
                            
                            String UserId= request.getParameter("userid");
                            %>
                            <form id="form_validation" action="../SaveMember"  method="POST">
                                <!--<form id="form_validation" action="../../../FirstId" method="post">-->

                                <div class="form-group form-float">
                                    <label class="form-label">Sponcer ID</label>
                                    <div class="form-line">
                                        <input type="text" id="sponcerId"  readonly="" class="form-control" autocomplete="off" value="<%=UserId%>" required="" name="SponcerId" style="text-transform: lowercase" placeholder="Sponcer ID"> 

                                    </div>
                                </div>


                                <div class="form-group form-float">
                                    <label class="form-label">Full Name</label>
                                    <div class="form-line">
                                        <input type="text"  autocomplete="off" class="form-control" name="Name" placeholder="Full Name" required="">

                                    </div>
                                </div>
                                <div class="form-group form-float">
                                    <label class="form-label">Email</label>
                                    <div class="form-line">
                                        <input type="text" autocomplete="off" class="form-control" name="Email" placeholder="Email" required="">

                                    </div>
                                </div>

                                <div class="form-group form-float">
                                    <label class="form-label">Mobile No</label>
                                    <div class="form-line">
                                        <input type="text" autocomplete="off" class="form-control" name="MobNO" placeholder="Mobile No" required="">

                                    </div>
                                </div>
                                <div class="form-group form-float">
                                    <label class="form-label">Password</label>
                                    <div class="form-line">
                                        <input type="password" autocomplete="off" class="form-control" name="MobNO" placeholder="Mobile No" required="">

                                    </div>
                                </div>

                                <div class="row">

                                    <div class="col-xs-12">
                                        <button class="btn btn-block bg-pink waves-effect" type="submit">REGISTER</button>
                                    </div>
                                </div>
                                <!--                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>-->
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Basic Validation -->

        <!-- Jquery Core Js -->
        <script src="plugins/jquery/jquery.min.js"></script>

        <!-- Bootstrap Core Js -->
        <script src="plugins/bootstrap/js/bootstrap.js"></script>

        <!-- Select Plugin Js -->
        <script src="plugins/bootstrap-select/js/bootstrap-select.js"></script>

        <!-- Slimscroll Plugin Js -->
        <script src="plugins/jquery-slimscroll/jquery.slimscroll.js"></script>

        <!-- Waves Effect Plugin Js -->
        <script src="plugins/node-waves/waves.js"></script>

        <!-- Validation Plugin Js -->
        <script src="plugins/jquery-validation/jquery.validate.js"></script>

        <!-- JQuery Steps Plugin Js -->
        <script src="plugins/jquery-steps/jquery.steps.js"></script>

        <!-- Sweet Alert Plugin Js -->
        <script src="plugins/sweetalert/sweetalert.min.js"></script>

        <!-- Waves Effect Plugin Js -->
        <script src="plugins/node-waves/waves.js"></script>

        <!-- Custom Js -->
        <script src="js/admin.js"></script>
        <script src="js/pages/examples/sign-in.js"></script>
    </body>

</html>
