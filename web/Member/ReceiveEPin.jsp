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
                           
                                <%                                    MemberModel me = (MemberModel) session.getAttribute("Member");
                                    int uPin = 0;
                                    int unPin  = 0;
                                    List<EPinModel> c1 = new EPinDao().getMyGivenPin(me.getId());

                                    for (EPinModel g4 : c1) {
                                        if (g4.isPinStatus()) {
                                            unPin++;
                                        } else {
                                            uPin++;
                                        }

                                    }

                                 
                                %>
                               
                        </div>
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header"><i class="fa fa-table"></i>My Received E-Pins</div>
                                <div class="card-body">
                                    <table class="table table-bordered">
                                        <tr>
                                            <td>My Used Pin</td>
                                            <td>My Unused Pin</td>
                                        </tr>
                                        <tr>
                                            <td><%=uPin %></td>
                                            <td><%=unPin%></td>
                                        </tr>
                                    </table>
                                    <div class="table-responsive">


                                        <table id="example" class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <td>Sr. No.</td>
                                                    <th>Date</th>
                                                    <th>Sender ID</th>
                                                    <th>Sender Name</th>
                                                    <th>No.of Pins</th>

                                                    <th>View</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%                                                    int i = 0;

                                                    String Username = "";
                                                    String Name = "";

                                                    List<GivenEpinModel> m = new GivenEpinDao().getByEPinGivenTo(me.getId());

                                                    for (GivenEpinModel e : m) {
                                                        i++;

                                                        if (e.getUserId() == 0) {
                                                            Username = "Admin";
                                                            Name = "Admin";
                                                        } else {

                                                            MemberModel mem = new MemberDao().getById(e.getUserId());
                                                            Username = mem.getUsername();
                                                            Name = mem.getName();
                                                        }
                                                %>
                                                <tr>
                                                    <td><%=i%></td>
                                                    <td><%=e.getEPinGivenDate()%></td>
                                                    <td><%=Username%></td>
                                                    <td><%=Name%></td>
                                                    <td><%=e.getNoOfPins()%></td>

                                                    <td><a class="btn btn-primary btn-sm waves-effect waves-light m-1 ContactModel" style="color:white" id="<%=e.getId()%>" data-toggle="modal" data-target="#ContactModel" data-backdrop="static" data-keyboard="false">View</a></td>

                                                </tr>
                                                <%

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

                    <div class="row">
                        <div class="col-lg-12">
                            <div class="card">
                                <div class="card-header"><i class="fa fa-table"></i>My(Self) Generated E-Pins</div>
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table id="default-datatable" class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <td>Sr. No.</td>
                                                    <th>Date</th>
                                                    <th>Sent To ID</th>
                                                    <th>Sent To Name</th>
                                                    <th>Pin</th>
                                                    <th>Used/Not</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    int i1 = 0;
                                                    MemberModel me1 = (MemberModel) session.getAttribute("Member");
                                                    String Username1 = "";
                                                    String Name1 = "";
                                                    List<EPinModel> m1 = new EPinDao().getByMe(me1.getId());
                                                    for (EPinModel e : m1) {
                                                        i1++;
                                                        if (e.getUserID() == 0) {
                                                            Username1 = "Admin";
                                                            Name1 = "Admin";
                                                        } else {

                                                            MemberModel mem = new MemberDao().getById(e.getUserID());
                                                            Username1 = mem.getUsername();
                                                            Name1 = mem.getName();
                                                        }
                                                %>
                                                <tr>
                                                    <td><%=i1%></td>
                                                    <td><%=e.getPinGeneratedDate()%></td>
                                                    <td><%=Username1%></td>
                                                    <td><%=Name1%></td>
                                                    <td><%=e.getPin()%></td>
                                                    <%
                                                        if (e.isPinStatus()) {
                                                    %>
                                                    <td class="btn btn-danger btn-sm text-white">Not Used</td>
                                                    <%
                                                    } else {
                                                    %>
                                                    <td class="btn btn-success btn-sm text-white">Used</td>
                                                    <%
                                                        }
                                                    %>


                                                </tr>
                                                <%
                                                    }
                                                %>

                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- End container-fluid-->
                <div class="modal fade" id="ContactModel">
                    <div class="modal-dialog">
                        <div class="modal-content border-primary">
                            <div class="modal-header bg-primary">
                                <h5 class="modal-title text-white"><i class="fa fa-star"></i>Pin Details</h5>
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
                $('.ContactModel').click(function() {
//                     alert("asdf");
                    var id = this.id;
                    var s = id;
                    var ss = s.split("_");
                    //  alert("ss is" + ss);
                    for (var i in ss) {
                        //                    document.write(ss[i]);
                        //                    document.write("<br/>");
                        //                    alert(ss[i])
                    }
                    var rowid = id;
//                        alert(id);
                    $.get("Ajax/MyEPinAjax.jsp", {id: id}, function(data) {
                        $('#PayID').html(data);
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
