<!DOCTYPE html>
<%@page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <%@include file="Title.jsp" %>   
        <%@include file="Css.jsp" %>
    </head>
    <body>

        <%@include file="Topbar.jsp" %>
        <%@include file="NavBar.jsp" %>
        <!-- END nav -->
        <div class="hero-wrap">
            <div class="home-slider owl-carousel">
                <div class="slider-item" style="background-image:url(images/bg_1.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center justify-content-center">
                            <div class="col-md-12 ftco-animate">
                                <div class="text w-100 text-center">
                                    <h2>We're here to help you</h2>
                                    <h1 class="mb-3">Home Builder</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="slider-item" style="background-image:url(images/bg_2.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center justify-content-center">
                            <div class="col-md-12 ftco-animate">
                                <div class="text w-100 text-center">
                                    <h2>Best Builder in the World</h2>
                                    <h1 class="mb-3">We Build Home</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="slider-item" style="background-image:url(images/bg_3.jpg);">
                    <div class="overlay"></div>
                    <div class="container">
                        <div class="row no-gutters slider-text align-items-center justify-content-center">
                            <div class="col-md-12 ftco-animate">
                                <div class="text w-100 text-center">
                                    <h2>We Build Your Home</h2>
                                    <h1 class="mb-3">Professional Builder</h1>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <section class="ftco-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h5 class="font-weight-bold">हा फक्त १०० रुपये भरून नोंदणी करा (त्याची पावती देण्यात येईल ) आणि नोंदणी झाल्याच्या ९० दिवसांनी कमीत कमी १०००० (दहा हजार ) कर्ज मिळवा .</h5>
                        <p> महाराष्ट्रातील ज्या भागात ४० पेक्षा जास्त महिला आहेत ज्या नोकरीच्या शोधात आहेत त्या ठिकाणी  विचारे तर्फे व्यवसाय सुरु करून  देण्यात येईल . सॅनेटरी नॅपकिन प्लांट लावण्यात येईल आणि ज्या महिलांना नोकरीची गरज आहे तिथे त्यांची नेमणूक करण्यात येईल तसेच हा पूर्ण प्लांट विचारे च्या देखरेखी खाली राहील .
                            त्यामध्ये विचारे ची २५% भागीदारी असेल आणि राहिलेली रक्कम सर्वा मध्ये वाटून देण्यात येईल  </p>
                    </div>
                    <div class="col-md-4">
                        <h2 class="footer-heading">Request A Quote</h2>
              	     <div class="tab-content">
                        
                            <div id="" class="tab-pane active">
                                <form id="form_validation" action="../SaveMemberF"  method="POST" >
                                    <!--<form id="form_validation" action="../../../FirstId" method="post">-->

                                    <!--<label class="form-label">Sponcer ID</label>-->
                                    <input type="text" id="sponcerId"  class="form-control" autocomplete="off"  required="" name="SponcerId" style="text-transform: lowercase" placeholder="Sponcer ID"> 
                                    <hr>

                                    <!--<label class="form-label">First Name</label>-->
                                    <input type="text"  autocomplete="off" class="form-control" name="Name" placeholder="Full Name" required="">
<hr>
                                    <!--<label class="form-label">Last Name</label>-->
                                    

                                    <!--<label class="form-label">Mobile No</label>-->
                                    <input type="text" autocomplete="off" class="form-control" name="MobNO" placeholder="Mobile No" required="">
<hr>
                                    <!--<label class="form-label">Pan Number</label>-->
                                    <input type="text" autocomplete="off" class="form-control" name="PanNumber" placeholder="PanNumber" required="">
<hr>

<button class="btn Register" style="background-color: #fdbe34;" type="submit">REGISTER</button>


                                    <!--                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>-->
                                </form>
                            </div>
                     

                        </div>

                    </div>
                </div>
            </div>
        </section>

        <%@include file="Footer.jsp" %>



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
<script>
    $(document).ready(function() {
        //Default data table
     
//        $( "#exampleModal" ).trigger( "click" );
 $('#ForgetPassword').modal('show');
    });

</script>

        <%@include file="Script.jsp" %>

    </body>
</html>