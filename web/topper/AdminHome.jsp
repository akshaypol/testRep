
<!DOCTYPE html>
<html lang="en">

    <!-- Mirrored from codervent.com/rocker/color-version/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:28:26 GMT -->
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <%@include file="Title.jsp" %>
        <%@include file="Css.jsp" %>
        <style>
            .card-body{
                background-color: #ff655d6b;
            }
        </style>
    </head>

    <body>

        <!-- Start wrapper-->
        <div id="wrapper">

            <!--Start sidebar-wrapper-->
            <%@include file="Sidebar.jsp" %>
            <!--End sidebar-wrapper-->

            <!--Start topbar header-->
            <%@include file="Topbar.jsp" %>
            <!--End topbar header-->

            <div class="clearfix"></div>

            <div class="content-wrapper">
                <div class="container-fluid">
         
                  
                    <div class="alert alert-success alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert">&times;</button>
                        <div class="alert-icon">
                            <i class="icon-info"></i>
                        </div>
                        <div class="alert-message">
                            <span><strong></strong><%=k.getUsername()%>  Send 500 RS.</span>
                       
                        </div>
                    </div>
                         
                               <a class="btn btn-primary btn-sm waves-effect waves-light m-1 ContactModel" style="color:white" id="<%=k.getId()%>" data-toggle="modal" data-target="#ContactModel" data-backdrop="static" data-keyboard="false">View</a>
                     
                        <%
                        
                                    }
                        %>
                    <div class="row mt-3">
                        <div class="col-12 col-lg-6 col-xl-3">
                            <div class="card bg-pattern-primary">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body text-left">
                                           
                                           
                                            <span class="text-white">Total Income</span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 col-xl-3">
                            <div class="card bg-pattern-danger">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body text-left">
                                            <h4 class="text-white"><%
//                                            df.format(mm.getWAmmount())
                                            
                                            %></h4>
                                            <span class="text-white">Wallet</span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 col-xl-3">
                            <div class="card bg-pattern-success">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body text-left">
                                           
                                            <h4 class="text-white">13</h4>
                                            <span class="text-white">Total Withdraw Amount</span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 col-xl-3">
                            <div class="card bg-pattern-warning">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body text-left">
                                           
                                            <span class="text-white">Total Direct Income</span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <div class="row mt-3">
                        <div class="col-12 col-lg-6 col-xl-3">
                            <div class="card bg-pattern-primary">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body text-left">

                                           
                                            <span class="text-white">Total Level Income</span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 col-xl-3">
                            <div class="card bg-pattern-danger">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body text-left">
                                            
                                            <span class="text-white">Total Royalty Income</span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-12 col-lg-6 col-xl-3">
                            <div class="card bg-pattern-success">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body text-left">

                                            <h4 class="text-white">0</h4>
                                            <span class="text-white">Total Leadership Amount</span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-12 col-lg-6 col-xl-3">
                            <div class="card bg-pattern-success">
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body text-left">
                                            <%
                                                List<EPinModel> ep = new EPinDao().getByMe(mm.getId());
                                                int f = ep.size();

                                                int a = 5;

                                                int grandtotal = 0;
                                                int v = f * 500 * a / 100;
                                                grandtotal = f * 500 + v;

                                            %>
                                            <h4 class="text-white"><%=grandtotal%></h4>
                                            <span class="text-white">E-Pin Generate Amount</span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                    <!--//Downline Details Report-->

                    <h4>My Downline Count(Paid ID)</h4>
                    <div class="table-responsive">
                        <table class="table table-light table-striped shadow-light ">
                            <thead>
                                <tr>

                                    <td>Level 1</td>
                                    <td>Level 2</td>
                                    <td>Level 3</td>
                                    <td>Level 4</td>
                                    <td>Level 5</td>
                                    <td>Level 6</td>
                                    <td>Level 7</td>
                                    <td>Level 8</td>

                                </tr>
                            </thead>
                            <%                                MemberModel k = new MemberDao().getById(sidebarr.getId());

                                List<Long> arrone = new ArrayList();
                                List<MemberIDModel> nm1 = new MemberIDDao().getByParent(k.getId());
                                int MemCnt = 0;
                                int TCount = 1;


                            %>
                            <tbody>

                                <%                                   int x = 0;
                                    int p = 0;
                                    for (MemberIDModel n : nm1) {
                                        x++;
                                        MemberModel h = new MemberDao().getById(n.getId());
                                        MemberModel h1 = new MemberDao().getById(n.getSponceID());
                                        long neki = n.getUseriD();
                                        arrone.add(neki);
                                        if (h.isStatus()) {
                                            p++;
                                        }
                                    }
                                %>

                                <%                                            int x1 = 0;
                                    int p1 = 0;
                                    List<Long> arrtwo = new ArrayList();
                                    for (int j = 0; j < arrone.size(); j++) {

                                        List<MemberIDModel> nm2 = new MemberIDDao().getByParent(arrone.get(j));
                                        for (MemberIDModel n : nm2) {
                                            x1++;
                                            MemberModel h = new MemberDao().getById(n.getId());
                                            MemberModel h1 = new MemberDao().getById(n.getSponceID());

                                            long neki = n.getUseriD();
                                            arrtwo.add(neki);
                                            if (h.isStatus()) {
                                                p1++;
                                            }
                                        }
                                    }
                                %>


                                <%                                            int x2 = 0;
                                    int p2 = 0;
                                    List<Long> arrthree = new ArrayList();
                                    for (int j = 0; j < arrtwo.size(); j++) {

                                        List<MemberIDModel> nm2 = new MemberIDDao().getByParent(arrtwo.get(j));
                                        for (MemberIDModel n : nm2) {
                                            x2++;
                                            MemberModel h = new MemberDao().getById(n.getId());
                                            MemberModel h1 = new MemberDao().getById(n.getSponceID());
                                            long neki = n.getUseriD();
                                            arrthree.add(neki);

                                            if (h.isStatus()) {
                                                if (x2 < 125) {
                                                    p2++;
                                                }
                                            }
                                        }
                                    }
                                %>

                                <%                                            int x3 = 0;
                                    int p3 = 0;
                                    List<Long> arrfour = new ArrayList();
                                    for (int j = 0; j < arrthree.size(); j++) {

                                        List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arrthree.get(j));
                                        for (MemberIDModel n : nm3) {
                                            x3++;
                                            MemberModel h = new MemberDao().getById(n.getId());
                                            MemberModel h1 = new MemberDao().getById(n.getSponceID());

                                            long neki = n.getUseriD();
                                            arrfour.add(neki);
                                            if (h.isStatus()) {
                                                p3++;
                                            }
                                        }
                                    }
                                %>

                                <%                                            int x4 = 0;
                                    int p4 = 0;
                                    List<Long> arrfive = new ArrayList();
                                    for (int j = 0; j < arrfour.size(); j++) {

                                        List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arrfour.get(j));
                                        for (MemberIDModel n : nm3) {
                                            x4++;
                                            MemberModel h = new MemberDao().getById(n.getId());
                                            MemberModel h1 = new MemberDao().getById(n.getSponceID());

                                            long neki = n.getUseriD();
                                            arrfive.add(neki);
                                            if (h.isStatus()) {
                                                p4++;
                                            }
                                        }
                                    }
                                %>


                                <%                                            int x5 = 0;
                                    int p5 = 0;
                                    List<Long> arrsix = new ArrayList();
                                    for (int j = 0; j < arrfive.size(); j++) {

                                        List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arrfive.get(j));
                                        for (MemberIDModel n : nm3) {
                                            x5++;
                                            MemberModel h = new MemberDao().getById(n.getId());
                                            MemberModel h1 = new MemberDao().getById(n.getSponceID());

                                            long neki = n.getUseriD();
                                            arrsix.add(neki);
                                            if (h.isStatus()) {
                                                p5++;
                                            }
                                        }
                                    }
                                %>



                                <%                                            int x6 = 0;
                                    int p6 = 0;
                                    List<Long> arrseven = new ArrayList();
                                    for (int j = 0; j < arrsix.size(); j++) {

                                        List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arrsix.get(j));
                                        for (MemberIDModel n : nm3) {
                                            x6++;
                                            MemberModel h = new MemberDao().getById(n.getId());
                                            MemberModel h1 = new MemberDao().getById(n.getSponceID());

                                            long neki = n.getUseriD();
                                            arrseven.add(neki);
                                            if (h.isStatus()) {
                                                p6++;
                                            }
                                        }
                                    }
                                %>


                                <%                                            int x8 = 0;
                                    int p8 = 0;
//                                                List<Long> arrseven = new ArrayList();
                                    for (int j = 0; j < arrseven.size(); j++) {

                                        List<MemberIDModel> nm3 = new MemberIDDao().getByParent(arrseven.get(j));
                                        for (MemberIDModel n : nm3) {
                                            x8++;
                                            MemberModel h = new MemberDao().getById(n.getId());
                                            MemberModel h1 = new MemberDao().getById(n.getSponceID());

//                                                        long neki = n.getUseriD();
//                                                        arrseven.add(neki);
                                            if (h.isStatus()) {
                                                p8++;
                                            }
                                        }
                                    }
                                %>


                                <tr>
                                    <td><%=p%></td>
                                    <td><%=p1%></td>
                                    <td><%=p2%></td>
                                    <td><%=p3%></td>
                                    <td><%=p4%></td>
                                    <td><%=p5%></td>
                                    <td><%=p6%></td>
                                    <td><%=p8%></td>

                                </tr>
                            </tbody>
                        </table>

                    </div>
                    <!-- End container-fluid-->

                </div><!--End content-wrapper-->
                <!--Start Back To Top Button-->
                <a href="javaScript:void();" class="back-to-top"><i class="fa fa-angle-double-up"></i> </a>
                <!--End Back To Top Button-->

                <!--Start footer-->

                <!--End footer-->

            </div><!--End wrapper-->
            <%@include file="BankDetails.jsp" %>
            <%@include file="Footer.jsp" %>

            <%@include file="Script.jsp" %>
    </body>

    <!-- Mirrored from codervent.com/rocker/color-version/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Tue, 18 Sep 2018 13:29:52 GMT -->
</html>
