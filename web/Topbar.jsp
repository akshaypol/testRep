<style>
    .navDiv
    {
        margin-top: 30px;
    }
    .mywidth
    {
        width: 50%!important;
    }
    .mylink
    {
        margin-left: 10px;
        padding-right: 15px;
        color: #00aeef!important;
        font-size: 18px;
        font-weight: 500;

    }
    .mylink:hover
    {
        cursor:pointer;
    }
    .PRegister
    {
        background-color: #ffbd67;
    }
    .navbar-brand
    {
        color:#00aeef!important;
    }
    .errortext
    {
        color:red;

    }
    #errorpass
    {
        display:none;
    }
    .myradio
    {
        margin-left: 10px;
        margin-top: 6px;
    }
    .Nameerrortext
    {
        color:red;
        display: none;
    }

</style>   
<script type="text/javascript">
    $(document).ready(function() {
        $('.errortext').hide();
        // $('.MyPins').show();

    });
</script>
<div class="container pt-5">
    <div class="row justify-content-between">
        <div class="col">
            <a class="navbar-brand" href="index.jsp">
                <img src="wecare.png" alt=""/>
                <a class="navbar-brand" href="index.jsp">WeCare Enterprises  </a>
            </a>
        </div>
        <div class="col d-flex justify-content-end navDiv">
            <a data-toggle="modal" data-target="#exampleModal" class="mylink align-items-center justify-content-center">Login</a>
            <a data-toggle="modal" data-target="#registerModle"  class="mylink align-items-center justify-content-center">Register</a>

        </div>
    </div>
</div>


<div class="modal fade" id="registerModle" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="registerModle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">You have to Pay 100 rs For Registration  </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="tab-content">
                    <div id="tabe-13" class="container tab-pane active text-center">

                        <form id="form_validation" action="../SaveMemberF" onsubmit="return MyregisterFun();"  method="POST">
                            <!--<form id="form_validation" action="../../../FirstId" method="post">-->

                            <div class="form-group form-float">
                                <!--<label class="form-label">Sponcer ID</label>-->
                                <div class="form-line">
                                    <input type="text" id="sponcerId" required=""   class="form-control" autocomplete="off"   name="SponcerID"  placeholder="Sponcer Id"> 

                                </div> 
                            </div>

                            <div class="form-group form-float">
                                <!--<label class="form-label"> Name</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required=""  autocomplete="off" class="form-control onlytext" name="Name" placeholder="Full Name" >
                                    <span class="Nameerrortext" id="errorpass">Enter same password as above.</span>
                                </div>  
                            </div>





                            <div id="MyUser"></div>


                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required="" id="MObNO1" autocomplete="off" class="form-control" name="MObNO" placeholder="Mobile No"  >
                                    <span class="errortext" id="errortext1">Enter Correct Mobile Number</span>
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">

                                    <input type="text" value="" required="" autocomplete="off" class="form-control" name="Age" placeholder="DD/MM/YYYY" >
                                  </div>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6 col-xs-6 d-flex mywidth  align-self-stretch p-4  ">
                                        Male:- <input type="radio" class="myradio form-inline" name="Gender" placeholder="Gender" value="Male" >      
                                    </div>
                                    <div class="col-md-6 col-xs-6 d-flex mywidth align-self-stretch p-4 ">
                                        Female:- <input type="radio" class=" form-inline myradio" name="Gender" placeholder="Gender" value="Female" >                                   
                                    </div>
                                </div>
                            </div>


                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <select class="form-control onlytext" name="Occupation">
                                        <option value="Student">Student</option>
                                        <option value="Employee">Employee</option>
                                        <option value="Self-Employee">Self-Employee</option>
                                        <option value="Housewife">Housewife</option>
                                        <option value="Business">Business</option>
                                    </select>
                                   
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required="" autocomplete="off" class="form-control" name="PanNum" placeholder="Pan Number" >

                                </div>
                            </div>
                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required="" autocomplete="off" class="form-control " name="Aadhaar" placeholder="Aadhaar Number" >

                                </div>
                            </div>

                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required="" autocomplete="off" class="form-control onlytext" name="Mcharch" placeholder="Member of Charch" >

                                </div>
                            </div>


                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required="" autocomplete="off" class="form-control onlytext" name="City" placeholder="City" >

                                </div>
                            </div>
                            <div class="form-group form-float">
                                <!--<label class="form-label">Email</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required="" autocomplete="off" class="form-control" name="Email" placeholder="Email" required pattern="^\S+@(([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,3})$">

                                </div>
                            </div>
                            <div class="form-group form-float">
                                <!--<label class="form-label">Password</label>-->
                                <div class="form-line">
                                    <input type="text" required="" value="" id="password1" autocomplete="off" class="form-control" name="Password" placeholder="Password" >

                                </div>
                            </div>

                            <div class="form-group form-float">
                                <!--<label class="form-label">Password</label>-->
                                <div class="form-line">
                                    <input type="text" required="" id="Tpassword1" value=""  autocomplete="off" class="form-control" name="Password" placeholder="confirm Password" >
                                    <span class="errortext" id="errorpass1">Enter same password as above.</span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-4"></div>
                                <div class="col-sm-4">
                                    <button class="btn btn-gradient-scooter waves-effect waves-light m-1 PRegister" type="submit">REGISTER</button>

                                </div>
                                <div class="col-sm-4"></div>

                            </div>
                            <!--                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>-->
                        </form>

                    </div>


                </div>
            </div>
            <div class="modal-footer">
                <!--        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
        </div>
    </div>
</div>

<div class="modal fade" id="registerModle1" tabindex="-1" role="dialog" data-backdrop="static" data-keyboard="false" aria-labelledby="registerModle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">You have to Pay 100rs For Registration   </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="tab-content">
                    <div id="tabe-13" class="container tab-pane active text-center">

                        <form id="form_validation" action="../SaveMembernew" onsubmit="return MyregisterFun1();"  method="POST">
                            <!--<form id="form_validation" action="../../../FirstId" method="post">-->

                            <div class="form-group form-float">
                                <!--<label class="form-label">Sponcer ID</label>-->
                                <div class="form-line">
                                    <input type="text" id="sponcerId" required=""   class="form-control" autocomplete="off"   name="SponcerID" style="" placeholder="Sponcer Id"> 

                                </div> 
                            </div>

                            <div class="form-group form-float">
                                <!--<label class="form-label"> Name</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required=""  autocomplete="off" class="form-control onlytext" name="Name" placeholder="Full Name" >
                                    <span class="Nameerrortext" id="errorpass">Enter same password as above.</span>
                                </div>  
                            </div>





                            <div id="MyUser"></div>


                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required="" id="MObNO12" autocomplete="off" class="form-control" name="MObNO" placeholder="Mobile No"  >
                                    <span class="errortext" id="errortext1">Enter Correct Mobile Number</span>
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">

                                    <input type="text" value="" required="" autocomplete="off" class="form-control" name="Age" placeholder="DD/MM/YYYY" >
                                  </div>
                            </div>
                            <div class="container">
                                <div class="row">
                                    <div class="col-md-6 col-xs-6 d-flex mywidth  align-self-stretch p-4  ">
                                        Male:- <input type="radio" class="myradio form-inline" name="Gender" placeholder="Gender" value="Male" >      
                                    </div>
                                    <div class="col-md-6 col-xs-6 d-flex mywidth align-self-stretch p-4 ">
                                        Female:- <input type="radio" class=" form-inline myradio" name="Gender" placeholder="Gender" value="Female" >                                   
                                    </div>
                                </div>
                            </div>


                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <select class="form-control onlytext" name="Occupation">
                                        <option value="Student">Student</option>
                                        <option value="Employee">Employee</option>
                                        <option value="Self-Employee">Self-Employee</option>
                                        <option value="Housewife">Housewife</option>
                                        <option value="Business">Business</option>
                                    </select>
                                   
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required="" autocomplete="off" class="form-control" name="PanNum" placeholder="Pan Number" >

                                </div>
                            </div>
                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required="" autocomplete="off" class="form-control " name="Aadhaar" placeholder="Aadhaar Number" >

                                </div>
                            </div>

                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required="" autocomplete="off" class="form-control onlytext" name="Mcharch" placeholder="Member of Charch" >

                                </div>
                            </div>


                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required="" autocomplete="off" class="form-control onlytext" name="City" placeholder="City" >

                                </div>
                            </div>
                            <div class="form-group form-float">
                                <!--<label class="form-label">Email</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required="" autocomplete="off" class="form-control" name="Email" placeholder="Email" required pattern="^\S+@(([a-zA-Z0-9]([a-zA-Z0-9\-]{0,61}[a-zA-Z0-9])?\.)+[a-zA-Z]{2,3})$">

                                </div>
                            </div>
                            <div class="form-group form-float">
                                <!--<label class="form-label">Password</label>-->
                                <div class="form-line">
                                    <input type="text" required="" value="" id="password12" autocomplete="off" class="form-control" name="Password" placeholder="Password" >

                                </div>
                            </div>

                            <div class="form-group form-float">
                                <!--<label class="form-label">Password</label>-->
                                <div class="form-line">
                                    <input type="text" required="" id="Tpassword12" value=""  autocomplete="off" class="form-control" name="Password" placeholder="confirm Password" >
                                    <span class="errortext" id="errorpass1">Enter same password as above.</span>
                                </div>
                            </div>

                            <div class="form-group row">
                                <div class="col-sm-4"></div>
                                <div class="col-sm-4">
                                    <button class="btn btn-gradient-scooter waves-effect waves-light m-1 PRegister" type="submit">REGISTER</button>

                                </div>
                                <div class="col-sm-4"></div>

                            </div>
                            <!--                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>-->
                        </form>

                    </div>


                </div>
            </div>
            <div class="modal-footer">
                <!--        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" data-backdrop="static" data-keyboard="false" role="dialog" aria-labelledby="registerModle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Login </h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="tab-content">
                    <div id="tabe-13" class="container tab-pane active text-center">

                        <form id="form_validation" action="../WeUserLogin" method="POST">
                            <!--<form id="form_validation" action="../../../FirstId" method="post">-->

                       

                            <div class="form-group form-float">
                                <!--<label class="form-label"> Name</label>-->
                                <div class="form-line">
                                    <input type="text" value="" required=""  autocomplete="off" class="form-control " name="User_ID" placeholder="Email_ID" >
                                   
                                </div>  
                            </div>

                            <div class="form-group form-float">
                                <!--<label class="form-label">Password</label>-->
                                <div class="form-line">
                                    <input type="text" required="" value="" id="password1" autocomplete="off" class="form-control" name="password" placeholder="Password" >

                                </div>
                            </div>
                           
                            <div class="form-group row" style="float:right;">
                                 <span style="float:right;color:red" data-toggle="modal" data-target="#ForgetPassword" >Forget Password</span>
                            </div>

                         <button class="btn btn-gradient-scooter waves-effect waves-light PRegister" type="submit">Login</button>

                            <!--                                <button class="btn btn-primary waves-effect" type="submit">SUBMIT</button>-->
                        </form>

                    </div>


                </div>
            </div>
            <div class="modal-footer">
                <!--        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        <button type="button" class="btn btn-primary">Save changes</button>-->
            </div>
        </div>
    </div>
</div>



        <script>
            $(document).ready(function() {

            });

        </script>