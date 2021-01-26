
<%@page import="Com.Member.Dao.TransactionDao"%>
<%@page import="Com.Member.Model.TransactionModel"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Dao.MemberIDDao"%>
<%@page import="Com.Member.Model.MemberIDModel"%>
<%@page import="java.util.ArrayList"%>
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

            ul li
            {
                color:red;
                font-weight:600;

            }
            td
            {
                font-size:13px;
                padding-left:3px;

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


                    <div class="row">

                        <div class="col-lg-12">
                            <h6 class="text-uppercase mt-3">Level Report</h6>
                            <hr>
                            <ul >
                                <li> if 5 Direct ID Will Not Be Done Then You Will Get Your Income Only Till 3 Level And When You Will Complete 5 Direct ID Then You Will Get Your Income Upto 8 Level.
                                </li>
                                <li>
                                    You Will Receive Payment Only And Only When You Are Active 
                                </li>
                            </ul>


                            <div class="table-responsive">
                                <table class="table table-light table-striped shadow-light ">
                                    <thead>
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Level</th>
                                            <th>Total ID</th>
                                            <th> Your Team</th>

                                            <th>Possible Income</th>
                                            <th>Paid Id</th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%                                        int cnt1 = 0;
                                            int cnt2 = 0;
                                            int cnt3 = 0;
                                            int cnt4 = 0;
                                            int cnt5 = 0, cnt6 = 0, cnt7 = 0, cnt8 = 0, cnt9 = 0, cnt25 = 0;
                                            int pc1 = 0, pc2 = 0, pc3 = 0, pc4 = 0, pc5 = 0, pc6 = 0, pc7 = 0, pc8 = 0;

                                            int TCnt = 0;
                                            int income1 = 0, income2 = 0, income3 = 0, income4 = 0, income5 = 0, income6 = 0, income7 = 0, income8 = 0;

                                            //1st level
                                            List<Long> arrone = new ArrayList();
                                            MemberModel gj = new MemberDao().getById(sidebarr.getId());
                                            List<MemberIDModel> nm1 = new MemberIDDao().getByParent(gj.getId());
                                            for (MemberIDModel n : nm1) {

                                                long neki = n.getUseriD();
                                                arrone.add(neki);
                                                MemberModel k = new MemberDao().getById(n.getId());
                                                if (k.isStatus()) {
                                                    pc1++;
                                                }
                                                cnt1++;
                                                income1 = cnt1 * 25;

                                                //2nd level
                                                List<Long> arrone2 = new ArrayList();
                                                List<MemberIDModel> nm2 = new MemberIDDao().getByParent(n.getId());
                                                for (MemberIDModel n2 : nm2) {
                                                    long neki2 = n2.getUseriD();
                                                    arrone2.add(neki2);
                                                    MemberModel k1 = new MemberDao().getById(n2.getId());
                                                    if (k1.isStatus()) {
                                                        pc2++;
                                                    }
                                                    cnt2++;
                                                    income2 = cnt2 * 25;

                                                    //3rd level
                                                    List<Long> arrone3 = new ArrayList();
                                                    List<MemberIDModel> nm3 = new MemberIDDao().getByParent(n2.getId());
                                                    for (MemberIDModel n3 : nm3) {
                                                        long neki3 = n3.getUseriD();
                                                        arrone3.add(neki3);
                                                        MemberModel k3 = new MemberDao().getById(n3.getId());
                                                        if (k3.isStatus()) {
                                                            pc3++;
                                                        }
                                                        if (cnt3 < 125) {
                                                            cnt3++;
                                                            income3 = cnt3 * 25;
                                                        }
                                                        //4th level
                                                        List<Long> arrone4 = new ArrayList();
                                                        List<MemberIDModel> nm4 = new MemberIDDao().getByParent(n3.getId());
                                                        for (MemberIDModel n4 : nm4) {
                                                            long neki4 = n4.getUseriD();
                                                            arrone4.add(neki4);
                                                            MemberModel k4 = new MemberDao().getById(n4.getId());
                                                            if (k4.isStatus()) {
                                                                pc4++;
                                                            }
                                                            cnt4++;
                                                            income4 = cnt4 * 25;

                                                            //5th level
                                                            List<Long> arrone5 = new ArrayList();
                                                            List<MemberIDModel> nm5 = new MemberIDDao().getByParent(n4.getId());
                                                            for (MemberIDModel n5 : nm5) {
                                                                long neki5 = n5.getUseriD();
                                                                arrone5.add(neki5);
                                                                MemberModel k5 = new MemberDao().getById(n5.getId());
                                                                if (k5.isStatus()) {
                                                                    pc5++;
                                                                }
                                                                cnt5++;
                                                                income5 = cnt5 * 25;

                                                                //6th level
                                                                List<Long> arrone6 = new ArrayList();
                                                                List<MemberIDModel> nm6 = new MemberIDDao().getByParent(n5.getId());
                                                                for (MemberIDModel n6 : nm6) {
                                                                    long neki6 = n6.getUseriD();
                                                                    arrone6.add(neki6);
                                                                    MemberModel k6 = new MemberDao().getById(n6.getId());
                                                                    if (k6.isStatus()) {
                                                                        pc6++;
                                                                    }
                                                                    cnt6++;
                                                                    income6 = cnt6 * 25;

                                                                    //7th level
                                                                    List<Long> arrone7 = new ArrayList();
                                                                    List<MemberIDModel> nm7 = new MemberIDDao().getByParent(n6.getId());
                                                                    for (MemberIDModel n7 : nm7) {
                                                                        long neki7 = n7.getUseriD();
                                                                        arrone7.add(neki7);
                                                                        cnt7++;
                                                                        MemberModel k7 = new MemberDao().getById(n7.getId());
                                                                        if (k7.isStatus()) {
                                                                            pc7++;
                                                                        }
                                                                        income7 = cnt7 * 25;

                                                                        //8th level
                                                                        List<Long> arrone8 = new ArrayList();
                                                                        List<MemberIDModel> nm8 = new MemberIDDao().getByParent(n7.getId());
                                                                        for (MemberIDModel n8 : nm8) {
                                                                            long neki8 = n8.getUseriD();
                                                                            arrone8.add(neki8);
                                                                            cnt6++;
                                                                            MemberModel k8 = new MemberDao().getById(n8.getId());
                                                                            if (k8.isStatus()) {
                                                                                pc8++;
                                                                            }
                                                                            income8 = cnt8 * 25;

                                                                            //9th level
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            TCnt = income1 + income2 + income3 + income4 + income5 + income6 + income7 + income8;
                                        %>
                                        <tr>
                                            <td>1</td>
                                            <td> 1st</td>
                                            <td>5</td>
                                            <td><%=cnt1%></td>
                                            <td><%=income1%></td>
                                            <td><%=pc1%></td>

                                        </tr>

                                        <tr>
                                            <td>2</td>
                                            <td> 2nd</td>
                                            <td>25</td>
                                            <td><%=cnt2%></td>
                                            <td><%=income2%></td>
                                            <td><%=pc2%></td>

                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td> 3rd</td>
                                            <td>125</td>
                                            <td><%=cnt3%></td>
                                            <td><%=income3%></td>
                                            <td><%=pc3%></td>

                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td> 4th</td>
                                            <td>625</td>
                                            <td><%=cnt4%></td>
                                            <td><%=income4%></td>
                                            <td><%=pc4%></td>

                                        </tr>
                                        <tr> 
                                            <td>5</td>
                                            <td> 5th</td>
                                            <td>3,125</td>
                                            <td><%=cnt5%></td>
                                            <td><%=income5%></td>
                                            <td><%=pc5%></td>


                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td> 6th</td>
                                            <td>15,625</td>
                                            <td><%=cnt6%></td>
                                            <td><%=income6%></td>
                                            <td><%=pc6%></td>

                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td> 7th</td>
                                            <td>78,125</td>
                                            <td><%=cnt7%></td>
                                            <td><%=income7%></td>
                                            <td><%=pc7%></td>

                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td> 8th</td>
                                            <td>3,90,625</td>
                                            <td><%=cnt8%></td>
                                            <td><%=income8%></td>
                                            <td><%=pc8%></td>

                                        </tr>

                                        <!--                                    <tr>
                                                                                <td colspan="5"></td>
                                        <%
                                            TransactionModel t = new TransactionDao().getUserID(sidebarr.getId());
                                        %>
                                        <td class="MyTxt">Total Income:<%=t.getLevelIT()%></td>
                                    </tr>-->
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div><!-- End Row-->
                    <br><br>
                    <div class="row">
                        <!--<div class="text-center"> <span class="MyTxt">Total Level Income Earned</span></div><br>-->
                        <div class="col-12 col-lg-6 col-xl-3">
                            <div class="card bg-pattern-danger">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body text-center">
                                            <h4 class="text-white"><%=TCnt%></h4>

                                            <span class="text-white">Level Amount (If All Level ID Are Active)</span>
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
                                                double b = t.getLevelI() / 25;

                                            %>
                                            <h4 class="text-white"><%=(int) b%></h4>

                                            <span class="text-white">ID Activated(When I was Active)</span>
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
                                            <h4 class="text-white"><%=t.getLevelI()%></h4>

                                            <span class="text-white">Total Level Amount This Month</span>
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
                                            <h4 class="text-white"><%=t.getLevelIT()%></h4>

                                            <span class="text-white">Total Level Amount Earned</span>
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
