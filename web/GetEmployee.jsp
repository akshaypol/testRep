<%@page import="java.util.List"%>
<%@page import="Com.Member.Dao.MemberDao"%>
<%@page import="Com.Member.Model.MemberModel"%>
<%


%> 

<div class="row">
    <div class="col-lg-12">
        <div class="card">
            <div class="card-header"><i class="fa fa-table"></i>My Members</div>
            <div class="card-body">
                <div class="table-responsive">
                    <table id="example" class="table table-bordered">
                        <thead>
                            <tr>
                                <th>Sr.No.</th>

                                <th> Entity</th>
                                <th> User Name </th>
                                <th>Email id</th>
                                <th>Name</th>
                                <th>Mobile</th>
                                <th>Action</th>

                            </tr>
                        </thead>
                        <tbody>

                            <%         List<MemberModel> mm = new MemberDao().getAll();
                                int x = 1;
                                for (MemberModel h:mm) {


                            %>
                            <tr>
                                <td><%=x%></td>
                                <td><%=h.getEntity()%></td>
                                <td><%=h.getUsername()%></td>
                                <td><%=h.getEmail()%></td>
                                <td><%=h.getName()%> &nbsp;<%=h.getLName()%></td>

                                <td><%=h.getMobNO()%></td>
                                <td> 

                                    <a href="UpdateMember.jsp?id=<%=h.getId()%>" class="btn-sm btn btn-primary shadow-primary btn-round waves-effect waves-light">Edit</a>
                                    <!--<a target="_blank" href="../UserLoginAdmin?User_ID=<%=h.getUsername()%>&password=<%=h.getPassword()%>" class="btn-sm btn btn-primary shadow-primary btn-round waves-effect waves-light">View More</a>-->
                                    <a href="../DeleteUser?Id=<%=h.getId()%>"  class="btn-sm btn btn-danger shadow-danger btn-round waves-effect waves-light deleteID" >Delete</a>


                                                            <!--<input type="text" value="<%=h.getId()%>"  id="deelteID">-->
                                </td>
                            </tr>
                            <%

                                }
                            %>

                        </tbody>

                    </table>
                </div>
            </div>
        </div>
    </div>
</div><!-- End Row-->