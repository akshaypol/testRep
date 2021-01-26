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
                            <div class="row no-gutters mb-5">
                                <div class="col-md-12">
                                    <div class="contact-wrap w-100 p-md-5 p-4">
                                        <h3 class="mb-4">Contact Us</h3>
                                        <div id="form-message-warning" class="mb-4"></div> 
                                        <div id="form-message-success" class="mb-4">
                                            <!--Your message was sent, thank you!-->
                                        </div>
                                        <form method="POST" action="NewEnquiry" id="contactForm" name="contactForm" class="contactForm" onsubmit="return myfunctionContact();">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="form-group">
                                                        <label class="label" for="name">Full Name</label>
                                                        <input type="text" class="form-control" name="Name" id="name" placeholder="Name">
                                                    </div>
                                                </div>
                                                <div class="col-md-6"> 
                                                    <div class="form-group">
                                                        <label class="label" for="email">Email Address</label>
                                                        <input type="email" class="form-control" name="Email" id="email" placeholder="Email" required pattern="^\S+@(([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,3})$">
                                                    </div>
                                                </div>
                                                <div class="col-md-6"> 
                                                    <div class="form-group">
                                                        <label class="label" for="email">Mobile</label>
                                                        <input type="text" class="form-control" name="mobile" id="Mobile" placeholder="Mobile">

                                                        <span class="errortext1" id="errortext1">Enter Correct Mobile Number</span>
                                                    </div>
                                                </div>

                                                <div class="col-md-6"> 
                                                    <div class="form-group">
                                                        <label class="label" for="email">City</label>
                                                        <input type="text" class="form-control" name="City" id="City" placeholder="City">


                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="label" for="subject">Subject</label>
                                                        <input type="text" class="form-control" name="Subject" id="subject" placeholder="Subject">
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <label class="label" for="#">Message</label>
                                                        <textarea name="Message" class="form-control" id="message" cols="30" rows="4" placeholder="Message"></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-md-12">
                                                    <div class="form-group">
                                                        <input type="submit" value="Send Message" class="btn btn-primary">
                                                        <div class="submitting"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>

                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="dbox w-100 text-center">
                                        <div class="icon d-flex align-items-center justify-content-center">
                                            <span class="fa fa-map-marker"></span>
                                        </div>
                                        <div class="text">
                                            <p><span>Address:</span> <br>
                                                <a class="bluetext">
                                                    Marketing & Public Service ,SR.No 28/19/23 JIJAMATA CHOWK ,AMBEGAON PATHAR PUNE-411046.
                                                </a>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="dbox w-100 text-center">
                                        <div class="icon d-flex align-items-center justify-content-center">
                                            <span class="fa fa-phone"></span>
                                        </div>
                                        <div class="text">
                                            <p><span>Phone:</span> <br>
                                                <a class="bluetext" href="#">+ 8830427323/7058180409</a></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="dbox w-100 text-center">
                                        <div class="icon d-flex align-items-center justify-content-center">
                                            <span class="fa fa-paper-plane"></span>
                                        </div>
                                        <div class="text">
                                            <p><span>Email:</span><br>
                                                <a class="bluetext" href="#">wecareent2019@gmail.com</a></p>
                                        </div>
                                    </div>
                                </div>
<!--                                <div class="col-md-3">
                                    <div class="dbox w-100 text-center">
                                        <div class="icon d-flex align-items-center justify-content-center">
                                            <span class="fa fa-globe"></span>
                                        </div>
                                        <div class="text">
                                            <p><span>Website:</span> <br>
                                                <a class="bluetext" href="#">WWW.wecareenterprises.com</a></p>
                                        </div>
                                    </div>
                                </div>-->
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