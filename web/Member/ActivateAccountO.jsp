<%@page import="java.util.ArrayList"%>
<%@page import="Com.Member.Dao.EPinDao"%>
<%@page import="Com.Member.Model.EPinModel"%>
<%@page import="java.util.List"%>
<%@page import="Com.Member.Model.MemberModel"%>
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
        <style>
            .card-body{
                background-color:#82828245;
                padding: 0.6rem;
            }
            .MyLabel{
                font-size: 22px;
                color: white;
            }
            .PMClass1
            {
                margin-top: 10px;
                font-size:14px;
                border-radius: 10px;
                text-align:center;
                border:3px solid white;
                padding:10px;

                background-color: #ec2a44;
                background-image: url(../images/bg-pattern.png)!important;
                font-weight:700;
                color:black;
                /*                animation: colorchange 50s;  animation-name followed by duration in seconds
                                 you could also use milliseconds (ms) or something like 2.5s 
                                -webkit-animation: colorchange 50s infinite;  Chrome and Safari */
            }
            .innerClass
            {
                background-color: #82828245;
            }
            @keyframes colorchange
            {
                0%   {background: red;}
                25%  {background: yellow;color:black}
                50%  {background: blue;color:white}
                75%  {background: green;color:white}
                100% {background: red;color:white}
            }

            @-webkit-keyframes colorchange /* Safari and Chrome - necessary duplicate */
            {
                0%   {background: red;}
                25%  {background: yellow;color:black}
                50%  {background: blue;color:white}
                75%  {background: green;color:white}
                100% {background: red;color:white}
            }
        </style>
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
                <div class="container-fluid">
                    <div class="card-body">
                        <!--<form id="form_validation" action="#"  method="POST">-->
                        <form id="form_validation" action="../SendEPin" method="post">
                            <div class="row">
                                <div class="col-lg-6 ">
                                    <div class="form-group form-float">
                                        <label class="form-label">User ID</label>
                                        <div class="form-line">
                                            <div class="row">
                                                <div class="col-lg-8 ">
                                                    <input type="text" id="user" class="form-control" autocomplete="off"  required="" name="UserId" style="" placeholder="Enter User ID of Person You Want To Send Pins"> 
                                                </div>
                                                <div class="col-lg-4 ">
                                                    <a class="btn btn-gradient-quepal waves-effect waves-light m-1 " id="search" style="color:white">Search</a>
                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                                <div class="col-lg-6 ">
                                    <div id="MyUser">
                                        <div class="card" style="background-color: #3d59ab">
                                            <input type="hidden" id="PinID">
                                            <div class="card-body">
                                                <div class="media">
                                                    <div class="media-body text-left">
                                                        <h4 class="text-white">User ID:</h4>
                                                        <span class="text-white">Name:</span><br>
                                                        <span class="text-white">Mobile:</span><br>
                                                    </div>

                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <%     if (session.getAttribute("i") != null) {
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

                    <!--Start Dashboard Content-->
                    <%                        MemberModel m = new MemberDao().getById(sidebarr.getId());

                        long d = m.getId();
                        int z = 0;
                         List<Long> arrone = new ArrayList();
                        String PinId = "";
                        List<EPinModel> m5 = new EPinDao().getByUserID(m.getId());
                        List<EPinModel> m3 = new EPinDao().GetMYGivenTO(m.getId());

                        for (EPinModel g : m5) {
                            PinId = g.getPin();
                            arrone.add(g.getId());
                        }
                        for (EPinModel g : m3) {
                            PinId = g.getPin();
                            arrone.add(g.getId());
                        }

                        
                          for (int x = 0; x < arrone.size(); x++) {
                              z++;
                          }
                        EPinModel h = new EPinDao().getByPin(PinId);
                    %>  

                    <form action="../ActivateAccountOther" method="post">
                        <div class="row mt-3" id="PinDiv">
                            <input type="hidden" name="UserIDF" id="UserIDF" value="">
                            <input type="hidden" name="PinId" id="UserIDF" value="<%=h.getId()%>">

                            <div class="col-12 col-lg-6 col-xl-6" style="background-color: #c0c5c4;padding: 15px">

                                <div class="row">

                                    <div class="col-lg-8 ">
                                        <div class="form-group form-float">
                                            <label class="form-label">Pin</label>
                                            <div class="form-line">
                                                <input type="text" id="pin" class="form-control" autocomplete="off" value="<%=PinId%>" required="" name="pin" style="" placeholder="Click On Pin Below To Use"> 
                                                <p id="event"></p>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-lg-4 ">

                                        <div class="form-group form-float">
                                            <label class="form-label">&nbsp;</label>
                                            <div class="form-line">
                                                <button class="btn btn-gradient-scooter waves-effect waves-light m-1 activateacc" id='buy'>Activate</button>
                                            </div>
                                        </div>

                                    </div>



                                </div>
                                <span>

                                    You Have <%=z%> Remaining
                                </span>
                            </div><!--End Row-->

                        </div>
                    </form>
                    <br>


                    <br>

                    <!-- End container-fluid-->

                </div><!--End content-wrapper-->
                <!--Start Back To Top Button-->
                <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
                <!--End Back To Top Button-->

                <!--Start footer-->
                <%@include file="Footer.jsp" %>
                <!--End footer-->

            </div><!--End wrapper-->
            <script type="text/javascript">
                $(document).ready(function() {
                    $('.activateacc').click(function() {
                        $('.activateacc').hide();
                    });
                    $('.use').click(function() {
                        //alert('click');
                        var id = this.id;
                        var s = id;
                        var ss = s.split("_");
                        //  alert("ss is" + ss);
                        for (var i in ss) {
                            //                    document.write(ss[i]);
                            //                    document.write("<br/>");
                            //                    alert(ss[i])
                        }
                        var rowid = id;
                        //   alert(id);
                        var epinid = "epinid_";

                        var mypin = "mypin_";

                        epinid = epinid.concat(rowid);
                        mypin = mypin.concat(rowid);


                        //                 alert('Tempid...' + Tempid);
                        var epinid = $("#" + epinid).val();
                        var mypin = $("#" + mypin).val();

//                        alert("ads" + PinCat1);
//                        alert(epinid);
//                        alert(mypin);
                        document.getElementById('pin').value = mypin;
                        document.getElementById('PinId').value = epinid;

                    });

                });
            </script>
            <script type="text/javascript">
                $(document).ready(function() {
                    $('.MyPins').hide();
                    $('#search').click(function() {
                        var user = $('#user').val();
                        $.get("Ajax/GetActivateUser.jsp", {user: user}, function(data) {
                            $('#MyUser').html(data);
                            var PinID = $('#PinID').val();
                            //    alert("In Send...." + PinID);
                            if (PinID == 2) {

                                $('.MyPins').show();
                            }
                            var UserID = $('#UserID').val();


                            if (UserID == null)

                            {
                                $('#PinDiv').hide();



                            }else
                            {
                                 $('#PinDiv').show();
                                
                            }
                            document.getElementById('UserIDF').value = UserID;


                        });

                    });

                });
            </script>
            <!-- Bootstrap core JavaScript-->
            <%@include file="Script.jsp" %>
    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
</html>
