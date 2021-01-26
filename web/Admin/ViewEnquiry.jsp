

<%@page import="Com.Admin.Dao.EnquiryDao"%>
<%@page import="Com.Admin.Model.EnquiryModel"%>

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
                                <div class="card-header d100"><i class="fa fa-table"></i> Report


                                </div>
                                <div class="card-body">
                                    <div id="LDiv">
                                        <div class="table-responsive">
                                            <table id="example" class="table table-bordered">

                                                <thead>
                                                    <tr>

                                                        <th>SR No</th>
                                                        <th>Name</th>
                                                        <th>Date</th>
                                                        
                                                        <th>Mobile </th>
                                                        <th>Email</th>
                                                        <th>City</th>
                                                       
                                                        <th>Subject</th>
                                                        <th>Message</th>
                                                        <th>Delete</th>


                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <%     
                                                    int h=0;
                                                    List<EnquiryModel> mm = new EnquiryDao().getAll();
                                                        for (EnquiryModel m : mm) {
                                                            h++;
//                                                            MemberModel me=new MemberDao().getById(m.getUserID());
                                                    %>
                                                    <tr>
                                                        <td><%=h%></td>
                                                        <td><%=m.getName() %></td>
                                                        <td><%=m.getRDate() %></td>
                                                        <td><%=m.getMobile() %></td>
                                                        <td><%=m.getEmail() %></td>
                                                        <td><%=m.getCity() %></td>
                                                        
                                                        <td><%=m.getSubject() %></td>
                                                        <td><%=m.getMessage() %></td>
                                                       
                                                        <td> 
                                                            <a href="../DeleteEnquery?id=<%=m.getId()%>" class="btn-sm btn btn-primary shadow-primary btn-round btn-block waves-effect waves-light">Delete</a>

                                                        </td>

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
