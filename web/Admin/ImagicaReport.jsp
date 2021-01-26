

<%@page import="java.util.Locale"%>
<%@page import="java.time.LocalDate"%>
<%@page import="Com.Member.Dao.MemberIDDao"%>
<%@page import="Com.Member.Model.MemberIDModel"%>
<%@page import="Com.Admin.Dao.EnquiryDao"%>
<%@page import="Com.Admin.Model.EnquiryModel"%>
<%@page import="Com.Member.Dao.WithDrawDao"%>
<%@page import="Com.Member.Model.WithDrawModel"%>
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
            .hideclass{
                display:none;
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

                            <div class="card">
                                <div class="card-header d100"><i class="fa fa-table"></i>Imagica Report


                                </div>
                                <div class="card-body">
                                    <div id="LDiv">
                                        <div class="table-responsive">
                                            <table id="example" class="table table-bordered">

                                                <thead>
                                                    <tr>
                                                        <th>Sr No</th>
                                                        <th>Name</th>
                                                       
                                                        <th>Mobile </th>
                                                        <th>Reg. Date </th>
                                                       
                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <%                                                        List<MemberModel> m = new MemberDao().getAllImagicaStatus();

                                                        int h = 1;
                                                        for (MemberModel g : m) {
                                                    %>
                                                    <tr>
                                                        <td><%=h%></td>
                                                        <td><%=g.getName()%>&nbsp;<%=g.getLName() %> </td>
                                                       
                                                        <td><%=g.getMobNO()%></td>
                                                        <td><%=g.getRDate() %></td>
                                                       
                                                    </tr>
                                                    <%
                                                            h++;
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
