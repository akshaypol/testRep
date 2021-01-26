<%@page import="Com.Member.Dao.EPinDao"%>
<%@page import="Com.Member.Model.EPinModel"%>
<%
    String EPIN = request.getParameter("EPIN");
    EPinModel j1 = new EPinDao().getByPin(EPIN);

    if (j1 == null) {
%>
<span class="mySpanSohw">
    Enter New Pin
</span>
<input type="hidden" value="1" id="BtnShow">
<%
} else {
%>
<span class="mySpanSohw1">
    Pin validate
</span>

<input type="hidden" value="2" id="BtnShow">
<%
    }


%>