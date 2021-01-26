<%@page import="java.text.DecimalFormat"%>
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
                    <%    
                      DecimalFormat df = new DecimalFormat("#.##");
                    if (session.getAttribute("i") != null) {
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
                    %>  
                    <input type="hidden" id="WAmtID" value="<%=m.getWAmmount()%>">
                    <form action="../ActivateAccount" method="post">
                        <div class="row mt-3">

                            <div class="col-12 col-lg-6 col-xl-3">
                                <div class="card bg-pattern-danger">
                                    <div class="card-body">
                                        <div class="media">
                                            <div class="media-body text-left">
                                                <h4 class="text-white"><%=df.format(m.getWAmmount())%></h4>
                                                <input type="hidden" value="<%=m.getWAmmount()%>" id="WalletAmt">

                                                <span class="text-white">Total Wallet Amount</span>
                                            </div>
                                            <div class="align-self-center w-circle-icon rounded-circle bg-contrast">
                                                <i class="icon-wallet text-white"></i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-3"></div>

                            <input type="hidden" id="PinId" name="PinId">
                            <div class="col-12 col-lg-6 col-xl-6" style="background-color: #c0c5c4;padding: 15px">

                                <div class="row">
                                    <%

                                        if (m.isStatus()) {
                                    %>
                                    <div class="col-lg-12 text-center" style="background-color:greenyellow">
                                        <div class="form-group form-float">

                                            <p style="font-size:19px;color:black;" >You Are Activated </p> <br>
                                            <p style="font-size:19px;color:black;" ><%=m.getActivationDate()%> </p> 


                                        </div>
                                    </div>


                                    <%
                                    } else {
                                    %>
                                    <div class="col-lg-8 ">
                                        <div class="form-group form-float">
                                            <label class="form-label">Pin</label>
                                            <div class="form-line">
                                                <input type="text" id="pin" class="form-control" autocomplete="off"  required="" name="pin" style="" placeholder="Click On Pin Below To Use"> 
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

                                    <%
                                        }
                                    %>

                                </div>

                            </div><!--End Row-->

                        </div>
                    </form>
                    <br>

                    <div class="row">
                        <div class="col-lg-6">


                            <div class="card">
                                <div class="card-body">
                                    <div class="table-responsive">
                                        <table class="table">
                                            <h6 class="text-uppercase">My Received Pins</h6>
                                            <thead class="thead-primary">
                                                <tr>
                                                    <th scope="col">Sr.No.</th>
                                                    <th scope="col">Pin</th>
                                                    <th scope="col">Use Pin</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                    int i = 1;
                                                    MemberModel me = (MemberModel) session.getAttribute("Member");

                                                    List<EPinModel> m5 = new EPinDao().getByUserID(me.getId());
                                                    List<EPinModel> m3 = new EPinDao().GetMYGivenTO(me.getId());

                                                    List<Long> arrone = new ArrayList();
                                                    for (EPinModel g : m5) {
                                                        arrone.add(g.getId());
                                                    }
                                                    for (EPinModel g : m3) {
                                                        arrone.add(g.getId());
                                                    }
                                                   
                                                    for (int x = 0; x < arrone.size(); x++) {

                                                        EPinModel e = new EPinDao().getById(arrone.get(x));


                                                %>

                                                <tr>

                                                    <td><%=i%>
                                                        <input type="hidden" id="epinid_<%=e.getId()%>" value="<%=e.getId()%>">
                                                        <input type="hidden" id="mypin_<%=e.getId()%>" value="<%=e.getPin()%>">

                                                    </td>
                                                    <td><%=e.getPin()%></td>
                                                    <td><a class="btn btn-info waves-effect waves-light m-1 use" id="<%=e.getId()%>">Use</a></td>
                                                </tr>
                                                <%
i++;
                                                    }
                                                %>

                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6  " style="margin-top:">
                            <div class="PMClass1">
                                <div class="innerClass">
                                    <p style="font-size:16px">If You Dont Have Enough Amount In Wallet Contact Admin</p>


                                    <a href="GenerateEPin.jsp" class="btn btn-primary shadow-primary btn-md btn-round waves-effect waves-light m-1">Purchase E-Pin</a>


                                </div>

                            </div>


                        </div>
                    </div>
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
            <!-- Bootstrap core JavaScript-->
            <%@include file="Script.jsp" %>
    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/ui-nav-tabs.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:36:28 GMT -->
</html>
