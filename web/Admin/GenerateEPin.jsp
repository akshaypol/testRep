<%@page import="Com.Member.Dao.EPinDao"%>
<%@page import="Com.Member.Model.EPinModel"%>
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
        <script src="js/Alertajax.js" type="text/javascript"></script>
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
            .MySpan{
                font-size: 18px;
                background-color: red;
                padding: 8px;
                color: white;
                float:right;
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
                    <%                        MemberModel m = new MemberDao().getById(sidebarr.getId());
                    %>  
                    
                    <div class="row">

                        <div class="col-2 col-lg-2 col-xl-2"></div>
                        <div class="col-8 col-lg-8 col-xl-8">
                            <div class="card">
                                <div class="card-header">
                                    Purchase E-Pin
                                    <%
                                        int count = 0;
                                        List<EPinModel> e = new EPinDao().getByUserID(0);
                                        for (EPinModel e1 : e) {
                                            if (e1.getEPinGivenTo() == 0) {
                                                count++;
                                            }
                                        }
                                    %>
                                    <span class="MySpan">Your Total Remaining Pins:<%=count%></span>
                                </div>
                                <div class="card-body">
                                    <!--<form id="form_validation" action="#"  method="POST">-->
                                    <!--<form id="form_validation" action="../../../FirstId" method="post">-->
                                    <div class="row">

                                        <div class="col-lg-12 ">
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
                                                    <button class="btn btn-gradient-scooter waves-effect waves-light m-1 " id='buy'>Buy</button>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                    <!--                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>-->
                                    <!--</form>-->
                                </div>
                            </div>
                        </div>
                        <div class="col-2 col-lg-2 col-xl-2"></div>
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

                    $('#buy').click(function() {
//                        alert("dasd");
                        var pin = $('#pin').val();
//                        alert(pin);

                        $.get("BuyPin.jsp", {Pin: pin}, function(data) {
                            location.reload();
                        });


                    });
                });
            </script>
            <!-- Bootstrap core JavaScript-->
            <%@include file="Script.jsp" %>
    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
</html>
