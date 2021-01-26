<%@page import="java.time.Month"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.time.temporal.ChronoUnit"%>

<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from codervent.com/rocker/color-version/table-data-tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:50:15 GMT -->
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <%@include file="Title.jsp" %>
        <!-- simplebar CSS-->
        <link href="assets/plugins/simplebar/css/simplebar.css" rel="stylesheet"/>
        <!-- Bootstrap core CSS-->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
        <!--Data Tables -->
        <link href="assets/plugins/bootstrap-datatable/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css">
        <link href="assets/plugins/bootstrap-datatable/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css">
        <!-- animate CSS-->
        <link href="assets/css/animate.css" rel="stylesheet" type="text/css"/>
        <!-- Icons CSS-->
        <link href="assets/css/icons.css" rel="stylesheet" type="text/css"/>
        <!-- Sidebar CSS-->
        <link href="assets/css/sidebar-menu.css" rel="stylesheet"/>
        <!-- Custom Style-->
        <link href="assets/css/app-style.css" rel="stylesheet"/>
        <script src="js/Alertajax.js" type="text/javascript"></script>
        <link href="Css/newcss.css" rel="stylesheet" type="text/css"/>
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
               <a href="AdminHome.jsp"  class="btn-sm btn btn-danger shadow-danger btn-round waves-effect waves-light " >Back</a>
               <br>
               <br>
                <div class="container-fluid">
                    <%                        long id = Long.parseLong(request.getParameter("id"));

                        MemberModel m = new MemberDao().getById(id);
                    %>

                    <!--                    <h6 class="text-uppercase">Edit Profile</h6>-->

                    <div class="row">

                        <div class="col-12 col-lg-6 col-xl-6 text-center">
                            <div class="card bg-pattern-success">
                                <div class="card-header bg-transparent text-white border-light">
                                    Addhaar Card Front 
                                </div>
                                <div class="card-body" style="width:100%">
                                    <div class="row">

                                        <div class="col-12 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6 text-center" style="width:50%">
                                            <a href="../KYCDocument/<%=m.getAdharFront()%>" target="_blank"><img src="../KYCDocument/<%=m.getAdharFront()%>" alt="Adhhaar Front "  width="200" height="200">
                                            </a>   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-12 col-lg-6 col-xl-6">
                            <div class="card bg-pattern-success">
                                <div class="card-header bg-transparent text-white border-light">
                                    Addhaar Card Back 
                                </div>
                                <div class="card-body" style="width:100%">
                                    <div class="row">
                                        
                                        <div class="col-12 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6 text-center" style="width:50%">
                                            <a href="../KYCDocument/<%=m.getAdharBack()%>" target="_blank"><img src="../KYCDocument/<%=m.getAdharBack()%>" alt="Adhhaar Back " width="200" height="200">
                                            </a>   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-lg-6 col-xl-6">
                            <div class="card bg-pattern-success">
                                <div class="card-header bg-transparent text-white border-light">
                                    Pan Card
                                </div>
                                <div class="card-body" style="width:100%">
                                    <div class="row">
                                         
                                        <div class="col-12 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6" style="width:50%">
                                            <a href="../KYCDocument/<%=m.getPanCardIMG()%>" target="_blank"><img src="../KYCDocument/<%=m.getPanCardIMG()%>" alt="Pan Card " width="200" height="200">
                                            </a>   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-12 col-lg-6 col-xl-6">
                            <div class="card bg-pattern-success">
                                <div class="card-header bg-transparent text-white border-light">
                                    Baptism Certificate
                                </div>
                                <div class="card-body" style="width:100%">
                                    <div class="row">
                                   
                                        <div class="col-12 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6 " style=" ">
                                            <a href="../KYCDocument/<%=m.getBaptismcertificate()%>" target="_blank"><img src="../KYCDocument/<%=m.getBaptismcertificate()%>" alt="Baptism Certificate " width="200" height="200">
                                            </a>   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- End container-fluid-->

                </div><!--End content-wrapper-->
                <!-- End container-fluid-->

            </div><!--End content-wrapper-->
            <!--Start Back To Top Button-->
            <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
            <!--End Back To Top Button-->

            <!--Start footer-->
            <%@include file="Footer.jsp" %>
            <!--End footer-->

        </div><!--End wrapper-->

        <script>
            $('document').ready(function() {
                $('.paidbtn').click(function() {
                    var id = this.id;

                    $.get("Ajax/PaidAjax.jsp", {id: id}, function(data) {
                        $('#statusID').html(data);
                    });
                });
                $('.RecvedBtn').click(function() {
                    var id = this.id;
                    $.get("Ajax/RecivedAjax.jsp", {id: id}, function(data) {
                        $('#RecIDSpan').html(data);
                    });
                });


                $('.deleteID').click(function() {
                    // alert("ffff");
//deelteID
                    var MemId = this.id;

                    $('.myid').click(function() {

                        $.get("Ajax/DeleteUser.jsp", {MemId: MemId}, function(data) {
                            $('#LDiv').html(data);
                        });
                    });
//                    alert("mem" + MemId);

//                  window.location.reload();
                });
            });
        </script>
        <script>
            $('document').ready(function() {

                $('.go').click(function() {

                    var fromdate = $("#fromdate").val();
                    var todate = $("#todate").val();

                    $.get("Ajax/GetMember.jsp", {fromdate: fromdate, todate: todate}, function(data) {


                        $('#LDiv').html(data);
                    });
                    //                    location.reload();
                });
                var today = moment().format('YYYY-MM-DD');
                document.getElementById("todate").value = today;
                document.getElementById("fromdate").value = today;
            });
        </script>
        <!-- Bootstrap core JavaScript-->
        <script src="assets/js/jquery.min.js"></script>
        <script src="assets/js/popper.min.js"></script>
        <script src="assets/js/bootstrap.min.js"></script>

        <!-- simplebar js -->
        <script src="assets/plugins/simplebar/js/simplebar.js"></script>
        <!-- waves effect js -->
        <script src="assets/js/waves.js"></script>
        <!-- sidebar-menu js -->
        <script src="assets/js/sidebar-menu.js"></script>
        <!-- Custom scripts -->
        <script src="assets/js/app-script.js"></script>

        <!--Data Tables js-->
        <script src="assets/plugins/bootstrap-datatable/js/jquery.dataTables.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/dataTables.bootstrap4.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/dataTables.buttons.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/buttons.bootstrap4.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/jszip.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/pdfmake.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/vfs_fonts.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/buttons.html5.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/buttons.print.min.js"></script>
        <script src="assets/plugins/bootstrap-datatable/js/buttons.colVis.min.js"></script>

        <script>
            $(document).ready(function() {
                //Default data table
                $('#default-datatable').DataTable();


                var table = $('#example').DataTable({
                    lengthChange: false,
                    buttons: ['copy', 'excel', 'pdf', 'print', 'colvis']
                });

                table.buttons().container()
                        .appendTo('#example_wrapper .col-md-6:eq(0)');

            });

        </script>

    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/table-data-tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:53:17 GMT -->
</html>
