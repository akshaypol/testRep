<!DOCTYPE html>
<%@page contentType="text/html; charset=utf-8" pageEncoding="UTF-8"%>
<html lang="en">
    <head>
        <%@include file="Title.jsp" %>   
        <%@include file="Css.jsp" %>
        <script src="js/jquery-3.2.1.min.js" type="text/javascript"></script>
        <style>
            .lead {
                background-color: white;
                font-size: 2.25rem!important;
                font-weight: 600!important;

            }
            .carousel-item {
                height:400px;
                min-height: 350px;
                background: no-repeat center center scroll;
                -webkit-background-size: cover;
                -moz-background-size: cover;
                -o-background-size: cover;
                background-size: cover;
            }
            .blink {
                animation: blinker 0.6s linear infinite;
                color: #1c87c9;
                font-size: 30px;
                font-weight: bold;
                font-family: sans-serif;
            }
            @keyframes blinker {
                50% {
                    opacity: 0;
                }
            }
            .blink-one {
                animation: blinker-one 1s linear infinite;
            }
            @keyframes blinker-one {
                0% {
                    opacity: 0;
                }
            }
            .blink-two {
                animation: blinker-two 1.4s linear infinite;
            }
            @keyframes blinker-two {
                100% {
                    opacity: 0;
                }
            }
            .subheading
            {
                font-size: 28px!important;
            }
            .myh2
            {
                font-size: 25px!important;  
            }
            .stext
            {
                color:red!important;
            }

        </style>
    </head>
    <body>

        <%@include file="Topbar.jsp" %>
        <%@include file="NavBar.jsp" %>
        <!-- END nav -->

        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner" role="listbox">
                <!-- Slide One - Set the background image for this slide in the line below -->
                <div class="carousel-item active" style="background-image: url('images/bg_1.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <!--<h2 class="display-4">First Slide</h2>-->
                        <span class="lead stext">We're here to help you.</span>
                    </div>
                </div>
                <!-- Slide Two - Set the background image for this slide in the line below -->
                <div class="carousel-item" style="background-image: url('images/bg_2.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <!--<h2 class="display-4">Second Slide</h2>-->
                        <span class="lead stext">Best in the World</span>
                    </div>
                </div>
                <!-- Slide Three - Set the background image for this slide in the line below -->
                <div class="carousel-item" style="background-image: url('images/bg_3.jpg')">
                    <div class="carousel-caption d-none d-md-block">
                        <!--<h2 class="display-4">Third Slide</h2>-->
                        <span class="lead stext">We Build Your Dreams.</span>
                    </div>
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <br>
        <section class="ftco-section ftco-no-pt ftco-no-pb">
            <div class="container">
                <div class="row d-flex no-gutters">

                    <div class="col-md-12 pl-md-5">
                        <div class="row justify-content-start ">
                            <div class="col-md-12 heading-section  pl-md-4 py-md-4">


                                <span class="subheading text-center " style="background-color: #00043c;;color:#fcbd34!important;">एकमेकांचे ओझे वाहून घ्या आणि अशा प्रकारे आपण ख्रिस्ताचा नियम पूर्ण कराल.</span>
                                <span class="blink blink-two text-center" style="color: #b92909;">गलतिकार:६:२</span>
                                <!--                                <h2 class="mb-4 myh2">
                                                                आम्ही प्रत्यक्षात निर्माण करू आणि बदलू
                                                                </h2>-->
                                <p>नमस्कार 
                                    महाराष्ट्रातील सर्वांसाठी खुश खबर 
                                    आपण हि संस्था  समुदायासाठी चालू केली आहे आणि ह्या संस्थे तर्फे आपण महाराष्ट्रातील सर्वं  बंधू / भगिनींना  मदत करणार आहोत 
                                    छोटे कर्ज / नवीन व्यवसायासाठी लागणारे भांडवल / संस्थे तर्फे चालू असलेल्या कामा मध्ये भागीदारी आणि बरेच काही </p>

                                <p class="text-cetner">
                                    जो कोणी चोरी करीत असेल त्याने यापुढे चोरी नये परंतु आपण स्वतः च्या हातांनी काहीतरी उपयुक्त काम केले पाहिजे जेणेकरून त्यांना गरजू लोकांना वाटण्यासाठी काहीतरी मिळेल.
                                </p>

                                <span class="blink blink-two text-center" style="color: #b92909;">इफिसकर :४:२८ </span>
                                <br>


                                <br> 
                                <div class="row col-md-12 text-center" >
                                    <div class="col-md-6" style="background-color:#fffacdbd;">
                                        <br>
                                        <br>
                                        <br>
                                        आपण हि संस्था ख्रिस्ती समुदायासाठी चालू केली आहे.  आणि या संस्थेतर्फे आपण महाराष्ट्रातील सर्व ख्रिस्ती बंधू / भगिनी   आणि लहान मुले याना मदत करणार आहोत.   
                                    </div>
                                    <div class="col-md-6">
                                        <img src="images/pic1.png" class="img-fluid" alt=""/>   
                                    </div>
                                </div>

                                </p>
                                <br>
                                <div class="row col-md-12 text-center" >

                                    <div class="col-md-6">
                                        <img src="images/pic4.png" class="img-fluid" alt=""/>   

                                    </div>
                                    <div class="col-md-6" style="background-color: aliceblue;">
                                        <br><br>
                                        जितके लोक ज्या ज्या चर्च मध्ये मेंबर आहेत आणि त्या चर्च च्या माध्यमातून आपण त्या सर्वांचे तपशील मागवणार आहोत ह्या अस्थी कि संस्थेला कळावे कि किती लोक दारिद्य रेषे खाली आहेत त्याच बरोबर किती लोकांना नोकरी /धंद्यांची गरज आहे छोटे धंद्यासाठी लोन आणि आपली संस्था ह्या सर्वाना मदत करेल . 

                                    </div>
                                </div>
                                <br>

                                <div class="row col-md-12 text-center"  >
                                    <div class="col-md-6" style="background-color:#fffacdbd;">
                                        <br>
                                        <p>
                                            परंतु त्या आधी त्या प्रत्येक चर्चने संस्थेची मदत करणे अनिवार्य आहे , संस्था प्रत्येक चर्च मधून त्यांच्या मेम्बर्सद्वारे १०० रुपयांची नेंदणी फी घेणार आहे (त्याची पावती देण्यात येईल )आणि त्या दिवसापासून सलग ९० दिवसांनी त्या चर्च च्या जवळ (आस पास संस्थे तर्फे ) सॅनेटरी नॅपकिन प्लांट लावण्यात येईल . आणि ज्या महिलांना नोकरीची गरज आहे तिथे त्यांची नेमणूक करण्यात येईल तसेच हा पूर्ण प्लांट चर्च च्या देखरेखीखाली होईल ,

                                        </p>
                                    </div>
                                    <div class="col-md-6">
                                        <img src="images/pic2.png" class="img-fluid" alt=""/>   
                                    </div>


                                </div>
                                <br>

                                <div class="row col-md-12 text-center" >

                                    <div class="col-md-6">
                                        <img src="images/pic3.png" class="img-fluid" alt=""/>   

                                    </div>
                                    <div class="col-md-6" style="background-color:aliceblue;">

                                        <p class="text-center">
                                            <br>
                                            तसेच ह्या संस्थे तर्फे एक कॉल सेंटर सुद्धा उभारण्यात येईल आणि तरुणांसाठी त्याठिकाणी नोकरी उपलब्ध करून देण्यात येईल, आणि ह्या कॉल सेंटरची सर्व देखरेख चर्चच्या माध्यमातून करण्यात येईल,
                                            ह्या सर्वांमध्ये महत्वाची एक गोष्ट आहे ती म्हणजे जितके लोक इथे जुळणार आहेत ते सर्व संस्थेचे भागीदार म्हणून ओळखले जातील आणि सर्व कामामध्ये भागीदार म्हुणुन काम करतील ,
                                        </p>      
                                    </div>


                                </div>
                                <br>

                                <p class="text-center" >
                                    संस्थेची ओळख ख्रिस्ती लोकांसाठी म्हणून राहील आणि महाराष्ट्र मधील सर्व ख्रिस्ती बांधवाना एकत्र करण्यासाठी काम करत राहील . 
                                </p> 
                                <p class="text-center" >
                                    तर मित्रानो तुमच्या निव्वळ नोंदणीमुळे ह्या सर्व बांधवाना मदत होईल आणि त्यांना पुढे घेऊन जाईल जे कित्येक वर्षांपासून गरिबीत आणि लाचारी मध्ये राहत आहेत पण चर्च बरोबर जुळून राहिले आहेत तसेच येशू ख्रिस्त वर विश्वास ठेऊन आहेत ,
                                </p>
                            </div>

                            <div class="col-md-12" style="background-color:#00043c;padding: 10px">
                                <p class="text-center" style="color:white" >
                                    कारण तुम्ही केलेली पवित्रजणांची सेवा , त्या सेवेत तुम्ही अजूनही दाखवत असलेले सातत्य , तुमचे काम  व त्याच्या लोकांना दानाद्वारे व इतर मदत करण्याद्वारे तुम्ही त्याच्यावर केलेले प्रेम हे सर्व विसरण्याइतका देव अन्यायी नाही .
                                </p>

                                <span class="blink blink-two text-center" style="color:yellow">इब्री लोकांस :6:10 </span>

                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </section>
   
        <hr>


        <hr>

        <section class="ftco-section ftco-no-pt ftco-no-pb">
            <div class="container-fluid px-md-0">
                <div class="row no-gutters">
                    <!--                    <div class="col-md-4 ftco-animate">
                                            <div class="work img d-flex align-items-end" style="background-image: url(images/work-1.jpg);">
                                                <a href="images/work-1.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                                    <span class="icon-expand"></span>
                                                </a>
                                                                    <div class="desc w-100 px-4">
                                                                      <div class="text w-100 mb-3">
                                                                        <span>Building</span>
                                                                        <h2><a href="work-single.html">College Health Profession</a></h2>
                                                                      </div>
                                                              </div>
                                            </div>
                                        </div>-->
                    <div class="col-md-4 ">
                        <div class="work img d-flex align-items-end" style="background-image: url(images/work-2.jpg);">
                            <a href="images/work-8.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                <span class="icon-expand"></span>
                            </a>
                            <!--            	<div class="desc w-100 px-4">
                                                  <div class="text w-100 mb-3">
                                                    <span>Building</span>
                                                    <h2><a href="work-single.html">College Health Profession</a></h2>
                                                  </div>
                                          </div>-->
                        </div>
                    </div>
                    <div class="col-md-4 ">
                        <div class="work img d-flex align-items-end" style="background-image: url(images/work-3.jpg);">
                            <a href="images/work-3.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                <span class="icon-expand"></span>
                            </a>
                            <!--            	<div class="desc w-100 px-4">
                                                  <div class="text w-100 mb-3">
                                                    <span>Building</span>
                                                    <h2><a href="work-single.html">College Health Profession</a></h2>
                                                  </div>
                                          </div>-->
                        </div>
                    </div>

                    <div class="col-md-4 ">
                        <div class="work img d-flex align-items-end" style="background-image: url(images/work-4.jpg);">
                            <a href="images/work-4.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                <span class="icon-expand"></span>
                            </a>
                            <!--            	<div class="desc w-100 px-4">
                                                  <div class="text w-100 mb-3">
                                                    <span>Building</span>
                                                    <h2><a href="work-single.html">College Health Profession</a></h2>
                                                  </div>
                                          </div>-->
                        </div>
                    </div>
                    <!--                    <div class="col-md-4 ftco-animate">
                                            <div class="work img d-flex align-items-end" style="background-image: url(images/work-5.jpg);">
                                                <a href="images/work-5.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                                    <span class="icon-expand"></span>
                                                </a>
                                                                    <div class="desc w-100 px-4">
                                                                      <div class="text w-100 mb-3">
                                                                        <span>Building</span>
                                                                        <h2><a href="work-single.html">College Health Profession</a></h2>
                                                                      </div>
                                                              </div>
                                            </div>
                                        </div>
                                        <div class="col-md-4 ftco-animate">
                                            <div class="work img d-flex align-items-end" style="background-image: url(images/work-6.jpg);">
                                                <a href="images/work-6.jpg" class="icon image-popup d-flex justify-content-center align-items-center">
                                                    <span class="icon-expand"></span>
                                                </a>
                                                                    <div class="desc w-100 px-4">
                                                                      <div class="text w-100 mb-3">
                                                                        <span>Building</span>
                                                                        <h2><a href="work-single.html">College Health Profession</a></h2>
                                                                      </div>
                                                              </div>
                                            </div>
                                        </div>-->
                </div>
            </div> 
        </section>





        <hr>



        <%@include file="Footer.jsp" %>



        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>

<script>
    $(document).ready(function() {
        //Default data table
     
//        $( "#exampleModal" ).trigger( "click" );
 $('#exampleModal').modal('show');
    });

</script>
        <%@include file="Script.jsp" %>

    </body>
</html>