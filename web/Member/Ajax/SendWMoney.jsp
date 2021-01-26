<%@page import="Com.Member.Dao.WithDrawDao"%>
<%@page import="Com.Member.Model.WithDrawModel"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%

    String Amount = request.getParameter("Amount");
    String Id = request.getParameter("Id");
    WithDrawModel w = new WithDrawModel();
    MemberModel g = new MemberDao().getById(Long.parseLong(Id));

    if (Long.parseLong(Amount) >= 1000) {

        if (Long.parseLong(Amount) >= g.getWAmmount()) {
%>
<span class="text-center mySpan">You Enter Greater Amount Than Your Wallet</span>    
<%
} else {

    long tamt = (Long.parseLong(Amount) * 10) / 100;
   
   
    long amt = Long.parseLong(Amount) - tamt;

    w.setUserID(Long.parseLong(Id));

    w.setWamount(amt);
    w.setWamountMain(Long.parseLong(Amount));
    w.setStatus(false);
    WithDrawDao g1 = new WithDrawDao();
    g1.save(w);

    
    g.setWAmmount(g.getWAmmount()-Long.parseLong(Amount));
    new MemberDao().Update(g);

%>
<span class="text-center mySpan">Send Request To Admin</span>        

<%                }

%>


<%} else {

    if (g.getWAmmount() <= 1000) {
%>
<span class="text-center mySpan">You Don't Have Enough Amount In your Wallet</span>   
<%
} else {

%>
<span class="text-center mySpan">You Can't withdraw amount Less Than 1000 </span>     

<%                }
    }


%>
