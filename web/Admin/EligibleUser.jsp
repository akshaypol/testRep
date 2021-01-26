

<%@page import="java.text.ParseException"%>
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
                                                        <td>#</td>
                                                        <th>UserId</th>
                                                        <th>Name</th>

                                                        <th>Mobile Number</th>
                                                        <th>Email</th>
                                                        <th>Occupation</th>
                                                        
                                                        <th>Gender</th>
                                                        <th>Age</th>
                                                        <th>Aadhaar Number</th>
                                                        <th>Pan Number</th>
                                                        <th>Member of Charch</th>
                                                        <th>City</th>
                                                        <th>Register Date</th>
                                                        <th>Days Completed</th>


                                                    </tr>
                                                </thead>
                                                <tbody>

                                                    <%                      
                                                    List<MemberModel> h2 = new MemberDao().getAll();
                                                        System.out.println(h2.size());
                                                        int i = 1;
                                                        long diff = 0;
                                                        for (MemberModel h1 : h2) {
                                                            try {
                                                                SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
                                                                String dateInString = h1.getRDate();
//                                                                System.out.println(dateInString);
                                                                Date dateStart = formatter.parse(dateInString);
//                                                                System.out.println(dateStart);

                                                                Date dateEnd = new Date();

                                                                //time is always 00:00:00, so rounding should help to ignore the missing hour when going from winter to summer time, as well as the extra hour in the other direction
                                                                diff = Math.round((dateEnd.getTime() - dateStart.getTime()) / (double) 86400000);
//                                                                System.out.println("Days" + diff);

                                                            } catch (ParseException e) {
                                                                e.printStackTrace();
                                                            }
                                                            if (diff >= 90) {


                                                    %>
                                                    <tr>
                                                        <td><%=i%></td>
                                                        <td><%=h1.getUsername()%></td>
                                                        <td><%=h1.getName()%></td>
                                                        <td><%=h1.getMObNO()%></td>
                                                        <td><%=h1.getEmail() %></td>
                                                        <td><%=h1.getOccupation() %></td>
                                                        <%


                                                        %>    
                                                        <td><%=h1.getGender() %></td>
                                                        <td><%=h1.getAge()%></td>
                                                        <td><%=h1.getAadhaar() %></td>
                                                        <td><%=h1.getPanNum() %></td>
                                                        <td><%=h1.getMcharch() %></td>
                                                        <td><%=h1.getCity() %></td>
                                                        <td><%=h1.getRDate()%></td>
                                                        <td><%=diff%></td>


                                                    </tr>     
                                                    <%
                                                                i++;
                                                            }
                                                            %>
                                                <span>NO User Found</span>  
                                                            
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
