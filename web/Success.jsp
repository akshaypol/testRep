<%@page import="Com.service.sendEmail"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<!DOCTYPE html>
<%@page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <%@include file="Title.jsp" %>   
        <%@include file="Css.jsp" %>
    </head>
    <body>


        <!-- END nav -->

        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <%

                            String payment_id = request.getParameter("payment_id");
                            MemberModel MemSes = (MemberModel) session.getAttribute("RMem");
                            MemberModel h = new MemberDao().getByIdTemp(MemSes.getId());
                        %>

                        <%
                            h.setStatus(true);
                            new MemberDao().Update(h);
                            String subject = "From wecareenterprises Login Details";
                            String regMsg1 = "Congratulations!!!, "
                                    + "\n Your Registration with wecareenterprises.co.in is Successful. "
                                    + "\n Kindly Login To Your Account And Update Your Details "
                                    + "\n Login Credentials: "
                                    + "\n Username: " + h.getUsername()
                                    + "\n Password: " + h.getPassword()
                                    + "\nTeam wecareenterprises";
     //
                            sendEmail.mailsend(h.getEmail(), regMsg1, subject);

                            response.sendRedirect("Login.jsp");


                        %>
                    </div>

                </div>
            </div>
        </section>




        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
        <script>
            $(document).ready(function() {
                //Default data table

        //        $( "#exampleModal" ).trigger( "click" );
                $('#exampleModalS').modal('show');
            });

        </script>

        <%@include file="Script.jsp" %>

    </body>
</html>