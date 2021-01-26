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

                <%      if (session.getAttribute("i") != null) {
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


                <div class="container-fluid">


                    <h6 class="text-uppercase"></h6>

                    <div class="row">
                        <div class="col-lg-2"></div>
                        <div class="col-lg-8">
                            <div class="card">
                                <div class="card-body"> 
                                    <ul class="nav nav-tabs nav-tabs-info nav-justified">
                                        <li class="nav-item">
                                            <a class="nav-link active" data-toggle="tab" href="#tabe-13"> <span class="hidden-xs">Link</span></a>
                                        </li>


                                    </ul>
                                    <%                                                MemberModel g = new MemberDao().getById(sidebarr.getId());
                                    %>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div id="tabe-13" class="container tab-pane active">
                                            <a>
                                                http://digitalcf.in/Register.jsp?SPID=<%=g.getUsername()%>
                                            </a>
                                            <br>
                                            <!--<a>http://godgiftcf.in//Front/Regstration.jsp?SPID=<%=g.getUsername()%></a>-->

                                            <!--<a>  http://localhost:8094/Register.jsp?SPID=<%=g.getUsername()%></a>-->

                                        </div>


                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-lg-2"></div>
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


        <!-- Bootstrap core JavaScript-->
        <%@include file="Script.jsp" %>
    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
</html>
