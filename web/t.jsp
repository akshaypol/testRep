<%-- 
    Document   : try
    Created on : Jul 13, 2019, 8:07:12 PM
    Author     : genesis
--%>

<%@page import="java.time.LocalDate"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Com.Member.Dao.MemberIDDao"%>
<%@page import="Com.Member.Model.MemberIDModel"%>
<%@page import="Com.Member.Dao.TransactionDao"%>
<%@page import="Com.Member.Model.TransactionModel"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="java.util.List"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>

<%

  
//        String Ad1 = "";
//        String a1[] = adate61.split(" ");
//        for (int i = 0; i < a1.length; i++) {
//            Ad1 = a1[0];
//        }
//
////        System.out.println("ActivateDate.....split.." + Ad1);
//        LocalDate ld12 = LocalDate.parse(Ad1);
////        System.out.println("act date d2......" + ld12);
//
//        LocalDate plus7day = ld12.plusDays(30);
////        System.out.println("ADAte + 30......." + plus7day);
//        String g = plus7day.toString();
////        Date plus7day1 = sdf.parse(g);
        
          List<MemberModel> h2 = new MemberDao().getAll();
                                                    System.out.println(h2.size());
                                                    int i = 1;
                                                    for (MemberModel h1 : h2) {
                                                        
                                                        
                                                        Date d = new Date();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

        String RegDate = h1.getRDate();
        String Adprev1 = "";
        String a21[] = RegDate.split(" ");
        for (int i2 = 0; i2 < a21.length; i2++) {
            Adprev1 = a21[0];
        }

        String adate11[] = Adprev1.split("-");

        String ad1 = adate11[0];
        // System.out.println("Date......" + ad);
        String adate31 = adate11[1];
        // System.out.println("Date......" + adate3);
        String adate41 = adate11[2];
        // System.out.println("Date......" + adate4);

        String adate61 = adate41 + "-" + adate31 + "-" + ad1;

        System.out.println("ActivateDate......." + adate61);
                                                    %>
                                                     
                                                    <%
                                                    }
      
%>





    </body>
</html>
