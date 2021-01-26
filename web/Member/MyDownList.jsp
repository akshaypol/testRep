
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

                    <h6 class="text-uppercase mt-3">My Downline Details</h6>
                    <div class="row">

                        <div class="col-lg-12">

                            <div class="table-responsive">

                                <%                                    MemberModel k = new MemberDao().getById(sidebarr.getId());

                                    List<Long> arrone = new ArrayList();
                                    List<MemberIDModel> nm1 = new MemberIDDao().getByParent(k.getId());
                                    int MemCnt = 0;
                                    int TCount = 1;


                                %>
                                <h3>Level 1</h3>
                                <div class="table-responsive">
                                    <table class="table table-light table-striped shadow-light ">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.</th>
                                                <th>ID</th>
                                                <th>User ID</th>
                                                <th> User Name </th>
                                                <th>Sponsor ID</th>
                                                <th>Registration Date</th>
                                                <th>Activation  Date</th>
                                                <th>Status</th>

                                            </tr>


                                            <%                                                int x = 0;
                                                for (MemberIDModel n : nm1) {
                                                    x++;
                                                    MemberModel h = new MemberDao().getById(n.getId());
                                                    MemberModel h1 = new MemberDao().getById(n.getSponceID());
                                                    long neki = n.getUseriD();
                                                    arrone.add(neki);
                                            %>
                                            <tr>
                                                <td><%=x%></td>
                                                <td><%=h.getId()  %></td>
                                                <td><%=h.getUsername()%></td>
                                                <td><%=h.getName()%></td>
                                                <td><%=h1.getUsername()%></td>
                                                <td><%=h.getRDate()%></td>
                                                <td><%=h.getActivationDate()%></td>
                                                <%
                                                    if (h.isStatus()) {%>
                                                <td><span class="btn btn-sm btn-success"> Active</span></td>
                                                <%
                                                } else {%>
                                                <td><span class="btn btn-sm btn-danger"> Deactivate </span></td>

                                                <%
                                                    }
                                                %>
                                            </tr>



                                            <%
                                                }

                                            %>

                                        </thead>
                                        <tbody>



                                        </tbody>
                                    </table>
                                </div>


                                <h3>Level 2</h3>
                                <div class="table-responsive">
                                    <table class="table table-light table-striped shadow-light ">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.</th>
                                                <th>Sr.No.</th>
                                                <th>User ID</th>
                                                <th> User Name </th>
                                                <th>Sponsor ID</th>

                                                <th>Registration Date</th>
                                                <th>Activation  Date</th>
                                                <th>Status</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                            int x1 = 0;
                                                List<Long> arrtwo = new ArrayList();
                                                for (int j = 0; j < arrone.size(); j++) {

                                                    List<MemberIDModel> nm2 = new MemberIDDao().getByParent(arrone.get(j));
                                                    for (MemberIDModel n : nm2) {
                                                        x1++;
                                                        MemberModel h = new MemberDao().getById(n.getId());
                                                        MemberModel h1 = new MemberDao().getById(n.getSponceID());

                                                        long neki = n.getUseriD();
                                                        arrtwo.add(neki);
                                                        
                                            %>

                                            <tr>
                                                <td><%=x1%></td>
                                                <td><%=h.getId() %></td>
                                                <td><%=h.getUsername()%></td>
                                                <td><%=h.getName()%></td>
                                                <td><%=h1.getUsername()%></td>

                                                <td><%=h.getRDate()%></td>
                                                <td><%=h.getActivationDate()%></td>
                                                <%
                                                    if (h.isStatus()) {%>
                                                <td><span class="btn btn-sm btn-success"> Active</span></td>
                                                <%
                                                } else {%>
                                                <td><span class="btn btn-sm btn-danger"> Deactivate </span></td>

                                                <%
                                                    }
                                                %>
                                            </tr>
                                            <%
                                                  
                                                    }

                                                }

                                            %>


                                        </tbody>
                                    </table>
                                </div> 




                                <h3>Level 3</h3>
                                <div class="table-responsive">
                                    <table class="table table-light table-striped shadow-light ">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.</th>
                                                <th>User ID</th>
                                                <th> User Name </th>
                                                <th>Sponsor ID</th>

                                                <th>Registration Date</th>
                                                <th>Activation  Date</th>
                                                <th>Status</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                            int x2 = 0;
                                                List<Long> arrthree = new ArrayList();
                                                for (int j = 0; j < arrtwo.size(); j++) {

                                                    List<MemberIDModel> nm2 = new MemberIDDao().getByParent(arrtwo.get(j));
                                                    for (MemberIDModel n : nm2) {
                                                        x2++;
                                                        MemberModel h = new MemberDao().getById(n.getId());
                                                        MemberModel h1 = new MemberDao().getById(n.getSponceID());
                                                        long neki = n.getUseriD();
                                                        arrthree.add(neki);
                                                        if(x2<=125)
                                                        {

                                            %>

                                            <tr>
                                                <td><%=x2%></td>
                                                <td><%=h.getUsername()%></td>
                                                <td><%=h.getName()%></td>
                                                <td><%=h1.getUsername()%></td>

                                                <td><%=h.getRDate()%></td>
                                                <td><%=h.getActivationDate()%></td>
                                                <%
                                                    if (h.isStatus()) {%>
                                                <td><span class="btn btn-sm btn-success"> Active</span></td>
                                                <%
                                                } else {%>
                                                <td><span class="btn btn-sm btn-danger"> Deactivate </span></td>

                                                <%
                                                    }
                                                %>
                                            </tr>
                                            <%
                                                    }
                                                    }

                                                }

                                            %>


                                        </tbody>
                                    </table>
                                </div>

                                <h3>Level 4</h3>
                                <div class="table-responsive">
                                    <table class="table table-light table-striped shadow-light ">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.</th>
                                                <th>User ID</th>
                                                <th> User Name </th>
                                                <th>Sponsor ID</th>

                                                <th>Registration Date</th>
                                                <th>Activation  Date</th>
                                                <th>Status</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                            int x3 = 0;
                                                List<Long> arrfour = new ArrayList();
                                                for (int j = 0; j < arrthree.size(); j++) {

                                                    List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arrthree.get(j));
                                                    for (MemberIDModel n : nm3) {
                                                        x3++;
                                                        MemberModel h = new MemberDao().getById(n.getId());
                                                        MemberModel h1 = new MemberDao().getById(n.getSponceID());

                                                        long neki = n.getUseriD();
                                                        arrfour.add(neki);
                                            %>

                                            <tr>
                                                <td><%=x3%></td>
                                                <td><%=h.getUsername()%></td>
                                                <td><%=h.getName()%></td>
                                                <td><%=h1.getUsername()%></td>

                                                <td><%=h.getRDate()%></td>
                                                <td><%=h.getActivationDate()%></td>
                                                <%
                                                    if (h.isStatus()) {%>
                                                <td><span class="btn btn-sm btn-success"> Active</span></td>
                                                <%
                                                } else {%>
                                                <td><span class="btn btn-sm btn-danger"> Deactivate </span></td>

                                                <%
                                                    }
                                                %>
                                            </tr>
                                            <%
                                                    }

                                                }

                                            %>


                                        </tbody>
                                    </table>
                                </div>

                                <h3>Level 5</h3>
                                <div class="table-responsive">
                                    <table class="table table-light table-striped shadow-light ">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.</th>
                                                <th>User ID</th>
                                                <th> User Name </th>
                                                <th>Sponsor ID</th>

                                                <th>Registration Date</th>
                                                <th>Activation  Date</th>
                                                <th>Status</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                            int x4 = 0;
                                                List<Long> arrfive = new ArrayList();
                                                for (int j = 0; j < arrfour.size(); j++) {

                                                    List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arrfour.get(j));
                                                    for (MemberIDModel n : nm3) {
                                                        x4++;
                                                        MemberModel h = new MemberDao().getById(n.getId());
                                                        MemberModel h1 = new MemberDao().getById(n.getSponceID());

                                                        long neki = n.getUseriD();
                                                        arrfive.add(neki);
                                            %>

                                            <tr>
                                                <td><%=x4%></td>
                                                <td><%=h.getUsername()%></td>
                                                <td><%=h.getName()%></td>
                                                <td><%=h1.getUsername()%></td>

                                                <td><%=h.getRDate()%></td>
                                                <td><%=h.getActivationDate()%></td>
                                                <%
                                                    if (h.isStatus()) {%>
                                                <td><span class="btn btn-sm btn-success"> Active</span></td>
                                                <%
                                                } else {%>
                                                <td><span class="btn btn-sm btn-danger"> Deactivate </span></td>

                                                <%
                                                    }
                                                %>
                                            </tr>
                                            <%
                                                    }

                                                }

                                            %>


                                        </tbody>
                                    </table>
                                </div>

                                <h3>Level 6</h3>
                                <div class="table-responsive">
                                    <table class="table table-light table-striped shadow-light ">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.</th>
                                                <th>User ID</th>
                                                <th> User Name </th>
                                                <th>Sponsor ID</th>

                                                <th>Registration Date</th>
                                                <th>Activation  Date</th>
                                                <th>Status</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                            int x5 = 0;
                                                List<Long> arrsix = new ArrayList();
                                                for (int j = 0; j < arrfive.size(); j++) {

                                                    List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arrfive.get(j));
                                                    for (MemberIDModel n : nm3) {
                                                        x5++;
                                                        MemberModel h = new MemberDao().getById(n.getId());
                                                        MemberModel h1 = new MemberDao().getById(n.getSponceID());

                                                        long neki = n.getUseriD();
                                                        arrsix.add(neki);
                                            %>

                                            <tr>
                                                <td><%=x5%></td>
                                                <td><%=h.getUsername()%></td>
                                                <td><%=h.getName()%></td>
                                                <td><%=h1.getUsername()%></td>

                                                <td><%=h.getRDate()%></td>
                                                <td><%=h.getActivationDate()%></td>
                                                <%
                                                    if (h.isStatus()) {%>
                                                <td><span class="btn btn-sm btn-success"> Active</span></td>
                                                <%
                                                } else {%>
                                                <td><span class="btn btn-sm btn-danger"> Deactivate </span></td>

                                                <%
                                                    }
                                                %>
                                            </tr>
                                            <%
                                                    }

                                                }

                                            %>


                                        </tbody>
                                    </table>
                                </div>

                                <h3>Level 7</h3>
                                <div class="table-responsive">
                                    <table class="table table-light table-striped shadow-light ">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.</th>
                                                <th>User ID</th>
                                                <th> User Name </th>
                                                <th>Sponsor ID</th>

                                                <th>Registration Date</th>
                                                <th>Activation  Date</th>
                                                <th>Status</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                            int x6 = 0;
                                                List<Long> arrseven = new ArrayList();
                                                for (int j = 0; j < arrsix.size(); j++) {

                                                    List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arrsix.get(j));
                                                    for (MemberIDModel n : nm3) {
                                                        x6++;
                                                        MemberModel h = new MemberDao().getById(n.getId());
                                                        MemberModel h1 = new MemberDao().getById(n.getSponceID());

                                                        long neki = n.getUseriD();
                                                        arrseven.add(neki);
                                            %>

                                            <tr>
                                                <td><%=x6%></td>
                                                <td><%=h.getUsername()%></td>
                                                <td><%=h.getName()%></td>
                                                <td><%=h1.getUsername()%></td>

                                                <td><%=h.getRDate()%></td>
                                                <td><%=h.getActivationDate()%></td>
                                                <%
                                                    if (h.isStatus()) {%>
                                                <td><span class="btn btn-sm btn-success"> Active</span></td>
                                                <%
                                                } else {%>
                                                <td><span class="btn btn-sm btn-danger"> Deactivate </span></td>

                                                <%
                                                    }
                                                %>
                                            </tr>
                                            <%
                                                    }

                                                }

                                            %>


                                        </tbody>
                                    </table>
                                </div>

                                <h3>Level 8</h3>
                                <div class="table-responsive">
                                    <table class="table table-light table-striped shadow-light ">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.</th>
                                                <th>User ID</th>
                                                <th> User Name </th>
                                                <th>Sponsor ID</th>

                                                <th>Registration Date</th>
                                                <th>Activation  Date</th>
                                                <th>Status</th>

                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%                                            int x8 = 0;
//                                                List<Long> arrseven = new ArrayList();
                                                for (int j = 0; j < arrseven.size(); j++) {

                                                    List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arrseven.get(j));
                                                    for (MemberIDModel n : nm3) {
                                                        x8++;
                                                        MemberModel h = new MemberDao().getById(n.getId());
                                                        MemberModel h1 = new MemberDao().getById(n.getSponceID());

//                                                        long neki = n.getUseriD();
//                                                        arrseven.add(neki);
%>

                                            <tr>
                                                <td><%=x8%></td>
                                                <td><%=h.getUsername()%></td>
                                                <td><%=h.getName()%></td>
                                                <td><%=h1.getUsername()%></td>

                                                <td><%=h.getRDate()%></td>
                                                <td><%=h.getActivationDate()%></td>
                                                <%
                                                    if (h.isStatus()) {%>
                                                <td><span class="btn btn-sm btn-success"> Active</span></td>
                                                <%
                                                } else {%>
                                                <td><span class="btn btn-sm btn-danger"> Deactivate </span></td>

                                                <%
                                                    }
                                                %>
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
