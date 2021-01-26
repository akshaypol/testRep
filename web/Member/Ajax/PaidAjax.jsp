<%@page import="Com.Member.Dao.TransactionDao"%>
<%@page import="Com.Member.Model.TransactionModel"%>
<%
    
    TransactionModel t = new TransactionDao().getById(Long.parseLong(request.getParameter("id")));
    
    t.setStatus("Paid");
    new TransactionDao().Update(t);
%>

 <span id=""> <%=t.getStatus()%></span>