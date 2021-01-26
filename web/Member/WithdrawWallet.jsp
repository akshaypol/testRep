

<%@page import="java.text.DecimalFormat"%>
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
        <script src="js/Alertajax.js" type="text/javascript"></script>
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

            .RedID:hover
            {
                cursor:not-allowed;
            }
            .myPadding
            {
                padding:20px;
                color:#FFF;
                font-size: 20px;
                font-weight: 400;
                border-radius: 10px;
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

                    <!--Start Dashboard Content-->
                    <%            MemberModel m = new MemberDao().getById(sidebarr.getId());
                    DecimalFormat df = new DecimalFormat("#.##");
                    %>  
                    <input type="hidden" id="WAmtID" value="<%=m.getWAmmount()%>">
                    <div class="row mt-3">

                        <div class="col-12 col-lg-4 col-xl-4">
                            <div id="WalletDiv">
                                <div class="card bg-pattern-danger">
                                    <div class="card-body" style="background-color:#9c525200 ">
                                        <div class="media">
                                            <div class="media-body text-left">
                                                <h4 class="text-white"><%=df.format(m.getWAmmount())%></h4>
                                                <span class="text-white">Total Wallet Amount</span>
                                            </div>
                                            <div class="align-self-center w-circle-icon rounded-circle bg-contrast">
                                                <i class="icon-wallet text-white"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-8 col-xl-8">
                            <div class="card">
                                <div class="card-header">
                                    Withdraw Amount
                                </div>
                                <div class="card-body">
                                    <form id="form_validation" action=""  method="POST">
                                        <!--<form id="form_validation" action="../../../FirstId" method="post">-->
                                        <input type="hidden" value="<%=m.getId()%>" id="Id">
                                        <div class="form-group form-float">
                                            <label class="form-label">Amount</label>
                                            <div class="form-line">
                                                <input type="text" id="Amount" onblur="showEvent('onblur')"  class="form-control" autocomplete="off"  required="" name="SponcerId" style="text-transform: lowercase" placeholder="Enter Amount To Withdraw"> 
                                                <p id="event"></p>
                                            </div>
                                        </div>


                                        <div class="form-group row">
                                            <label for="input-1" class="col-sm-4 col-form-label"></label>
                                            <div class="col-sm-8">
                                                <a class="btn btn-gradient-scooter waves-effect waves-light m-1" id="Click">SUBMIT</a>
                                                <a class="btn btn-gradient-redmist waves-effect waves-light m-1 text-white RedID" id="RedID" >SUBMIT</a>
                                            </div>
                                        </div>
                                        <!--                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>-->
                                    </form>
                                </div>
                                <div id="OutPut">
                                    <span class="text-center mySpan"></span>
                                </div>

                            </div>
                        </div>




                    </div><!--End Row-->
                    <br><br>
                    <div class="row">
                        <div class="col-12 col-lg-12 col-xl-12">
                            <div class="card gradient-violet">
                                <div class="card-header bg-transparent text-white border-light">Note

                                </div>
                                <div class="card-body">

                                    <ul class="list-group">
                                        <li class="list-group-item ">You Should Have Min 1000 Rs. in Wallet To Withdraw Money</li>
                                        <li class="list-group-item ">You Can Withdraw only on Tuesday  </li>
                                        <li class="list-group-item ">5% Admin Charges And 5% TDS Will Be Applicable To Withdraw Money.  ( For 1000 Rs.Withdrawal - 10% Charges(100)=900 )</li>
                                        <!--<li class="list-group-item "></li>-->
                                    </ul>

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


        <%@include file="Script.jsp" %>


        <script>
            $('document').ready(function() {
//                  alert("asdad");
                var d = new Date(),
                        weekday = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];


//                document.getElementById("demo").innerHTML = weekday[d.getDay()];
//                alert("asdad"+weekday[d.getDay()]);

                if (weekday[d.getDay()] == "Tuesday")
                {

                    $("#Click").show();
                    $("#RedID").hide();
                }
                else
                {
                    $("#Click").hide();
                }
                $('#Click').click(function() {

                    var Amount = $("#Amount").val();
                    var Id = $("#Id").val();


                    $.get("Ajax/SendWMoney.jsp", {Amount: Amount, Id: Id}, function(data) {
                        $('#OutPut').html(data);
                        document.getElementById('Amount').value = "";
                    });
                    $.get("Ajax/UpdateWalletAmt.jsp", {Id: Id}, function(data) {
                        $('#WalletDiv').html(data);
                    });
//                   location.reload();
                });

            });
        </script>

    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/table-data-tables.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:53:17 GMT -->
</html>
