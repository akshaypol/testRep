<%-- 
    Document   : try
    Created on : Jul 13, 2019, 8:07:12 PM
    Author     : genesis
--%>

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

        <table>
            <tr>
       
                <td>
                    <table>
                        <tr>
                            <th>Id</th>
                            <th>Id</th>
                            <th>SponceID</th>
                            

                            <th>Password</th>
                            <th>Pool</th>
                            <th>eMAIL</th>


                            
                        </tr>
                        <%
                            List<MemberModel> gg = new MemberDao().getAll();
                            for (MemberModel g : gg) {

                        %>
                        <tr>
                            <td><%=g.getId() %></td>
                            <td><%=g.getUsername()%></td>
                            <td><%=g.getSponcerID()%></td>
                           
                            <td><%=g.getPassword() %></td>
                            <td><%=g.getEmail() %></td>

                            
                           
                        </tr>

                        <%

                            }
                        %>

                    </table>
                </td>
                <td>
                    
                </td>
                

            </tr>
        </table>





    </body>
</html>
