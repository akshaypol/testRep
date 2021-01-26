<%@page import="Com.Member.Dao.MemberIDDao"%>
<%@page import="Com.Member.Model.MemberIDModel"%>
<%@page import="java.util.List"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <%@include file="Title.jsp" %>
        <%@include file="Css.jsp" %>

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
                    %>  
                    <input type="hidden" id="WAmtID" value="<%=m.getWAmmount()%>">
                    <div class="row mt-3">

                        <div class="col-12 col-lg-4 col-xl-4">
                            <div class="card bg-pattern-danger">
                                <div class="card-body" style="background-color: #cecaca">
                                    <div class="media">
                                        <div class="media-body text-left">
                                            <h4 class="text-white"><%=m.getWAmmount()%></h4>
                                            <span class="text-white">Total Wallet Amount</span>
                                        </div>
                                        <div class="align-self-center w-circle-icon rounded-circle bg-contrast">
                                            <i class="icon-wallet text-white"></i></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-8 col-xl-8">
                            <div class="card">
                                <div class="card-header">
                                    Send Funds
                                </div>
                                <div class="card-body">
                                    <form id="form_validation" action="#"  method="POST">
                                        <!--<form id="form_validation" action="../../../FirstId" method="post">-->

                                        <div class="form-group form-float">
                                            <label class="form-label">Amount</label>
                                            <div class="form-line">
                                                <input type="text" id="sponcerId"   class="form-control" autocomplete="off"  required="" name="SponcerId"  placeholder="Enter Amount To Send"> 
                                            </div>
                                        </div>
                                        <div class="form-group form-float">
                                            <label class="form-label">Member</label>
                                            <div class="form-line">
                                                <select class="form-control" id="member">
                                                    <option>Select Member</option>
                                                    <%                                                    MemberModel me = (MemberModel) session.getAttribute("Member");

                                                        List<MemberIDModel> m1 = new MemberIDDao().getAllBySPID(me.getId());
                                                        for (MemberIDModel mi : m1) {
                                                            MemberModel mo = new MemberDao().getById(mi.getUseriD());
                                                    %>
                                                    <option value="<%=mo.getId()%>"><%=mo.getName()%></option>
                                                    <%
                                                        }
                                                    %>           
                                                </select>
                                            </div>
                                        </div>


                                        <div class="form-group row">
                                            <label for="input-1" class="col-sm-4 col-form-label"></label>
                                            <div class="col-sm-8">
                                                <button class="btn btn-gradient-scooter waves-effect waves-light m-1" type="submit">SEND</button>
                                            </div>
                                        </div>
                                        <!--                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>-->
                                    </form>
                                </div>
                            </div>
                        </div>




                    </div><!--End Row-->

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

    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
</html>
