<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Dao.EPinDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%@page import="Com.Member.Model.EPinModel"%>
<%@page import="java.util.Random"%>
<%
    String Pin = request.getParameter("Pin");
  
    int nt = Integer.parseInt(Pin);

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
        e.setUserID(0);
        e.setPinGivenDate("");
        boolean v = new EPinDao().save(e);

    }

    response.sendRedirect("GenerateEPin.jsp");

%>