<!DOCTYPE html>
<%@page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <%@include file="Title.jsp" %>   
        <%@include file="Css.jsp" %>
        <style>
            .errortext1
            {
                color:red;

            }
            .bluetext
            {
                font-weight: 600!important;
                color: #00aeef!important;
                font-size: 17px!important;  
            }
        </style>
    </head>
    <body>

        <%@include file="Topbar.jsp" %>
        <%@include file="NavBar.jsp" %>
        <section class="hero-wrap hero-wrap-2" style="background-image: url('images/bg_3.jpg');" data-stellar-background-ratio="0.5">
            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text align-items-end">
                    <div class="col-md-9 ftco-animate pb-5">
                        <p class="breadcrumbs mb-2"><span class="mr-2"><a href="index.jsp">Home <i class="ion-ios-arrow-forward"></i></a></span> <span>Contact <i class="ion-ios-arrow-forward"></i></span></p>
                        <h1 class="mb-0 bread">Contact us</h1>
                    </div>
                </div>
            </div>
        </section>

        <section class="ftco-section">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-12">
                        <div class="wrapper">
                          
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="dbox w-100 text-center">
                                      
                                        <div class="text">
                                            <p><span>Refund</span> <br>
                                                <a class="bluetext">
                                           


Ones you Register with us  unfortunately we can’t offer you a refund or exchange.





                                                </a>
                                            </p>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>




        <%@include file="Footer.jsp" %>



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

        <script type="text/javascript">
            $(document).ready(function() {
                $('.errortext1').hide();
                // $('.MyPins').show();

            });
        </script>
        <%@include file="Script.jsp" %>

    </body>
</html>