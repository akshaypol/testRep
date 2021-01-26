<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Dao.EPinDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%@page import="Com.Member.Model.EPinModel"%>
<%@page import="java.util.Random"%>
<%
    String Pin = request.getParameter("Pin");
    String Amt = request.getParameter("Amt");
   // System.out.println("Amt........" + Amt);
    MemberModel sidebarr1 = (MemberModel) session.getAttribute("Member");
    MemberModel j = new MemberDao().getById(sidebarr1.getId());
    int nt = Integer.parseInt(Pin);

    double WA = j.getWAmmount();

    double FAmount = WA - Double.parseDouble(Amt);
//    System.out.println("WA........" + WA);
//    System.out.println("FAmount........" + FAmount);
    MemberModel h = new MemberDao().getById(sidebarr1.getId());
    h.setWAmmount(FAmount);
    new MemberDao().Update(h);

    for (int x = 1; x <= nt; x++) {
        char[] chars = "abcdefghjkmnpqrstuvwxyzABCDEFGHJKMNPQRSTUVWXYZ23456789".toCharArray();
        StringBuilder sb = new StringBuilder();
        Random random = new Random();
        for (int i = 0; i < 15; i++) {
            char c = chars[random.nextInt(chars.length)];
            sb.append(c);
        }
        String GPin = sb.toString();
        EPinModel e = new EPinModel();
        e.setPin(GPin);
        e.setPinStatus(true);

        e.setUserID(sidebarr1.getId());
        e.setPinGivenDate("");

        Date d = new Date();
        SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyy hh:mm a");
        String ldate = formatter.format(d);

        e.setPinGeneratedDate(ldate);
        boolean v = new EPinDao().save(e);

    }

    response.sendRedirect("GenerateEPin.jsp");

%>