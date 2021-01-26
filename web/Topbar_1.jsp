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


<div class="modal fade" id="registerModle" tabindex="-1" role="dialog" aria-labelledby="registerModle" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Enter Details</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="tab-content">
                    <div id="tabe-13" class="container tab-pane active">

                        <form id="form_validation" action="../SaveMemberF" onsubmit="return myfunction();"  method="POST">
                            <!--<form id="form_validation" action="../../../FirstId" method="post">-->

                            <div class="form-group form-float">
                                <!--<label class="form-label">Sponcer ID</label>-->
                                <div class="form-line">
                                    <input type="text" id="sponcerId"   class="form-control" autocomplete="off"   name="SponcerID" style="text-transform: lowercase" placeholder="Sponcer ID (Optional)"> 

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
                                    <input type="text" value="" required="" id="MObNO" autocomplete="off" class="form-control" name="MObNO" placeholder="Mobile No"  >
                                    <span class="errortext" id="errortext">Enter Correct Mobile Number</span>
                                </div>
                            </div>
                            <div class="form-group form-float">
                                <!--<label class="form-label">Mobile No</label>-->
                                <div class="form-line">
                                    <input type="date" value="" required="" autocomplete="off" class="form-control" name="Age" placeholder="Age" >

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
                                    <input type="text" value="" required="" autocomplete="off" class="form-control onlytext" name="Occupation" placeholder="Occupation" >

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
                                    <input type="text" required="" value="" id="password" autocomplete="off" class="form-control" name="Password" placeholder="Password" >

                                </div>
                            </div>

                            <div class="form-group form-float">
                                <!--<label class="form-label">Password</label>-->
                                <div class="form-line">
                                    <input type="text" required="" id="Tpassword" value=""  autocomplete="off" class="form-control" name="Password" placeholder="confirm Password" >
                                    <span class="errortext" id="errorpass">Enter same password as above.</span>
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
