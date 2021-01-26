<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
    <div class="container">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="fa fa-bars"></span> Menu
        </button>
        <form action="#" class="searchform order-lg-last">
            <!--          <div class="form-group d-flex">
                        <input type="text" class="form-control pl-3" placeholder="Search">
                        <button type="submit" placeholder="" class="form-control search"><span class="fa fa-search"></span></button>
                      </div>-->
        </form>
        <div class="collapse navbar-collapse" id="ftco-nav">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active"><a href="index.jsp" class="nav-link">Home</a></li>
                <li class="nav-item"><a href="aboutus.jsp" class="nav-link">About</a></li>
                <li class="nav-item"><a href="Services.jsp" class="nav-link">Services</a></li>
                <li class="nav-item"><a href="Books.jsp" class="nav-link">Books</a></li>
                <!--	        	<li class="nav-item"><a href="team.html" class="nav-link">Our team</a></li>
                                        <li class="nav-item"><a href="project.html" class="nav-link">Project</a></li>
                                        <li class="nav-item"><a href="blog.html" class="nav-link">Blog</a></li>-->
                <li class="nav-item"><a href="Contactus.jsp" class="nav-link">Contact</a></li>
                <!--<li class="nav-item"><a  class="nav-link" data-toggle="modal" data-target="#exampleModal">Login</a></li>-->
            </ul>
        </div>
    </div>
</nav>




<div class="modal fade" id="ForgetPassword" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Enter Your Email</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="../ForgotPass" method="post">
                    <div class="form-group">
                        <div class="position-relative has-icon-right">
                            <!--                                     <div class="form-control-position">
                                                                    <i class="icon-user"></i>
                                                                </div>-->
                            <!--<label for="exampleInputUsername" class="sr-only">Username</label>-->
                            <input type="text" id="exampleInputUsername" name="Email" class="form-control form-control-rounded" placeholder="Email Id">
                            <span style="color:red">Will send Password to your register email </span>


                            <%
                                if (session.getAttribute("i") != null) {
                                    int i = (Integer) session.getAttribute("i");
                                    String msg = (String) session.getAttribute("msg");
                                    if (i == 2) {

                            %>

                            <div class="alert alert-danger alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <div class="alert-icon">
                                    <i class="icon-info"></i>
                                </div>
                                <div class="alert-message">
                                    <span><strong></strong><%=msg%></span>
                                </div>
                            </div>
                            <%} else {%>
                            <div class="alert alert-success alert-dismissible" role="alert">
                                <button type="button" class="close" data-dismiss="alert">&times;</button>
                                <div class="alert-icon">
                                    <i class="icon-info"></i>
                                </div>
                                <div class="alert-message">
                                    <span><strong></strong><%=msg%></span>
                                </div>
                            </div>

                            <%
                                    }
                                    session.removeAttribute("i");
                                    session.removeAttribute("msg");
                                }%>



                        </div>
                    </div>

                    <button type="submit" class="btn btn-primary shadow-primary btn-round btn-block waves-effect waves-light">Send Password</button>

                </form>
            </div>
            <div class="modal-footer">
                <!--        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
        </div>
    </div>
</div>