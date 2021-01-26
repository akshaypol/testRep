
<%@page import="java.text.DecimalFormat"%>
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
        <%@include file="Css.jsp" %>


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
            td{
                font-size: 16px;
                font-weight: 600;

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
                    <%                        MemberModel k = new MemberDao().getById(sidebarr.getId());
                        DecimalFormat df = new DecimalFormat("#.##");
                        int cnt1 = 0, cnt2 = 0;
                        int income1 = 0, income2 = 0;
                        //1st level
                        List<Long> arrone = new ArrayList();
                        List<MemberIDModel> nm1 = new MemberIDDao().getBySponcerID(k.getId());
                        int MemCnt = 0;
                        int TCount = 0;

                        for (MemberIDModel n : nm1) {
                            MemberModel h7 = new MemberDao().getById(n.getId());
                            if (h7.isStatus()) {
                                long neki = n.getUseriD();
                                arrone.add(neki);
                            }
                        }

                        for (MemberIDModel n : nm1) {
                            MemberModel h7 = new MemberDao().getById(n.getId());
                            if (h7.isStatus()) {
                                if (TCount < 5) {

                                    TCount++;
                                }
                            }
                        }
                        List<Long> arrtwo = new ArrayList();
                        for (int g = 0; g < arrone.size(); g++) {

                            List<MemberIDModel> n1 = new MemberIDDao().getBySponcerID(arrone.get(g));
                            if (g <= 4) {
                                if (n1.size() >= 5) {
                                    arrtwo.add(arrone.get(g));
                                }
                            }
                        }
                        System.out.println("array two size" + arrtwo.size());
                        for (int g = 0; g < arrtwo.size(); g++) {
                            List<MemberIDModel> n2 = new MemberIDDao().getBySponcerID(arrtwo.get(g));
                            int pj = 0;
                            for (MemberIDModel g1 : n2) {
                                MemberModel h7 = new MemberDao().getById(g1.getId());

                                if (pj < 5) {
                                    if (h7.isStatus()) {
                                        MemCnt++;
                                        pj++;
                                    }

                                }
                            }
                        }
                    %>

                    <div class="row">

                        <div class="col-lg-12">
                            <h6 class="text-uppercase mt-3">My Royalty Report</h6>
                            <hr>
                            <ul >
                                <li>
                                    Your 5 Direct Donors and their 5 Direct Donors.
                                </li>
                                <li>
                                    You Will Receive Royalty Donation Unlimitedly Forever.
                                </li>
                                <li>
                                    25% Amount Will Be Distributed Amongst the Qualifiers equally.
                                </li>
                            </ul>
                            <div class="w100">
                                <div class="W50 text-center">
                                    <div class="W50 text-center">
                                        <h5>Your Direct </h5>
                                        <%                                            if (TCount < 5) {%>
                                        <div class="card bg-pattern-danger">  
                                            <%  } else {%>
                                            <div class="card bg-pattern-success">

                                                <%}
                                                %>

                                                <div class="card-body" style="background-color:#faebd700">
                                                    <div class="media">
                                                        <div class="media-body text-center">
                                                            <h4 class="text-white"><%=TCount%></h4> 
                                                            <%
                                                                if (TCount < 5) {%>
                                                            <span class="text-white">Incomplete</span> 
                                                            <%  } else {%>
                                                            <span class="text-white">Complete</span> 

                                                            <%}
                                                            %>

                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="W50 text-center">

                                            <h5>Their Direct </h5>
                                            <%
                                                if (MemCnt < 25) {%>
                                            <div class="card bg-pattern-danger">
                                                <%
                                                } else {%>
                                                <div class="card bg-pattern-success">
                                                    <%}

                                                    %>

                                                    <div class="card-body" style="background-color:#faebd700">
                                                        <div class="media">
                                                            <div class="media-body text-center">
                                                                <h4 class="text-white"><%=MemCnt%></h4> 
                                                                <%
                                                                    if (MemCnt == 25) {%>
                                                                <span class="text-white">Complete</span>
                                                                <%
                                                                } else {
                                                                %>
                                                                <span class="text-white">Incomplete</span>
                                                                <%
                                                                    }

                                                                %>


                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>

                                            </div>



                                        </div>

                                        <div class="W50 text-center">
                                            <%                                            if (TCount == 5 && MemCnt == 25) {
                                            %>
                                            <div class="card bg-pattern-success">
                                                <%
                                                } else {%>
                                                <div class="card bg-pattern-danger">
                                                    <%
                                                        }
                                                    %>




                                                    <div class="card-body" style="background-color:#faebd700">
                                                        <div class="media">
                                                            <div class="media-body text-center">
                                                                <%                                                        if (k.isBonusStatus()) {%>
                                                                <h4 class="text-white">Achieve Royalty </h4> 

                                                                <span class="text-white"><%=k.getBonusStatusDate()%></span>
                                                                <%
                                                                } else {
                                                                %>
                                                                <h4 class="text-white">Royalty Still Not Achieve </h4> 
                                                                <%
                                                                    }

                                                                %>

                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>   

                                        </div>                                 
                                        <br>
                                        <hr>
                                        <%                                        if (k.isBonusStatus()) {%>

                                        <div class="w100">
                                            <div class="W50 text-center">
                                                <div class="W50 text-center">

                                                    <div class="card bg-pattern-success" style="background-color:#4f13ead6">
                                                        <div class="card-body" style="background-color:#faebd700">
                                                            <div class="media">
                                                                <div class="media-body text-center">
                                                                    <%
                                                                        TransactionModel tm = new TransactionDao().getUserID(k.getId());

                                                                    %>
                                                                    <h4 class="text-white"><%=df.format(tm.getBonusToday())%></h4> 
                                                                    <span class="text-white">Yesterday Royalty</span> 
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="W50 text-center">

                                                    <div class="card bg-pattern-success" style="background-color:#a7062d">
                                                        <div class="card-body" style="background-color:#faebd700">
                                                            <div class="media">
                                                                <div class="media-body text-center">
                                                                    <h4 class="text-white"><%=df.format(tm.getBonusT())%></h4> 
                                                                    <span class="text-white">Total Royalty</span> 
                                                                </div>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <div class="W50 text-center">
                                                <div class="W50 text-center">

                                                    <div class="card bg-pattern-success" style="background-color:#06609c">
                                                        <div class="card-body" style="background-color:#faebd700">
                                                            <div class="media">
                                                                <div class="media-body text-center">
                                                                    <%
                                                                        Date d = new Date();
                                                                        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy");
                                                                        String ldate = formatter.format(d);
//            System.out.println("ldate is" + ldate);
                                                                        List<MemberModel> tr = new MemberDao().getAll();
                                                                        int ToReg = 0;
                                                                        for (MemberModel t : tr) {

                                                                            String Acd = t.getActivationDate();
                                                                            String ActivationDate[] = Acd.split(" ");

//                System.out.println("ActivationDate is" + ActivationDate[0]);
                                                                            if (ActivationDate[0].equals(ldate) && t.isStatus()) {
//                    System.out.println("ActivationDate is" + ActivationDate[0]);
                                                                                ToReg++;
                                                                            }

                                                                        }

                                                                    %>
                                                                    <h4 class="text-white"><%=ToReg%></h4> 
                                                                    <span class="text-white">Today's Paid ID</span> 
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="W50 text-center">

                                                    <div class="card bg-pattern-success" style="background-color:#a73806">
                                                        <div class="card-body" style="background-color:#faebd700">
                                                            <div class="media">
                                                                <div class="media-body text-center">
                                                                    <%

                                                                        List<MemberModel> ll = new MemberDao().getByBonusSatus();
                                                                        int Bcnt = 0;
                                                                        for (MemberModel l : ll) {
                                                                            Bcnt++;
                                                                        }
                                                                    %>
                                                                    <h4 class="text-white"><%=Bcnt%></h4> 
                                                                    <span class="text-white">Royalty Achievers</span> 
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>    

                                        <%

                                            }
                                        %>


                                        <br>
                                        <hr>
                                        <h5>Your 5 Direct ID And Their Direct 5 ID (Active ID's)</h5>
                                        <div class="table-responsive">
                                            <table class="table table-light table-striped shadow-light ">

                                                <tbody>

                                                    <!--                                                <tr style="    background-color: #ff4343;color: #ffF">
                                                    <%                int mp = 0;
                                                        for (MemberIDModel n : nm1) {

                                                            MemberModel h7 = new MemberDao().getById(n.getId());
                                                            if (h7.isStatus()) {
                                                                if (mp < 5) {
                                                    %>
                                                    <td>
                                                    <%=h7.getUsername()%>

                                                </td>

                                                    <%
                                                                    mp++;
                                                                }
                                                            }
                                                        }

                                                    %>
                                                </tr>-->

                                                    <tr>

                                                        <%                              int o = 0;

                                                            for (int g = 0; g < arrtwo.size(); g++) {
                                                                o++;
                                                                MemberModel h7 = new MemberDao().getById(arrtwo.get(g));
                                                                List<MemberIDModel> n2 = new MemberIDDao().getBySponcerID(arrtwo.get(g));
                                                                if (n2.size() >= 5) {
                                                                    //                                                                System.out.println("array id "+arrtwo.get(g)+"size"+n2.size());
%>
                                                        <td>
                                                            <table>
                                                                <tr style="background-color: greenyellow;">
                                                                    <td colspan="2" class="text-center">
                                                                        <span><%=o%>)&nbsp;</span> 
                                                                        <%=h7.getUsername()%>
                                                                    </td>
                                                                </tr>

                                                                <%
                                                                    int pj = 0;
                                                                    for (MemberIDModel g1 : n2) {
                                                                        //                                                                    System.out.println("inFOrLOOP");
                                                                        MemberModel h8 = new MemberDao().getById(g1.getUseriD());

                                                                        if (pj < 5) {

                                                                            //                                                                         System.out.println("inIIIIIIIIFFFFFFFFFFFFLOOP");
                                                                            if (h8.isStatus()) {
                                                                                pj++;
                                                                                //                                                                            System.out.println("AAAACCCCCTTTIIIIIVVEEEE");
                                                                                //                                                                             System.out.println("active id "+g1.getUseriD()+"Count"+pj);
%>
                                                                <tr>

                                                                    <td><span><%=pj%>) &nbsp;</span> <%=h8.getUsername()%></td>
                                                                </tr>
                                                                <%
                                                                            }
                                                                        }

                                                                    }


                                                                %>
                                                            </table>


                                                        </td>     
                                                        <%                                                                }
                                                            }
                                                        %>



                                                    </tr>   
                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div><!-- End Row-->
                            </div><!-- End Row-->



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
