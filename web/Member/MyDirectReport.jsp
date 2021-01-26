
<%@page import="Com.Member.Dao.TransactionDao"%>
<%@page import="Com.Member.Model.TransactionModel"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Dao.MemberIDDao"%>
<%@page import="Com.Member.Model.MemberIDModel"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from codervent.com/rocker/color-version/table-data-tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:100:15 GMT -->
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <%@include file="Title.jsp" %>
        <!-- simplebar CSS-->
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
        <style>
            table
            {

                border:1px solid black;
            }
            td
            {
                font-size:13px;
                padding-left:3px;
                border:1px solid black;
            }
            th
            {
                padding-top:5px;
                padding-bottom:5px;
                font-size:12px;
            }
            table.dataTable thead>tr>th.sorting_asc, table.dataTable thead>tr>th.sorting_desc, table.dataTable thead>tr>th.sorting, table.dataTable thead>tr>td.sorting_asc, table.dataTable thead>tr>td.sorting_desc, table.dataTable thead>tr>td.sorting {
                padding-right: 0px;
                opacity: 1px;
            }
            th.sorting_desc
            {
                padding-right: 0px;

            }
            td.sorting_asc
        </style>
        <style>
            .MyTxt{
                font-size: 16px;
                font-weight: 600;
                color: red;
            }
            .card-body{
                background-color:#82828245;
                padding: 0.6rem;
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

                    <%                                        //1st level
                        int count = 0;
                        List<Long> arr1 = new ArrayList();
                        MemberModel gj = new MemberDao().getById(sidebarr.getId());
                        List<MemberIDModel> nm1 = new MemberIDDao().getBySponcer(gj.getId());
                        for (MemberIDModel n : nm1) {
                            long neki = n.getUseriD();
                            arr1.add(neki);
                            if (n.getSponceID() == gj.getId()) {
                                count++;
                            }
                        }
                        long amount = count * 100;
                    %>

                    <%
                        List<Long> arr2 = new ArrayList();
                        count = 0;
                        long amount1 = 0;
                        for (int j = 0; j < arr1.size(); j++) {

                            List<MemberIDModel> nm2 = new MemberIDDao().getByParent(arr1.get(j));

                            for (MemberIDModel n1 : nm2) {
                                long neki = n1.getUseriD();
                                arr2.add(neki);
                                if (n1.getSponceID() == gj.getId()) {
                                    count++;
                                }
                            }
                            amount1 = count * 100;

                        }

                        List<Long> arr3 = new ArrayList();
                        count = 0;
                        long amount2 = 0;
                        for (int j = 0; j < arr2.size(); j++) {

                            List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arr2.get(j));

                            for (MemberIDModel n2 : nm3) {
                                long neki = n2.getUseriD();
                                arr3.add(neki);
                                if (n2.getSponceID() == gj.getId()) {
                                    count++;
                                }
                            }
                            amount2 = count * 100;

                        }

                        List<Long> arr4 = new ArrayList();
                        count = 0;
                        long amount3 = 0;
                        for (int j = 0; j < arr3.size(); j++) {

                            List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arr3.get(j));

                            for (MemberIDModel n2 : nm3) {
                                long neki = n2.getUseriD();
                                arr4.add(neki);
                                if (n2.getSponceID() == gj.getId()) {
                                    count++;
                                }
                            }
                            amount3 = count * 100;

                        }

                        List<Long> arr5 = new ArrayList();
                        count = 0;
                        long amount4 = 0;
                        for (int j = 0; j < arr4.size(); j++) {

                            List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arr4.get(j));

                            for (MemberIDModel n2 : nm3) {
                                long neki = n2.getUseriD();
                                arr5.add(neki);
                                if (n2.getSponceID() == gj.getId()) {
                                    count++;
                                }
                            }
                            amount4 = count * 100;

                        }

                        List<Long> arr6 = new ArrayList();
                        count = 0;
                        long amount5 = 0;
                        for (int j = 0; j < arr5.size(); j++) {

                            List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arr5.get(j));

                            for (MemberIDModel n2 : nm3) {
                                long neki = n2.getUseriD();
                                arr6.add(neki);
                                if (n2.getSponceID() == gj.getId()) {
                                    count++;
                                }
                            }
                            amount5 = count * 100;

                        }

                        List<Long> arr7 = new ArrayList();
                        count = 0;
                        long amount6 = 0;
                        for (int j = 0; j < arr6.size(); j++) {

                            List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arr6.get(j));

                            for (MemberIDModel n2 : nm3) {
                                long neki = n2.getUseriD();
                                arr7.add(neki);
                                if (n2.getSponceID() == gj.getId()) {
                                    count++;
                                }
                            }
                            amount6 = count * 100;

                        }

                        List<Long> arr8 = new ArrayList();
                        count = 0;
                        long amount7 = 0;
                        for (int j = 0; j < arr7.size(); j++) {

                            List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arr7.get(j));

                            for (MemberIDModel n2 : nm3) {
                                long neki = n2.getUseriD();
                                arr8.add(neki);
                                if (n2.getSponceID() == gj.getId()) {
                                    count++;
                                }
                            }
                            amount7 = count * 100;

                        }

                        List<Long> arr9 = new ArrayList();
                        count = 0;
                        long amount8 = 0;
                        for (int j = 0; j < arr8.size(); j++) {

                            List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arr8.get(j));

                            for (MemberIDModel n2 : nm3) {
                                long neki = n2.getUseriD();
                                arr9.add(neki);
                                if (n2.getSponceID() == gj.getId()) {
                                    count++;
                                }
                            }
                            amount8 = count * 100;

                        }

                        List<Long> arr10 = new ArrayList();
                        count = 0;
                        long amount9 = 0;
                        for (int j = 0; j < arr9.size(); j++) {

                            List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arr9.get(j));

                            for (MemberIDModel n2 : nm3) {
                                long neki = n2.getUseriD();
                                arr10.add(neki);
                                if (n2.getSponceID() == gj.getId()) {
                                    count++;
                                }
                            }
                            amount9 = count * 100;

                        }
                    %>


                    <div class="row">

                        <div class="col-lg-12">

                            <div class="card">
                                <div class="card-header"><i class="fa fa-table"></i>My Direct Details</div>
                                <div class="card-body " style=" background-color:#FFF">
                                    <div class="table-responsive">
                                        <table id="default-datatable" class="table table-striped">
                                            <!--                            <table class="table table-light table-striped shadow-light ">-->
                                            <thead>
                                                <tr>
                                                    <th>Sr.No.</th>
                                                    <th>User ID</th>
                                                    <th>User Name</th>
                                                    <th>Mobile Number</th>
                                                    <th>Registration Date </th>
                                                    <th>Activation Date</th>
                                                    <th>Status</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    MemberModel gj1 = new MemberDao().getById(sidebarr.getId());
                                                    List<MemberIDModel> nm2 = new MemberIDDao().getBySponcerID(gj1.getId());
                                                    int g = 0;
                                                    for (MemberIDModel n : nm2) {
                                                        MemberModel z = new MemberDao().getById(n.getId());
                                                        g++;
                                                %>
                                                <tr>
                                                    <td><%=g%></td>
                                                    <td><%=z.getUsername()%></td>
                                                    <td><%=z.getName()%></td>
                                                    <td><%=z.getMobNO() %></td>
                                                    <td><%=z.getRDate()%></td>
                                                    <td><%=z.getActivationDate()%></td>
                                                    <%
                                             if (z.isStatus()) {%>
                                                    <td><span class="btn btn-sm btn-success"> Active</span></td>  
                                                    <% } else {
                                                    %>
                                                    <td><span class="btn btn-sm btn-danger"> Deactivate </span></td>  
                                                    <%
                                                        }
                                                    %>

                                                </tr> 


                                                <%
                                                    }

                                                %>





                                                <!--                                    <tr>
                                                                                        <td colspan="4"></td>
                                                <%                                            TransactionModel t = new TransactionDao().getUserID(gj.getId());
                                                %>
                                                <td class="MyTxt">Total Income:<%=t.getDirectT()%></td>
                                            </tr>-->
                                            </tbody>
                                        </table>

                                    </div>
                                </div>
                            </div><!-- End Row-->
                        </div><!-- End Row-->
                    </div><!-- End Row-->
                </div><!-- End Row-->
                <br><br>
                <div class="row">
                    <!--<div class="text-center"> <span class="MyTxt">Total Level Income Earned</span></div><br>-->
                    <div class="col-12 col-lg-6 col-xl-3">
                        <div class="card bg-pattern-danger">
                            <div class="card-body">
                                <div class="media">
                                    <%

                                        long v = amount + amount1 + amount2 + amount3 + amount4 + amount5 + amount6 + amount7 + amount8 + amount9;
                                    %>
                                    <div class="media-body text-center">
                                        <h4 class="text-white"><%=v%></h4>

                                        <span class="text-white">Direct Amount (If All  ID Are Active)</span>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-3">
                        <div class="card bg-pattern-danger">
                            <div class="card-body">
                                <div class="media">
                                    <div class="media-body text-center">
                                        <%
                                            double b = t.getDirectI() / 100;

                                        %>
                                        <h4 class="text-white"><%=(int) b%></h4>

                                        <span class="text-white"> ID  Activated(When I was Active)</span>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-3">
                        <div class="card bg-pattern-danger">
                            <div class="card-body">
                                <div class="media">
                                    <div class="media-body text-center">
                                        <h4 class="text-white"><%=t.getDirectI()%></h4>

                                        <span class="text-white">Total Direct Amount this Month</span>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-12 col-lg-6 col-xl-3">
                        <div class="card bg-pattern-danger">
                            <div class="card-body">
                                <div class="media">
                                    <div class="media-body text-center">
                                        <h4 class="text-white"><%=t.getDirectT()%></h4>

                                        <span class="text-white">Total Direct Amount Earned</span>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>

                </div>
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
