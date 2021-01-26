
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%@page import="Com.Member.Dao.EPinDao"%>
<%@page import="Com.Member.Model.EPinModel"%>
<%@page import="Com.Member.Dao.GivenEpinDao"%>
<%@page import="Com.Member.Model.GivenEpinModel"%>
<%@page import="java.util.List"%>
<%
    long id = Long.parseLong(request.getParameter("id"));
         MemberModel k = new MemberDao().getById(id);


%>

<table class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>User Name</th>
            <th>Name</th>
            <th>Account Number</th>
            <th>Ifsc</th>
            <th>Account Type</th>
            <th>Account Holder Name</th>
            <th>Bank Name</th>
           
        </tr>
    </thead>
    <tbody>

        
        <tr>
            
            <td><%=k.getUsername() %></td>
            <td><%=k.getName() %></td>
            <td><%=k.getAcc_no() %></td>
            <td><%=k.getIfsc_code() %></td>
            <td><%=k.getAccounttype() %></td>
            <td><%=k.getBank_holder_name() %></td>
            <td><%=k.getBank_name() %></td>
           


        </tr>

    </tbody>


</table>
            <br>
            
            <table class="table table-striped table-bordered">
    <thead>
        <tr>
            <th>PhonePay</th>
            <th>GooglePay</th>
            <th>Paytm</th>
        </tr>
    </thead>
             <tbody>

        
                 
        <tr>
             <td><%=k.getPhonepay() %></td>
            <td><%=k.getGooglePay() %></td>
            <td><%=k.getPaytm() %></td>
          
        </tr>
             </tbody>
            
            </table>

