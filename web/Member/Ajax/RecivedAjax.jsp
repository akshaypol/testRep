<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%@page import="Com.Member.Dao.TransactionDao"%>
<%@page import="Com.Member.Model.TransactionModel"%>
<%

    TransactionModel t = new TransactionDao().getById(Long.parseLong(request.getParameter("id")));

    t.setStatus("Recived");

    new TransactionDao().Update(t);

    MemberModel mm = new MemberDao().getById(t.getSenderID());
    mm.setPool(1);
    mm.setLinkStatus(false);
    new MemberDao().Update(mm);

    MemberModel mm1 = new MemberDao().getById(t.getRecId());
    if (mm1.getLinkcount() == 3) {
        if (mm1.getPool() == 1) {
            mm1.setPool(2);
        }
        if (mm1.getPool() == 2) {
            mm1.setPool(3);
        }
        if (mm1.getPool() == 3) {
            mm1.setPool(1);
        }

        mm1.setLinkcount(0);
        new MemberDao().Update(mm1);
    }


%>

<span id=""> <%=t.getStatus()%></span>