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
            <%                MemberModel me = (MemberModel) session.getAttribute("Admin");
                if (me == null) {
                    response.sendRedirect("Login.jsp");
                } else {
            %>
            <div class="content-wrapper">
                <div class="container-fluid">


                    <!--Start Dashboard Content-->
                    <%MemberModel m = new MemberDao().getById(sidebarr.getId());
                    %>  

                    <div class="row">
                        <%
                            if (session.getAttribute("i") != null) {
                                int i = (Integer) session.getAttribute("i");
                                String msg = (String) session.getAttribute("msg");
                                if (i == 2) {

                        %>

                        <div class="alert alert-danger alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <div class="alert-icon">
                                <i class="icon-info"></i>
                            </div>
                            <div class="alert-message">
                                <span><strong></strong><%=msg%></span>
                            </div>
                        </div>
                        <%} else {%>
                        <div class="alert alert-success alert-dismissible" role="alert">
                            <button type="button" class="close" data-dismiss="alert">&times;</button>
                            <div class="alert-icon">
                                <i class="icon-info"></i>
                            </div>
                            <div class="alert-message">
                                <span><strong></strong><%=msg%></span>
                            </div>
                        </div>

                        <%
                                }
                                session.removeAttribute("i");
                                session.removeAttribute("msg");
                            }%>

                        <div class="col-12 col-lg-12 col-xl-12">
                            <div class="card">
                                <div class="card-header">
                                    Send E-Pin


                                    <div>
                                        <%
                                            long d = 0;
                                            int z=0;
                                            List<EPinModel> m1 = new EPinDao().getByMyGenPins(d);
                                            for(EPinModel m2:m1)
                                            {
                                                z++;
                                            }
                                            
                                            
                                        %>
                                        <h4>You Have <%=z %> Pin Remaining</h4>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <!--<form id="form_validation" action="#"  method="POST">-->
                                    <form id="form_validation" action="../SendEPinAdmin" method="post">
                                        <div class="row">
                                            <div class="col-lg-6 ">
                                                <div class="form-group form-float">
                                                    <label class="form-label">User ID</label>
                                                    <div class="form-line">
                                                        <div class="row">
                                                            <div class="col-lg-8 ">
                                                                <input type="text" id="user" class="form-control" autocomplete="off"  required="" name="UserId" style="" placeholder="Enter User ID of Person You Want To Send Pins"> 
                                                            </div>
                                                            <div class="col-lg-4 ">
                                                                <a class="btn btn-gradient-quepal waves-effect waves-light m-1 " id="search" style="color:white">Search</a>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <div class="MyPins">
                                                    <div class="form-group form-float ">
                                                        <label class="form-label">No.of Pins</label>
                                                        <div class="form-line">
                                                            <input type="text" id="pins" class="form-control" autocomplete="off"  required="" name="Pins" style="" placeholder="Enter Number Of Pins You Want To Send"> 

                                                        </div>
                                                    </div>
                                                    <div class="form-group row">
                                                        <label for="input-1" class="col-sm-4 col-form-label"></label>
                                                        <div class="col-sm-8">
                                                            <button class="btn btn-gradient-scooter waves-effect waves-light m-1 " type="submit">Send</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 ">
                                                <div id="MyUser">
                                                    <div class="card" style="background-color: #3d59ab">
                                                        <input type="hidden" id="PinID">
                                                        <div class="card-body">
                                                            <div class="media">
                                                                <div class="media-body text-left">
                                                                    <h4 class="text-white">User ID:</h4>
                                                                    <span class="text-white">Name:</span><br>
                                                                    <span class="text-white">Mobile:</span><br>
                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
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
                    </div>
                </div>
            </div>
            <%
                }
            %>
        </div>
        <script type="text/javascript">
            $(document).ready(function() {
                $('.MyPins').hide();
                $('#search').click(function() {
                    var user = $('#user').val();
                    $.get("Ajax/GetUserAjax.jsp", {user: user}, function(data) {
                        $('#MyUser').html(data);
                        var PinID = $('#PinID').val();
                        //    alert("In Send...." + PinID);
                        if (PinID == 2) {

                            $('.MyPins').show();
                        }

                    });
                });

            });
        </script>
        <!-- Bootstrap core JavaScript-->
        <%@include file="Script.jsp" %>
    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
</html>
