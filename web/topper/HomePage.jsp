<%@page import="java.time.Month"%>
<%@page import="java.text.ParseException"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="Com.Member.Dao.TransactionDao"%>
<%@page import="Com.Member.Model.TransactionModel"%>
<%@page import="Com.Member.Dao.GivenEpinDao"%>
<%@page import="Com.Member.Model.GivenEpinModel"%>
<%@page import="Com.Member.Dao.EPinDao"%>
<%@page import="Com.Member.Model.EPinModel"%>
<%@page import="Com.Member.Dao.MemberIDDao"%>
<%@page import="Com.Member.Model.MemberIDModel"%>
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

                    <div class="row">
                        <div class="col-lg-12">

                            <%                                MemberModel me = (MemberModel) session.getAttribute("Member");


                            %>

                        </div>
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header"><i class="fa fa-table"></i>My Id  </div>
                                <div class="card-body">

                                    <div class="table-responsive">


                                        <table id="" class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <td>#</td>

                                                    <th>Name</th>
                                                    <th>Mobile Number</th>
                                                    <th>Register Date</th>
                                                    <th>Days Completed</th>


                                                </tr>
                                            </thead>
                                            <tbody>

                                                <%                                                    List<MemberModel> h2 = new MemberDao().getBySpID(me.getUsername());
                                                    System.out.println(h2.size());
                                                    int i = 1;
                                                     long diff=0;
                                                    for (MemberModel h1 : h2) {
                                                %>
                                                <tr>
                                                    <td><%=i%></td>
                                                    <td><%=h1.getName()%></td>
                                                    <td><%=h1.getMobNO()%></td>
                                                    <%
                                                        try {
                                                            SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
                                                            String dateInString = h1.getRDate();
                                                            System.out.println(dateInString);
                                                            Date dateStart = formatter.parse(dateInString);
                                                            System.out.println(dateStart);

                                                            Date dateEnd = new Date();

                                                            //time is always 00:00:00, so rounding should help to ignore the missing hour when going from winter to summer time, as well as the extra hour in the other direction
                                                             diff = Math.round((dateEnd.getTime() - dateStart.getTime()) / (double) 86400000);
                                                            System.out.println("Days" + diff);

                                                        } catch (ParseException e) {
                                                            e.printStackTrace();
                                                        }

                                                    %>    

                                                    <td><%=h1.getRDate()%></td>
                                                    <td><%=diff%></td>


                                                </tr>     
                                                <%
                                                        i++;
                                                    }


                                                %>



                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div><!-- End Row-->
                    <br><br><br>


                </div>
                <!-- End container-fluid-->
                <div class="modal  fade" id="ContactModel">
                    <div class="modal-dialog ">
                        <div class="modal-content border-primary">
                            <div class="modal-header bg-primary">
                                <h5 class="modal-title text-white"><i class="fa fa-star"></i>Bank Details</h5>
                                <button type="button" class="close text-white" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div id="PayID"></div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-inverse-primary" data-dismiss="modal"><i class="fa fa-times"></i> OK</button>
                            </div>
                        </div>
                    </div>
                </div>
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
