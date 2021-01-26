<%@page import="Com.Member.Dao.MemberDao"%>
<!DOCTYPE html>
<html lang="en">

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
                    <%
                        long id = sidebarr1.getId();

                        MemberModel m = new MemberDao().getById(id);
                    %>

                    <!--                    <h6 class="text-uppercase">Edit Profile</h6>-->

                    <div class="row">

                        <div class="col-12 col-lg-6 col-xl-6">
                            <div class="card bg-pattern-success">
                                <div class="card-header bg-transparent text-white border-light">
                                    Addhaar Card Front 
                                </div>
                                <div class="card-body" style="width:100%">
                                    <div class="row">
                                        <div class="col-12 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6" style="width:50%">
                                            <form action="../UpdateImageServlet?id=<%=id%>&DOcumnetName=AdharFront" enctype="multipart/form-data"  method="post">
                                                <div class="form-row ">  
                                                    <div class="form-group col-md-4">
                                                        <label for="inputPassword4">Images</label>
                                                        <div class="">
                                                            <input type="file" id="Image"  style="margin-bottom:10px;" name="Image" accept=""  class="form-control ">
                                                        </div>

                                                        <div class="col-sm-8">
                                                            <button type="submit" class="btn btn-primary shadow-primary px-5"> Add</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>     
                                        </div>  
                                        <div class="col-12 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6" style="width:50%">
                                            <a href="../KYCDocument/<%=m.getAdharFront()%>" target="_blank"><img src="../KYCDocument/<%=m.getAdharFront()%>" alt="Adhhaar Front "  height="200" width="200">
                                            </a>   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-12 col-lg-6 col-xl-6">
                            <div class="card bg-pattern-success">
                                <div class="card-header bg-transparent text-white border-light">
                                    Addhaar Card Back 
                                </div>
                                <div class="card-body" style="width:100%">
                                    <div class="row">
                                        <div class="col-12 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6" style="width:50%">
                                            <form action="../UpdateImageServlet?id=<%=id%>&DOcumnetName=AdharBack" enctype="multipart/form-data"  method="post">
                                                <div class="form-row ">  
                                                    <div class="form-group col-md-4">
                                                        <label for="inputPassword4">Images</label>
                                                        <div class="">
                                                            <input type="file" id="Image"  style="margin-bottom:10px;" name="Image" accept=""  class="form-control ">
                                                        </div>

                                                        <div class="col-sm-8">
                                                            <button type="submit" class="btn btn-primary shadow-primary px-5"> Add</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>     
                                        </div>  
                                        <div class="col-12 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6" style="width:50%">
                                            <a href="../KYCDocument/<%=m.getAdharBack()%>" target="_blank"><img src="../KYCDocument/<%=m.getAdharBack()%>" alt="Adhhaar Back " width="200" height="200">
                                            </a>   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-lg-6 col-xl-6">
                            <div class="card bg-pattern-success">
                                <div class="card-header bg-transparent text-white border-light">
                                    Pan Card
                                </div>
                                <div class="card-body" style="width:100%">
                                    <div class="row">
                                        <div class="col-12 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6" style="width:50%">
                                            <form action="../UpdateImageServlet?id=<%=id%>&DOcumnetName=PanCard" enctype="multipart/form-data"  method="post">
                                                <div class="form-row ">  
                                                    <div class="form-group col-md-4">
                                                        <label for="inputPassword4">Images</label>
                                                        <div class="">
                                                            <input type="file" id="Image"  style="margin-bottom:10px;" name="Image" accept=""  class="form-control ">
                                                        </div>

                                                        <div class="col-sm-8">
                                                            <button type="submit" class="btn btn-primary shadow-primary px-5"> Add</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>     
                                        </div>  
                                        <div class="col-12 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6" style="width:50%">
                                            <a href="../KYCDocument/<%=m.getPanCardIMG()%>" target="_blank"><img src="../KYCDocument/<%=m.getPanCardIMG()%>" alt="Pan Card " width="200" height="200">
                                            </a>   
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>


                        <div class="col-12 col-lg-6 col-xl-6">
                            <div class="card bg-pattern-success">
                                <div class="card-header bg-transparent text-white border-light">
                                    Baptism Certificate
                                </div>
                                <div class="card-body" style="width:100%">
                                    <div class="row">
                                        <div class="col-12 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6" style="width:50%">
                                            <form action="../UpdateImageServlet?id=<%=id%>&DOcumnetName=Baptismcertificate" enctype="multipart/form-data"  method="post">
                                                <div class="form-row ">  
                                                    <div class="form-group col-md-4">
                                                        <label for="inputPassword4">Images</label>
                                                        <div class="">
                                                            <input type="file" id="Image"  style="margin-bottom:10px;" name="Image" accept=""  class="form-control ">
                                                        </div>

                                                        <div class="col-sm-8">
                                                            <button type="submit" class="btn btn-primary shadow-primary px-5"> Add</button>
                                                        </div>
                                                    </div>
                                                </div>
                                            </form>     
                                        </div>  
                                        <div class="col-12 col-lg-6 col-xl-6 col-md-6 col-sm-6 col-xs-6" style="width:50%">
                                            <a href="../KYCDocument/<%=m.getBaptismcertificate()%>" target="_blank"><img src="../KYCDocument/<%=m.getBaptismcertificate()%>" alt="Baptism Certificate " width="200" height="200">
                                            </a>   
                                        </div>
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
    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
</html>
