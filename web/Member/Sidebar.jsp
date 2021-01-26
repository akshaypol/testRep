<%@page import="java.text.ParseException"%>
<%@page import="java.time.LocalDate"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="java.time.LocalDateTime"%>
<script src="../js/Alertajax.js" type="text/javascript"></script>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%

    MemberModel sidebarr1 = (MemberModel) session.getAttribute("Member");
    //  MemberModel member=new MemberDao().getById(sidebarr1.getId());
    if (sidebarr1 == null || sidebarr1.equals(" ") || session == null) {
        out.println("<script type=\"text/javascript\">");
//        out.println("alert('Login First !!');");
        out.println("location='../Login.jsp';");
        out.println("</script>");
    } else {
%>
<style>
    #clockdivblock{ 
        font-family: sans-serif; 
        color: #fff; 
        display: inline-block; 
        font-weight: 100; 
        text-align: center; 
        font-size: 11px; 
    } 
    #clockdivblock > div{ 
        padding: 2px; 
        border-radius: 3px; 
        // background: #00BF96; 
        display: inline-block; 
    } 
    #clockdivblock div > span{ 
        padding: 15px; 
        border-radius: 3px; 
        background: #368cd6; 
        display: inline-block; 
        font-size: 11px;
        font-weight: bold;
    } 
    #demo1
    {
        font-size: 14px; 
    }
</style>
<style> 

    #clockdiv{ 
        font-family: sans-serif; 
        color: #fff; 
        display: inline-block; 
        font-weight: 100; 
        text-align: center; 
        font-size: 9px; 
    } 
    #clockdiv > div{ 
        padding: 2px; 
        border-radius: 3px; 
        // background: #00BF96; 
        display: inline-block; 
    } 
    #clockdiv div > span{ 
        padding: 15px; 
        border-radius: 3px; 
        background: #6cd636c2; 
        display: inline-block; 
        font-size: 11px;
        font-weight: bold;
    } 
    smalltext{ 
        padding-top: 5px; 
        font-size: 16px; 
    } 
    .ClockDivClass{

    }
    .mytopbar
    {
        background-color: #9081b5!important;
    }

</style> 
<%
    MemberModel h = new MemberDao().getById(sidebarr1.getId());


%>


<div id="sidebar-wrapper" data-simplebar="" data-simplebar-auto-hide="true" style="top:60px">
    <br>
<!--        <div class="brand-logo" style="text-align: center">
            <img src="../MyImg/ylogoN.png" style="background-color: white" class="" height="60" alt="logo icon" width="180">
        </div>-->


    <%    
    long diff = 0;
        try {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            String dateInString = h.getRDate();
            System.out.println(dateInString);
            Date dateStart = formatter.parse(dateInString);
            System.out.println(dateStart);

            Date dateEnd = new Date();

            //time is always 00:00:00, so rounding should help to ignore the missing hour when going from winter to summer time, as well as the extra hour in the other direction
            diff = Math.round((dateEnd.getTime() - dateStart.getTime()) / (double) 86400000);
            System.out.println("Days" + diff);

        } catch (ParseException e) {
            e.printStackTrace();
        }

    %>    

    <ul class="sidebar-menu do-nicescrol">
        <li class="sidebar-header" style="border-top:white 1px solid;border-bottom: white 1px solid"><h7 class="" style="color:orange">Sponsor Id:- <%=sidebarr1.getUsername()%></h7></li>
        <li class="sidebar-header" style="border-top:white 1px solid;border-bottom: white 1px solid"><h4 class="text-white" style="color:#2eff2be0!important;">Days:<%=diff%></h4></li>
        <li>
            <a href="HomePage.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Home</span> 
            </a></li>
        <li>
        <li>
            <a href="Profile.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Edit Profile</span> 
            </a></li>
<!--        <li>
            <a href="Register.jsp?userid=<%=sidebarr1.getUsername()%>" class="waves-effect">
                <i class="icon-note"></i> <span>Registration</span> 
            </a>
        </li>-->

   <li>
            <a href="KYCDetails.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Upload KYC</span> 
            </a></li>
        <li>
            <a href="ShareLink.jsp" class="waves-effect">
                <i class="icon-note"></i> <span>Share Link</span> 
            </a></li>
             <li>
            <a href="../Logout" class="waves-effect">
                <i class="icon-note"></i> <span>Logout</span> 
            </a></li>
            
            

        <!--        <li>
                    <a href="#" class="waves-effect">
                        <i class="icon-note"></i> <span>Follow Ups</span> <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="sidebar-submenu">
                        <li><a href="TodaysFollowUps.jsp"><i class="fa fa-circle-o"></i>Todays Follow Ups</a></li>
                        <li><a href="FutureFollowUps.jsp"><i class="fa fa-circle-o"></i>Future Follow Ups</a></li>
        
                    </ul>
                </li>-->
        <!--        <li>
                    <a href="InterestedLeadList.jsp" class="waves-effect">
                        <i class="icon-note"></i> <span>All Leads</span> 
                    </a></li>-->

        <!--        <li>
                    <a href="#" class="waves-effect">
                        <i class="icon-note"></i> <span>E-Pin</span> <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="sidebar-submenu">
                        <li><a href="GenerateEPin.jsp"><i class="fa fa-circle-o"></i>Generate E-Pin</a></li>
                        <li><a href="SendEPin.jsp"><i class="fa fa-circle-o"></i>Send E-Pin's</a></li>
                        <li><a href="MyEPins.jsp"><i class="fa fa-circle-o"></i>My Sent E-Pin Report </a></li>
        
                        <li><a href="ReceiveEPin.jsp"><i class="fa fa-circle-o"></i>My E-Pin's Report</a></li>
                        <li><a href="MyGeneratedEpins.jsp"><i class="fa fa-circle-o"></i>My Generated E-Pin's</a></li>
        
                    </ul>
                </li>-->
        <!--        <li>
                    <a href="#" class="waves-effect">
                        <i class="icon-note"></i> <span>Downline</span> <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="sidebar-submenu">
                        <li><a href="MyDownList.jsp"><i class="fa fa-circle-o"></i>My DownLine List</a></li>
                        <li><a href="MyDirectReport.jsp"><i class="fa fa-circle-o"></i>My Direct</a></li>
        
                    </ul>
                </li>-->

        <!--        <li>
                    <a href="ShareLink.jsp" class="waves-effect">
                        <i class="icon-note"></i> <span>Share Link</span> 
                    </a></li>
                <li>-->
        <!--        <li>
                    <a href="#" class="waves-effect">
                        <i class="icon-note"></i> <span>Funds</span> <i class="fa fa-angle-left pull-right"></i>
                    </a>
                    <ul class="sidebar-submenu">
                        <li><a href="SendFunds.jsp"><i class="fa fa-circle-o"></i>Send Funds</a></li>
                                        <li><a href="MyEPins.jsp"><i class="fa fa-circle-o"></i>My E-Pin's</a></li>
        
                    </ul>
                </li>-->

    </ul>

</div>
<%
    }
%>
<script>

    var regdate1 = $('#RDatePlus7').val();

    var regdatetx = new Date(regdate1).getTime();

// var deadline = new Date("july 07, 2019 15:37:25").getTime();

    var x = setInterval(function() {

        var now = new Date().getTime();
        var t = regdatetx - now;

        var days = Math.floor(t / (1000 * 60 * 60 * 24));
        var hours = Math.floor((t % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
        var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60));
        var seconds = Math.floor((t % (1000 * 60)) / 1000);
        document.getElementById("demo1").innerHTML = "You will Be Blocked After";

        document.getElementById("day1").innerHTML = days;
        document.getElementById("hour1").innerHTML = hours;
        document.getElementById("minute1").innerHTML = minutes;
        document.getElementById("second1").innerHTML = seconds;

//        alert("asdf"+days+"-"+hours+"-"+"="+minutes+"="+seconds);

        if (t < 0) {
//            $('#clockdiv').hide();
            clearInterval(x);
            document.getElementById("demo1").innerHTML = "You Are Blocked";
            document.getElementById("day1").innerHTML = '0';
            document.getElementById("hour1").innerHTML = '0';
            document.getElementById("minute1").innerHTML = '0';
            document.getElementById("second1").innerHTML = '0';

        }
    }, 1000);

</script> 
<script>





//    $('#clockdiv1').hide();
    var deadline1 = $('#ADate').val();
    // alert(deadline1);
    if (deadline1 !== 0) {
        var deadline = new Date(deadline1).getTime();
// alert(deadline);
// var deadline = new Date("july 07, 2019 15:37:25").getTime();

        var x = setInterval(function() {

            var now = new Date().getTime();
            var t = deadline - now;

            var days = Math.floor(t / (1000 * 60 * 60 * 24));
            var hours = Math.floor((t % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
            var minutes = Math.floor((t % (1000 * 60 * 60)) / (1000 * 60));
            var seconds = Math.floor((t % (1000 * 60)) / 1000);
            document.getElementById("demo").innerHTML = "You Are Active Till ";

            document.getElementById("day").innerHTML = days;
            document.getElementById("hour").innerHTML = hours;
            document.getElementById("minute").innerHTML = minutes;
            document.getElementById("second").innerHTML = seconds;

            if (t < 0) {

                clearInterval(x);
                document.getElementById("demo").innerHTML = "YOU ARE DEACTIVATED";
                document.getElementById("day").innerHTML = '0';
                document.getElementById("hour").innerHTML = '0';
                document.getElementById("minute").innerHTML = '0';
                document.getElementById("second").innerHTML = '0';
                var id = $('#id').val();
                $.get("Ajax/DeActivateAjax.jsp", {id: id}, function(data) {
                    // $('#OutPut').html(data);

                });

            }
        }, 1000);
    } else {
        document.getElementById("demo").innerHTML = "YOU ARE DEACTIVATED";
        document.getElementById("day").innerHTML = '0';
        document.getElementById("hour").innerHTML = '0';
        document.getElementById("minute").innerHTML = '0';
        document.getElementById("second").innerHTML = '0';
    }
</script> 
