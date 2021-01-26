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

<div class="form-group form-group-lg col-md-12">
  <span class="sr-only col-md-2">DATE (1900-2015):</span>
  <input class="form-control col-md-3" data-inputmask-alias="mm/dd/yyyy" data-inputmask="'yearrange': { 'minyear': '1900', 'maxyear': '2015' }" data-val="true" data-val-required="Required" id="DATE19002015" name="DATE19002015" placeholder="mm/dd/yyyy" type="text" value="" />
</div>

<div class="form-group form-group-lg col-md-12">
  <span class="sr-only col-md-2">DATE (1900-2016):</span>
  <input class="form-control col-md-3" data-inputmask-alias="mm/dd/yyyy" data-inputmask="'yearrange': { 'minyear': '1900', 'maxyear': '2016' }" data-val="true" data-val-required="Required" id="DATE19002016" name="DATE19002016" placeholder="mm/dd/yyyy" type="text" value="" />
</div>

<div class="form-group form-group-lg col-md-12">
  <span class="sr-only col-md-2">DATE (1900-2017):</span>
  <input class="form-control col-md-3" data-inputmask-alias="mm/dd/yyyy" data-inputmask="'yearrange': { 'minyear': '1900', 'maxyear': '2017' }" data-val="true" data-val-required="Required" id="DATE19002017" name="DATE19002017" placeholder="mm/dd/yyyy" type="text" value="" />
</div>



        <hr>






        <script src="js1.js" type="text/javascript"></script>
        <script src="js1_1.js" type="text/javascript"></script>
        <%@include file="Footer.jsp" %>



        </script>

        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>


        <%@include file="Script.jsp" %>

    </body>
</html>