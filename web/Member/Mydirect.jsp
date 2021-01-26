
<%@page import="java.util.ArrayList"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Dao.MemberIDDao"%>
<%@page import="Com.Member.Model.MemberIDModel"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
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

        <%@include file="Css.jsp" %>
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
                            <%                                if (session.getAttribute("i") != null) {
                                    int i = (Integer) session.getAttribute("i");
                                    String msg = (String) session.getAttribute("msg");
                                    if (i == 2) {

                            %>

                            <div class="alert alert-danger alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <div class="alert-icon">
                                    <i class="icon-info"></i>
                                </div>
                                <div class="alert-message">
                                    <span><strong></strong><%=msg%></span>
                                </div>
                            </div>
                            <%} else {%>
                            <div class="alert alert-success alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <div class="alert-icon">
                                    <i class="icon-info"></i>
                                </div>
                                <div class="alert-message">
                                    <span><strong></strong><%=msg%></span>
                                </div>
                            </div>

                            <%
                                    }
                                    session.removeAttribute("i");
                                    session.removeAttribute("msg");
                                }%>

                            <div class="card">
                                <div class="col-lg-12 d100 text-center">
                                    <h2>Level 1</h2>
                                </div>

                                <div class="card-body">
                                    <div id="tablerepdiv">
                                        <div class="table-responsive">
                                            <table id="default" class="table table-bordered">

                                                <thead>
                                                    <tr>
                                                        <th>Sr.No.</th>
                                                        <th>UserID</th>
                                                        <th>APS Co-ordinator</th>
                                                        <th>APS Co-ordinator</th>


                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <%
                                                        List<Long> arrone = new ArrayList();
                                                        List<MemberIDModel> nm1 = new MemberIDDao().getMyMemberBYSANDP(sidebarr.getId(), sidebarr.getId());
                                                        for (MemberIDModel n : nm1) {
                                                            MemberModel v = new MemberDao().getById(n.getUseriD());
                                                            long neki = n.getUseriD();
                                                            arrone.add(neki);

                                                    %>
                                                    <tr>
                                                        <td><%=n.getUseriD()%></td>
                                                        <td><%=v.getUsername()%></td>
                                                        <td><%=v.getRDate()%></td>

                                                        <td><%=v.getName()%></td>

                                                    </tr>
                                                    <%
                                                        }
                                                    %>

                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div id="tablerepdiv">
                                        <div class="table-responsive">
                                            <h2>Level 2</h2>
                                            <table id="example" class="table table-bordered">

                                                <thead>
                                                    <tr>
                                                        <th>Sr.No.</th>
                                                        <th>Lead ID</th>
                                                        <th>APS Co-ordinator</th>
                                                        <th>APS Co-ordinator</th>


                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <%
                                                        List<Long> arrtwo = new ArrayList();

                                                        for (int i = 0; i < arrone.size(); i++) {
                                                            List<MemberIDModel> nm2 = new MemberIDDao().getMyMemberBYSANDP(arrone.get(i), sidebarr.getId());

                                                            for (MemberIDModel n : nm2) {
                                                                MemberModel v = new MemberDao().getById(n.getUseriD());
                                                                long neki = n.getUseriD();
                                                                arrtwo.add(neki);

                                                    %>
                                                    <tr>
                                                        <td><%=n.getUseriD()%></td>
                                                        <td><%=v.getUsername()%></td>
                                                        <td><%=v.getRDate()%></td>

                                                        <td><%=v.getName()%></td>

                                                    </tr>
                                                    <%
                                                            }
                                                        }

                                                    %>

                                                </tbody>

                                            </table>
                                        </div>
                                    </div>
                                </div>
                                                    
                                                    <div class="card-body">
                                    <div id="tablerepdiv">
                                        <div class="table-responsive">
                                            <h2>Level 3</h2>
                                            <table id="example" class="table table-bordered">

                                                <thead>
                                                    <tr>
                                                        <th>Sr.No.</th>
                                                        <th>Sr.No.</th>
                                                        <th>Lead ID</th>
                                                        <th>Lead ID</th>
                                                        <th>Lead ID</th>
                                                        <th>APS Co-ordinator</th>
                                                        <th>APS Co-ordinator</th>


                                                    </tr>
                                                </thead>

                                                <tbody>
                                                    <%
                                                        List<Long> arrthree = new ArrayList();
                                                        int c=0;

                                                        for (int i = 0; i < arrtwo.size(); i++) {
                                                            List<MemberIDModel> nm2 = new MemberIDDao().getMyMemberBYSANDP(arrtwo.get(i), sidebarr.getId());

                                                            for (MemberIDModel n : nm2) {
                                                                MemberModel v = new MemberDao().getById(n.getUseriD());
                                                                long neki = n.getUseriD();
                                                                arrthree.add(neki);
                                                                c++;
                                                    %>
                                                    <tr>
                                                        <td><%=c%></td>
                                                        <td><%=n.getUseriD()%></td>
                                                        <td><%=n.getSponceID() %></td>
                                                        <td><%=n.getParentID() %></td>
                                                        <td><%=v.getUsername()%></td>
                                                        <td><%=v.getRDate()%></td>

                                                        <td><%=v.getName()%></td>

                                                    </tr>
                                                    <%
                                                            }
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

        <script>
            $('document').ready(function() {

                $('.go').click(function() {
                    var fromdate = $("#fromdate").val();
                    var todate = $("#todate").val();

                    $.get("Ajax/getAPSAjax.jsp", {fromdate: fromdate, todate: todate}, function(data) {
                        $('#tablerepdiv').html(data);
                        // alert('success');
                    });
                    //                    location.reload();
                });
                var today = moment().format('YYYY-MM-DD');
                document.getElementById("todate").value = today;
                document.getElementById("fromdate").value = today;
            });
        </script>


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
