<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%
    String User = request.getParameter("user");
    int i = 0;
    MemberModel m = new MemberDao().getByUserID(User);
    if (m == null || m.isStatus()) {
        i = 1;
%>
<input type="hidden" id="i" value="<%=i%>">
<div class="card" style="background-color: #3d59ab">
<input type="hidden" id="PinID">
    <div class="card-body">
        <div class="media">
            <div class="media-body text-left">
                <span class="text-white">No User Exists With This User ID Or else Id Is Active </span><br>
                <span class="text-white">Kindly Verify Your User ID Before Activating</span><br>
            </div>
        </div>
    </div>
</div>
<%
} else {
    i = 2;
%>
<input type="hidden" id="i" value="<%=i%>">
<input type="hidden" id="UserID" value="<%=m.getUsername() %>">
<div class="card" style="background-color: #3d59ab">
<input type="hidden" id="PinID">
    <div class="card-body">
        <div class="media">
            <div class="media-body text-left">
                <h4 class="text-white"> User ID:<%=User%></h4>
                <span class="text-white">Name:<%=m.getName()%></span><br>
                <span class="text-white">Mobile:<%=m.getMobNO()%></span><br>
            </div>
        </div>
    </div>
</div>
<%
    }
%>
<script type="text/javascript">
    $(document).ready(function() {
        var i = $('#i').val();
     //   alert(i);
        document.getElementById('PinID').value = i;
    });
</script>