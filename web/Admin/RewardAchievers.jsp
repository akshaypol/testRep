

<%@page import="Com.Member.Model.RewardStatusModel"%>
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
                                <div class="card-header d100"><i class="fa fa-table"></i> Reward Achievers

                                    <div class="col-lg-12 d100 text-center">
                                       
                                        <div class="col-lg-3 d33">
                                            <div class="form-group">
                                                <label class="control-label mb-10 text-left">Level</label>
                                               
                                                    <div class='input-group date' id=''>
                                                        <select class="form-control" name="level" id="level">
                                                            <option>Select Level</option>
                                                            <option value="1">Level 1</option>
                                                            <option value="2">Level 2</option>
                                                            <option value="3">Level 3</option>
                                                            <option value="4">Level 4</option>
                                                            <option value="5">Level 5</option>
                                                            <option value="6">Level 6</option>
                                                            <option value="7">Level 7</option>
                                                            <option value="8">Level 8</option>
                                                           
                                                        </select>
                                                    </div>
                                               
                                            </div>
                                        </div>
                                        <div class="col-lg-3 d33">
                                            <div class="form-group">
                                                <label class="control-label mb-10 text-left">&nbsp;</label>
                                                <div class='input-group date' id=''>
                                                    <a id="btnclick" style="color:white" class="btn btn-gradient-quepal waves-effect waves-light m-1 go" >Search</a>

                                                </div>

                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div id="LDiv">
                                     
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
 <script type="text/javascript">
            $(document).ready(function() {
              
                $("#btnclick").click(function() {
                    var level = $('#level').val();
                // alert(level);
                    $.get("Ajax/getRewardAchievers.jsp", {level:level}, function(data) {
                        $('#LDiv').html(data);

                    });
                });
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
