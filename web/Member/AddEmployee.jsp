<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from codervent.com/rocker/color-version/form-layouts.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:49:35 GMT -->
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <script src="../../js/Alertajax.js" type="text/javascript"></script>
        <%@include file="Title.jsp" %>
        <%@include file="Css.jsp" %>

    </head>

    <body>

        <!-- Start wrapper-->
        <div id="wrapper">

            <!--Start sidebar-wrapper-->
           
            <!--End sidebar-wrapper-->

            <!--Start topbar header-->
            
            <!--End topbar header-->

            <div class="clearfix"></div>

            <div class="content-wrapper">
                <div class="container-fluid">
                    <!-- Breadcrumb-->

                    <!-- End Breadcrumb-->
                    <br><br>
                    <div class="row">
                        <div class="col-lg-10 mx-auto">
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
                                <div class="card-body">
                                    <div class="card-title">Add Employee</div>
                                    <hr>
                                    <form action="../../AddEmpServlet" method="post" enctype="multipart/form-data" data-parsley-validate>


                                        <div class="form-group row">
                                            <label for="input-4" class="col-sm-2 col-form-label">Employee Name</label>
                                            <div class="col-sm-3">
                                                <input type="text" class="form-control"required="" autocomplete="off" id="input-4" name="fname" placeholder="Enter Employee First Name">
                                            </div>

                                        </div>



                                        <div class="form-group row">
                                            <label for="input-4" class="col-sm-2 col-form-label">Employee Photo</label>
                                            <div class="col-sm-10">
                                                <input type="file" class="form-control" required="" autocomplete="off" id="input-4" name="pic" placeholder="Enter Email">
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label for="input-1" class="col-sm-2 col-form-label"></label>
                                            <div class="col-sm-10">
                                                <button type="submit" class="btn btn-primary shadow-primary px-5"> Add</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                    </div><!--End Row-->

                </div>

                <%
                    List<MemberModel> gg = new MemberDao().getAll();
                    
                        %>
                        <table>
                        <tr>
                            <th>Id</th>
                            <th>Id</th>
                        </tr>
                        <%
                        for (MemberModel g : gg) {
                            %>
                            <tr>
                                <th><%=g.getName() %></th>
                                <th><img src="../EmpImages/<%=g.getEmpPic()%>"  height="100" width="100"> </th>
                                
                            </tr>  
                            
                            <%
                        }
                        %>
                        </table>
                        
                        <%

                    

                %>
                <!-- End container-fluid-->

            </div><!--End content-wrapper-->
            <!--Start Back To Top Button-->
            <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
            <!--End Back To Top Button-->

            <!--Start footer-->

            <!--End footer-->

        </div><!--End wrapper-->
        <!--        <script>
                    $('document').ready(function() {
                        $('#EmpType').change(function() {
                            var EmpType = $('#EmpType').val();
                            if (EmpType == "Convertor") {
                                $('.manager').show();
                            } else if (EmpType == "Generator") {
                                $('.manager').show();
                            } else {
                                $('.manager').hide();
                            }
                        });
        
                    });
                </script>-->
        <script>
            $(document).ready(function() {
                $('.single-select').select2();
            });
        </script>
        <%@include file="Script.jsp" %>

    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/form-layouts.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:49:35 GMT -->
</html>
