

<%@page import="java.text.DecimalFormat"%>
<%@page import="Com.Member.Dao.WithDrawDao"%>
<%@page import="Com.Member.Model.WithDrawModel"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%@page import="Com.Member.Dao.MemberDao"%>
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
        <%@include file="Title.jsp" %>
        <%@include file="Css.jsp" %>
        <script>
            $('document').ready(function() {
                $('#cancel').click(function() {
                    location.reload();
                });
            });
        </script>
        <style>
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
            .btn {
                font-size: 8px;
                /* font-weight: 600; */
                /* letter-spacing: 1px; */
                /* padding: 10px 20px; */
                border-radius: .25rem;
                text-transform: uppercase;
                box-shadow: 0 0.125rem 0.25rem rgba(0, 0, 0, .075);
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
                    <%    MemberModel me = (MemberModel) session.getAttribute("Member");
                        MemberModel g = new MemberDao().getById(me.getId());
                         DecimalFormat df = new DecimalFormat("#.##");
                    %>
                    <div class="row">
                        <div class="col-12 col-lg-4 col-xl-4">
                            <div class="card bg-pattern-danger">
                                <div class="card-body " style="background-color:#9c525200 " >
                                    <div class="media">
                                        <div class="media-body text-left">
                                            <h4 class="text-white"><%=df.format(g.getWAmmount())%></h4>
                                            <span class="text-white">Total Wallet Amount</span>
                                        </div>
                                        <div class="align-self-center w-circle-icon rounded-circle bg-contrast">
                                            <i class="icon-wallet text-white"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                             <div class="col-12 col-lg-6 col-xl-3">
                            <div class="card bg-pattern-success">
                                <div class="card-body" style="background-color:#9c525200 " >
                                    <div class="media">
                                        <div class="media-body text-left">
                                            <%
                                                double withdrawamt = 0;
                                                List<WithDrawModel> w = new WithDrawDao().getByUserID(g.getId());
                                                for (WithDrawModel wm : w) {
                                                    withdrawamt = withdrawamt + wm.getWamount();
                                                }
                                            %>
                                            <h4 class="text-white"><%=df.format(withdrawamt)%></h4>
                                            <span class="text-white">Total Withdraw Amount</span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                    <br><br>
                    <div class="row">

                        <div class="col-lg-12">

                            <div class="card">
                                <div class="card-header d100"><i class="fa fa-table"></i>My Wallet Payment


                                </div>
                                <div class="card-body">
                                    <div id="LDiv">
                                        <div class="table-responsive">
                                            <table id="default-datatable" class="table table-bordered">

                                                <thead>
                                                    <tr>
                                                        <th>Sr. No.</th>
                                                        <th>Withdraw</th>
                                                        <th>Deduction</th>
                                                        <th>Net Amount Payout </th>
                                                        <th>Paid/Money Returned Date</th>
                                                        <th>Paid Status</th>
                                                        <th>Money Returned</th>

                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <%
                                                        int i = 0;
                                                        List<WithDrawModel> mm = new WithDrawDao().getByUser(me.getId());
                                                        for (WithDrawModel m : mm) {
                                                            i++;
                                                            long tamt = (m.getWamountMain() * 10) / 100;
                                                    %>
                                                    <tr>
                                                        <td><%=i%></td>
                                                        <td><%=m.getWamountMain()%></td>
                                                        <td><%=tamt%></td>
                                                        <td><%=m.getWamount()%></td>
                                                        <%
                                                            if (m.getWDate().equals("") || m.getWDate() == null) {
                                                        %>
                                                        <td></td>
                                                        <%
                                                        } else {
                                                        %>
                                                        <td><%=m.getWDate()%></td>
                                                        <%
                                                            }
                                                        %>
                                                        <%
                                                            if (m.isStatus()) {
                                                        %>
                                                        <td>Paid</td>
                                                        <%
                                                        } else {%>
                                                        <td>Not Paid</td>
                                                        <%
                                                            }
                                                        %>
                                                        <%
                                                            if (m.isMoneyReturned()) {
                                                        %>
                                                        <td>Money Returned To Wallet</td>
                                                        <%
                                                        } else {%>
                                                        <td></td>
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


        <%@include file="Script.jsp" %>

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
