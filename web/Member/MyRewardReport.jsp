
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
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>

        <meta name="description" content=""/>
        <meta name="author" content=""/>

        <!-- simplebar CSS-->
        <!-- simplebar CSS-->
        <%@include file="Title.jsp" %>
        <%@include file="Css.jsp" %>
        <style>
 ul li
            {
                color:red;
                font-weight:600;
                
            }
            @media only screen and (max-width: 400px) {
                .myimg{
                    width:120px!important;
                    padding-bottom: 20px !important;
                    border:12px solid #c49047;
                    margin-bottom: 15px;
                    /*margin-left:100px*/
                }


            }
            @media only screen and (max-width: 400px) {
                .myimg{
                    width:100%!important;
                    padding-bottom: 20px !important;
                    border:12px solid #c49047;
                    margin-bottom: 15px;
                    /*margin-left:100px*/
                }


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
                            <h6 class="text-uppercase mt-3">Reward Report</h6>
                            <hr>
                            <ul >
                                <li>
                                   Without any Direct Joining You Will be capable to Achieve The Reward.
                                </li>
                                <li>
                                    At That Time Your ID Must Be Activated .
                                </li>
                                
                            </ul>
                            <div class="table-responsive">
                                <table class="table table-light table-striped shadow-light ">
                                    <thead>
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Reward</th>
                                            <th>Level</th>
                                            <th>Total ID</th>
                                            <th>Active ID</th>
                                            <th>Achievement </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <%                                        int cnt1 = 0;
                                            int cnt2 = 0;
                                            int cnt3 = 0;
                                            int cnt4 = 0;
                                            int cnt5 = 0, cnt6 = 0, cnt7 = 0, cnt8 = 0, cnt9 = 0, cnt10 = 0;
                                            int TCnt = 0;
                                            int income1 = 0, income2 = 0, income3 = 0, income4 = 0, income5 = 0, income6 = 0, income7 = 0, income8 = 0, income9 = 0, income10 = 0;

                                            //1st level
                                            List<Long> arrone = new ArrayList();
                                            MemberModel gj = new MemberDao().getById(sidebarr.getId());
                                            List<MemberIDModel> nm1 = new MemberIDDao().getByParent(gj.getId());
                                            for (MemberIDModel n : nm1) {
                                                long neki = n.getUseriD();
                                                arrone.add(neki);
                                                cnt1++;
                                                income1 = cnt1 * 10;

                                                //2nd level
                                                List<Long> arrone2 = new ArrayList();
                                                List<MemberIDModel> nm2 = new MemberIDDao().getByParent(n.getId());
                                                for (MemberIDModel n2 : nm2) {
                                                    long neki2 = n2.getUseriD();
                                                    arrone2.add(neki2);

                                                    MemberModel k = new MemberDao().getById(n2.getId());
                                                    if (k.isStatus()) {
                                                        cnt2++;
                                                    }

                                                    income2 = cnt2 * 10;

                                                    //3rd level
                                                    List<Long> arrone3 = new ArrayList();
                                                    List<MemberIDModel> nm3 = new MemberIDDao().getByParent(n2.getId());
                                                    for (MemberIDModel n3 : nm3) {
                                                        long neki3 = n3.getUseriD();
                                                        arrone3.add(neki3);

                                                        MemberModel k2 = new MemberDao().getById(n3.getId());
                                                        if (k2.isStatus()) {
                                                            cnt3++;
                                                        }

                                                        income3 = cnt3 * 10;

                                                        //4th level
                                                        List<Long> arrone4 = new ArrayList();
                                                        List<MemberIDModel> nm4 = new MemberIDDao().getByParent(n3.getId());
                                                        for (MemberIDModel n4 : nm4) {
                                                            long neki4 = n4.getUseriD();
                                                            arrone4.add(neki4);
                                                            MemberModel k4 = new MemberDao().getById(n4.getId());
                                                            if (k4.isStatus()) {
                                                                cnt4++;
                                                            }

                                                            income4 = cnt4 * 10;

                                                            //5th level
                                                            List<Long> arrone5 = new ArrayList();
                                                            List<MemberIDModel> nm5 = new MemberIDDao().getByParent(n4.getId());
                                                            for (MemberIDModel n5 : nm5) {
                                                                long neki5 = n5.getUseriD();
                                                                arrone5.add(neki5);

                                                                MemberModel k5 = new MemberDao().getById(n5.getId());
                                                                if (k5.isStatus()) {
                                                                    cnt5++;
                                                                }

                                                                income5 = cnt5 * 10;

                                                                //6th level
                                                                List<Long> arrone6 = new ArrayList();
                                                                List<MemberIDModel> nm6 = new MemberIDDao().getByParent(n5.getId());
                                                                for (MemberIDModel n6 : nm6) {
                                                                    long neki6 = n6.getUseriD();
                                                                    arrone6.add(neki6);

                                                                    MemberModel k6 = new MemberDao().getById(n6.getId());
                                                                    if (k6.isStatus()) {
                                                                        cnt6++;
                                                                    }

                                                                    income6 = cnt6 * 10;

                                                                    //7th level
                                                                    List<Long> arrone7 = new ArrayList();
                                                                    List<MemberIDModel> nm7 = new MemberIDDao().getByParent(n6.getId());
                                                                    for (MemberIDModel n7 : nm7) {
                                                                        long neki7 = n7.getUseriD();
                                                                        arrone7.add(neki7);
                                                                        MemberModel k7 = new MemberDao().getById(n7.getId());
                                                                        if (k7.isStatus()) {
                                                                            cnt7++;
                                                                        }

                                                                        income7 = cnt7 * 10;

                                                                        //8th level
                                                                        List<Long> arrone8 = new ArrayList();
                                                                        List<MemberIDModel> nm8 = new MemberIDDao().getByParent(n7.getId());
                                                                        for (MemberIDModel n8 : nm8) {
                                                                            long neki8 = n8.getUseriD();

                                                                            arrone8.add(neki8);
                                                                            MemberModel k8 = new MemberDao().getById(n8.getId());
                                                                            if (k8.isStatus()) {
                                                                                cnt8++;
                                                                            }

                                                                            income8 = cnt8 * 10;

                                                                            //9th level
                                                                            List<Long> arrone9 = new ArrayList();
                                                                            List<MemberIDModel> nm9 = new MemberIDDao().getByParent(n8.getId());
                                                                            for (MemberIDModel n9 : nm9) {
                                                                                long neki9 = n9.getUseriD();
                                                                                arrone9.add(neki9);
                                                                                MemberModel k9 = new MemberDao().getById(n9.getId());
                                                                                if (k9.isStatus()) {
                                                                                    cnt9++;
                                                                                }
                                                                                income9 = cnt9 * 10;

                                                                                //10th level
                                                                                List<Long> arrone10 = new ArrayList();
                                                                                List<MemberIDModel> nm10 = new MemberIDDao().getByParent(n9.getId());
                                                                                for (MemberIDModel n10 : nm10) {
                                                                                    long neki10 = n10.getUseriD();
                                                                                    arrone10.add(neki10);
                                                                                    MemberModel k10 = new MemberDao().getById(n10.getId());
                                                                                    if (k10.isStatus()) {
                                                                                        cnt10++;
                                                                                    }
                                                                                    income10 = cnt10 * 10;

                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            TCnt = income1 + income2 + income3 + income4 + income5 + income6 + income7 + income8 + income9 + income10;
                                        %>
                                        <!--                                    <tr>
                                                                                <td>1</td>
                                                                                <td>Level 1</td>
                                                                                <td>5</td>
                                                                                <td><%=cnt1%></td>
                                                                                <td>NO Reward</td>
                                        
                                                                            </tr>-->

                                        <tr>
                                            <td>1</td>
                                            <td>Wrist Watch</td>

                                            <td> 2nd</td>
                                            <td>25</td>
                                            <td><%=cnt2%></td>
                                            <%
                                                if (cnt2 == 25) {
                                            %>
                                            <td><span class="btn btn-sm btn-success">Achieved</span></td>
                                            <%
                                                }


                                            %>

                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Suit Length</td>
                                            <td> 3rd</td>
                                            <td>125</td>

                                            <td><%=cnt3%></td>
                                            <%
                                                if (cnt3 == 125) {
                                            %>
                                            <td><span class="btn btn-sm btn-success">Achieved</span></td>
                                            <%
                                                }


                                            %>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Executive Bag</td>
                                            <td> 4th</td>
                                            <td>625</td>
                                            <td><%=cnt4%></td>
                                            <%
                                                if (cnt4 == 625) {
                                            %>
                                            <td><span class="btn btn-sm btn-success">Achieved</span></td>
                                            <%
                                                }


                                            %>
                                        </tr>
                                        <tr> 
                                            <td>4</td>
                                            <td>Android Mobile</td>
                                            <td> 5th</td>
                                            <td>3,125</td>

                                            <td><%=cnt5%></td>
                                            <%
                                                if (cnt5 == 3125) {
                                            %>
                                            <td><span class="btn btn-sm btn-success">Achieved</span></td>
                                            <%
                                                }


                                            %>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>Laptop</td>
                                            <td> 6th</td>
                                            <td>15,625</td>
                                            <td><%=cnt6%></td>
                                            <%
                                                if (cnt6 == 15625) {
                                            %>
                                            <td><span class="btn btn-sm btn-success">Achieved</span></td>
                                            <%
                                                }


                                            %>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>Bike</td>
                                            <td> 7th</td>

                                            <td>78,125</td>
                                            <td><%=cnt7%></td>
                                             <%
                                                if (cnt7 == 78125) {
                                            %>
                                            <td><span class="btn btn-sm btn-success">Achieved</span></td>
                                            <%
                                                }


                                            %>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>Business Fund (RS 5 Lakh)</td>
                                            <td> 8th</td>
                                            <td>3,90,625</td>

                                            <td><%=cnt8%></td>
                                            <%
                                                if (cnt8 == 390625) {
                                            %>
                                            <td><span class="btn btn-sm btn-success">Achieved</span></td>
                                            <%
                                                }


                                            %>
                                        </tr>
                                        

                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div><!-- End Row-->
                    <br><br>

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
