<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%
    String Id = request.getParameter("Id");
    MemberModel g = new MemberDao().getById(Long.parseLong(Id));
%>
<div class="card bg-pattern-danger">
    <div class="card-body" style="background-color:#9c525200 ">
        <div class="media">
            <div class="media-body text-left">
                <h4 class="text-white"><%=g.getWAmmount()%></h4>
                <span class="text-white">Total Wallet Amount</span>
            </div>
            <div class="align-self-center w-circle-icon rounded-circle bg-contrast">
                <i class="icon-wallet text-white"></i></div>
        </div>
    </div>
</div>