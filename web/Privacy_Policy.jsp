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
                                            <p><span>PRIVACY POLICY</span> <br>
                                                <a class="bluetext">
                                           
This privacy policy  relates solely to the information collection and use practices of our webpage located at http://wecareenterprises.co.in/ ("Webpage"). wecareenterprises("Company" "us" or "we"), the provider of the Webpage and the website wecareenterprises.co.in ("Website"), is committed to protecting your privacy online. Please read the following to learn what information we collect from you (the "User" or the "End User") and how we use that information. If you have any questions about our Privacy Policy, please e-mail us at support@wecareenterprises.co.in.

Please read this Privacy Policy carefully by accessing or using the Webpage, you acknowledge that you have read, understand, and agree to be bound to all the terms of this Privacy Policy and our Website terms of use. If you do not agree to this Privacy Policy, you may exit this Webpage and do not access or use the Website.

As you use our services, we want you to be clear how we are using information and the ways in which you can protect your privacy. We have tried to keep it as simple as possible, but if you are not familiar with terms like cookies, IP addresses, pixel tags and browsers, then read about these under key terms section (as provided below) first. Your privacy matters to us, so whether you are new to the Website/Webpage or a long-time user, please do take the timto get to know our practices – and if you have any questions, please feel free to contact us.
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