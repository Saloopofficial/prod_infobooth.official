<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ page import="dao.Companyuser" %>
<%@page import="java.io.PrintStream"%>
<%
Companyuser cuser=new Companyuser();
cuser.setc_id("");
cuser.setcompany_name("");
cuser.setcompany_username("");

HttpSession ss=request.getSession();
if(ss.getAttribute("user")==null)
	response.sendRedirect("home.jsp");
else{
	
	cuser=(Companyuser)ss.getAttribute("user");
	//System.out.println("user is looged in for index"+ss.getAttribute("user"));
}
%>

<%
if(ss.getAttribute("error")!=null)
{
	%>
	<body onload="callmodal1()">
	<script>
	function callmodal1()
	{
		$('#exampleModal2').modal('show');
	}
	</script>
	
	<%
	
	
	
}
else
{
	if(ss.getAttribute("success")!=null)
	{
		%>
		<body onload="callmodal2()">
		<script>
		function callmodal2()
		{
			$('#exampleModal').modal('show');
		}
		</script>
		
		<%
		
	}
}

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Infobooth</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="infobooth" />

    <link rel="shortcut icon" href="images/logo.png">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

    <!--Material Icon -->
    <link rel="stylesheet" type="text/css" href="css/materialdesignicons.min.css" />
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" type="text/css" href="css/fontawesome.css" />

    <!-- selectize css -->
    <link rel="stylesheet" type="text/css" href="css/selectize.css" />

    <!--Slider-->
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link rel="stylesheet" href="css/owl.theme.css" />
    <link rel="stylesheet" href="css/owl.transitions.css" />
    

    <!-- Custom  Css -->
    <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href='https://fonts.googleapis.com/css?family=Cutive Mono' rel='stylesheet'>
    
    <style>

    </style>
</head>
<body>
  <!-- Loader -->
    <div id="preloader">
        <div id="status">
            <div class="spinner">
                <div class="double-bounce1"></div>
                <div class="double-bounce2"></div>
            </div>
        </div>
    </div>
    <!-- Loader -->

    <!-- Navigation Bar-->
    <header id="topnav" class="defaultscroll scroll-active">
        <!-- Tagline STart -->
        <div class="tagline">
            <div class="container">
                <div class="float-left">
                    <div class="phone">
                        <i class="mdi mdi-phone-classic"></i> +91 8750510042
                    </div>
                    <div class="email">
                        <a href="#">
                            <i class="mdi mdi-email"></i> Support@infobooth.in
                        </a>
                    </div>
                </div>
                <div class="float-right">
                    <ul class="topbar-list list-unstyled d-flex" style="margin: 11px 0px;">
                        <li class="list-inline-item"><a href="javascript:void(0);"><i class="mdi mdi-account mr-2"></i><%=cuser.getcompany_name() %></li>
                        <!-- <li class="list-inline-item">
                            <select id="select-lang" class="demo-default">
                                <option value="">Language</option>
                                <option value="4">English</option>
                                <option value="1">Spanish</option>
                                <option value="3">French</option>
                                <option value="5">Hindi</option>
                            </select>
                        </li> -->
                         <li class="list-inline-item"><a href="javascript:void(0);"><a href="logout.jsp"><i class="mdi mdi-account mr-2"></i>LOG-OUT
                        	</a></li>
                        
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- Tagline End -->

        <!-- Menu Start -->
        <div class="container">
            <!-- Logo container-->
            <div>
                <a href="index.jsp" class="logo">
                    <img src="images/infobooth.png" alt="" class="logo-light" height="78" />
                    <img src="images/infobooth1.png" alt="" class="logo-dark" height="58" />
                </a>
            </div>
            <div class="buy-button">
                <a href="post-a-job.jsp" class="btn btn-primary">Block a Candidate</a>
            </div><!--end login button-->
            <!-- End Logo container-->
            <div class="menu-extras">
                <div class="menu-item">
                    <!-- Mobile menu toggle-->
                    <a class="navbar-toggle">
                        <div class="lines">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </a>
                    <!-- End mobile menu toggle-->
                </div>
            </div>

            <div id="navigation">
                <!-- Navigation Menu-->
                <ul class="navigation-menu">
                    <li><a href="index.jsp">Home</a></li>
                    <li><a href="about.jsp">About Us</a></li>
                    <li><a href="contact.jsp">Contact Us</a></li>
                   
                </ul><!--end navigation menu-->
            </div><!--end navigation-->
        </div><!--end container-->
        <!--end end-->
    </header><!--end header-->


    <!-- Start home -->
   
      <section class="bg-about page-next-level" style="background: linear-gradient(90deg, hsla(152, 100%, 50%, 1) 0%, hsla(186, 100%, 69%, 1) 100%);">
   
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="text-center text-white">
                        <h2 class="" style="font-family: 'Cutive Mono'; font-size: 45px;">Block A Candidate</h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end home -->

    <!-- POST A JOB START -->
    <section class="section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10">
                    <div class="rounded shadow bg-white p-4">
                        <div class="custom-form">
                            <div id="message3"></div>
                            <form method="post" action="blockrequest" name="contact-form" id="contact-form3" enctype="multipart/form-data">
                                <h4 class="text-dark mb-3">Request To Block A Candidate :</h4>
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group app-label mt-2">
                                            <label class="text-muted">Company Name *</label>
                                            <input id="company-name" name="compname" style=" background-color : #d1d1d1; " required="required" type="text" value="<%=cuser.getcompany_name().toUpperCase() %>"  readonly="readonly" class="form-control resume" placeholder="<%=cuser.getcompany_name() %>">
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group app-label mt-2">
                                            <label class="text-muted">Candidate Name *</label>
                                            <input id="candidate-name" name="cname" required="required"  type="text" class="form-control resume" placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group app-label mt-2">
                                            <label class="text-muted">Candidate Phone Number *</label>
                                            <input id="candidate_number" name="cphone" onchange="validatephone()"  type="text" class="form-control resume" placeholder="">
                                        <p id="phoneerror" style="color:red ; display:none" >Invalid Phone Number format ,use 9876543210 format</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                  <div class="col-md-6">
                                      <div class="form-group app-label mt-2">
                                          <label class="text-muted">Candidate DOB *</label>
                                          <input id="dob" name="cdob" required="required" type="date" class="form-control resume" placeholder="">
                                      </div>
                                  </div>
                                    <div class="col-md-6">
                                        <div class="form-group app-label mt-2">
                                            <label class="text-muted">Candidate Email Id *</label>
                                            <input id="email" onchange="validateemail()" name="cemail" type="text" class="form-control resume" placeholder="">
                                        <p id="emailerror"  style="color:red ; display:none" >Check your E-mail ID</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group app-label mt-2">
                                            <label class="text-muted">Offer Letter Sent Date *</label>
                                            <input required="required" name="offersent" id="offersent" type="date"  class="form-control resume" placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <ul class="list-inline mb-0">
                                          <li class="list-inline-item">
                                                <h6 class="text-muted mb-0">Upload Images Or Documents *</h6>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="input-group mt-2 mb-2">
                                                    <div class="custom-file">
                                                        <input type="file" required="required" name="file1get" onchange="showfile1()" class="custom-file-input" id="inputGroupFile01" aria-describedby="inputGroupFileAddon01">
                                                        <label class="custom-file-label rounded"><i class="mdi mdi-cloud-upload mr-1"></i> Upload Files</label>
                                                       
                                                    </div>
                                                  
                                                </div>
                                                 <p id="file1name" style="color:green ; font-size:13px ;font-style:italic; " ></p>
                                            </li>


                                        </ul>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group app-label mt-2">
                                            <label class="text-muted">Candidate Aproval Sent Date *</label>
                                            <input id="approvalsent" name="caproval" required="required"  type="date" class="form-control resume" placeholder="">
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <ul class="list-inline mb-0">
                                          <li class="list-inline-item">
                                                <h6 class="text-muted mb-0">Upload Images Or Documents *</h6>
                                            </li>
                                            <li class="list-inline-item">
                                                <div class="input-group mt-2 mb-2">
                                                    <div class="custom-file">
                                                        <input  type="file" required="required" name="file2get" onchange="showfile2()" class="custom-file-input" id="inputGroupFile02" aria-describedby="inputGroupFileAddon01">
                                                        <label class="custom-file-label rounded"><i class="mdi mdi-cloud-upload mr-1"></i> Upload Files</label>
                                                    </div>
                                                </div>
                                                <p id="file2name" style="color:green ; font-size:13px ;font-style:italic; " ></p>
                                            </li>


                                        </ul>
                                    </div>
                                </div>

                            <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group app-label mt-2">
                                            <label class="text-muted">Feedback</label>
                                            <textarea id="feedback" name="feedback" rows="6" class="form-control resume" placeholder=""></textarea>
                                        <p id="notfillerror"  style="color:red ; display:none" >Please provide all Details</p>
                                        </div>
                                    </div>
                                </div>

                                <div class="row">

                                </div>

                                <div class="row">
                                    <div class="col-lg-12 mt-2">
                                        <a href="#" type="submit" onclick="submitForm()" class="btn btn-primary">Block A Candidate</a>
                                        <input type="submit"  hidden="true" id="blocksubmit" name="blocksubmit" value="Block A Candidate">
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- POST A JOB END -->

<!-- Modal -->


<div id="exampleModal" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header" style="background-color:#2eca8b">
							
				<h4 class="modal-title w-100">Success!</h4>	
			</div>
			<div class="modal-body">
				<p class="text-center"> <div class="modal-body">
        <%= ss.getAttribute("success")
        %>
        <%
        ss.setAttribute("success", null);%>
     
      </div></p>
			</div>
			<div class="modal-footer">
				<button class="btn btn-success btn-block" data-dismiss="modal">OK</button>
			</div>
		</div>
	</div>
</div> 




<!-- Modal HTML -->
<div id="exampleModal2" class="modal fade">
	<div class="modal-dialog modal-confirm">
		<div class="modal-content">
			<div class="modal-header" style="background-color:#e43f52">
								
				<h4 class="modal-title w-100">Sorry!</h4>	
			</div>
			<div class="modal-body">
				<p class="text-center">  <div class="modal-body">
  		<%=ss.getAttribute("error") %>
  		<%
  		ss.setAttribute("error", null);%>
      </div></p>
			</div>
			<div class="modal-footer">
				<button class="btn btn-danger btn-block" data-dismiss="modal">OK</button>
			</div>
		</div>
	</div>
</div> 



<script>
        function submitForm() {
        	var companyname=document.getElementById("company-name").value;
        	var candidatename=document.getElementById("candidate-name").value;
        	var candidatenumber=document.getElementById("candidate_number").value;
        	var candidatedob=document.getElementById("dob").value;
        	var candidateemail=document.getElementById("email").value;
        	var offerlettersent=document.getElementById("offersent").value;
        	var approvalsent=document.getElementById("approvalsent").value;
        	var file1=document.getElementById("inputGroupFile01").value;
        	var file2=document.getElementById("inputGroupFile02").value;
        	
        	console.log(companyname);
        	console.log(candidatename);
        	console.log(candidatenumber);
        	console.log(candidatedob);
        	console.log(candidateemail);
        	console.log(offerlettersent);
        	console.log(approvalsent);
        	console.log(file1);
        	console.log(file2);
        	
        	var ret=true;
        	
        	
        	if(companyname.length==0 || candidatename.length==0 || candidatenumber.length==0 ||candidatedob.length==0 ||  candidateemail.length==0 ||  offerlettersent.length==0 || approvalsent.length==0 || file1.length==0 || file2.length==0)
        		{
        		document.getElementById("notfillerror").style.display="block";
        		ret=false;
        		}
        	else{
        		document.getElementById("notfillerror").style.display="none";
        	}
        	
        	
        	var ans=validateemail();
        	
        	if(!ans)
        		{
        		document.getElementById("emailerror").style.display="block";
        	ret=false;
        		}
        	
        	
        	
        	var ans2=validatephone();
        	if(!ans2)
        		{
        		document.getElementById("phoneerror").style.display="block";
        		ret=false;
        		}
        	
        if(!ret)
        	return false;
        
        	
        	
        	
        	
        	
        	
        	document.getElementById("blocksubmit").click();
           
        }
        
        
        function showfile1()
        {
        	var file1=document.getElementById("inputGroupFile01").value;
        	if(file1.length!=0)
        		{
        		
        		console.log("i m herer");
        		document.getElementById("file1name").innerHTML =file1.replace(/^.*[\\\/]/, '');
        		}
        	
        	
        }
        
        
        
        function showfile2()
        {
        	var file1=document.getElementById("inputGroupFile02").value;
        	if(file1.length!=0)
    		{
    		
    		console.log("i m herer2");
    		document.getElementById("file2name").innerHTML =file1.replace(/^.*[\\\/]/, '');
    		}
        }
        
        function validateemail()
        {
        	var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
        	
        	var candidateemail=document.getElementById("email").value;
        	var candidateemail2=document.getElementById("email");
        	if(candidateemail.match(mailformat))
        		{
        		document.getElementById("emailerror").style.display="none";
        		candidateemail2.style.border = "green solid 3px";
        		
        		return true;
        		}
        	
        	else
        		{
        		document.getElementById("emailerror").style.display="block";
        		candidateemail2.style.border = "red solid 3px";
                return false;
        		}
        	
        
        }
        
        
        function validatephone() {
        	  
            var user = document.getElementById("candidate_number").value;
            var user2 = document.getElementById("candidate_number");
            var re = /^\d{10}$/;
            if (re.test(user)) {
            	user2.style.border = "green solid 3px";
            	document.getElementById("phoneerror").style.display="none"; 
                return true;
            }
            else {
            	document.getElementById("phoneerror").style.display="block"; 
                user2.style.border = "red solid 3px";
                return false;
            }
        }
        
    </script>



  <!-- footer start -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-5 col-12 mb-0 mb-md-4 pb-0 pb-md-2" style="
    padding-left: 25px;
                ">
                    <a href="javascript:void(0)"><img src="images/infobooth.png" height="60" alt=""></a>
                    <p class="mt-4">Infobooth is a pristine tool that streamlines the hiring process. It is holding a robust database of various companies and employees who knows and have the insights and the information is shared by the sources who know the best.</p>
                 
   
        <ul class="social-icon social list-inline mb-0">
                            <li class="list-inline-item"><a href="https://www.facebook.com/infobooth.official" class="rounded"><i class="mdi mdi-facebook"></i></a></li>
                            <li class="list-inline-item"><a href="https://twitter.com/InfoboothO" class="rounded"><i class="mdi mdi-twitter"></i></a></li>
                            <li class="list-inline-item"><a href="https://www.instagram.com/infobooth.official/" class="rounded"><i class="mdi mdi-instagram"></i></a></li>
                           
                        </ul>
   

                </div>
                <div class="col-lg-2 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                    <p class="text-white mb-4 footer-list-title">Company</p>
                    <ul class="list-unstyled footer-list">
                        <li><a href="index.jsp" class="text-foot"><i class="mdi mdi-chevron-right"></i> Home </a></li>
                        <li><a href="about.jsp" class="text-foot"><i class="mdi mdi-chevron-right"></i> About Us</a></li>
                         <li><a href="contact.jsp" class="text-foot"><i class="mdi mdi-chevron-right"></i> Contact Us</a></li>
                    </ul>
                </div>
                <div class="col-lg-2 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                    <p class="text-white mb-4 footer-list-title">Get Inspired</p>
                    <ul class="list-unstyled footer-list">
                       
                        <li><a href="https://www.linkedin.com/company/infobooth-official" class="text-foot"><i class="mdi mdi-chevron-right"></i>LinkedIn</a></li>
                        <li><a href="https://www.facebook.com/infobooth.official" class="text-foot"><i class="mdi mdi-chevron-right"></i>Facebook</a></li>
                        <li><a href="https://www.instagram.com/infobooth.official/" class="text-foot"><i class="mdi mdi-chevron-right"></i>Instagram</a></li>

                       
                    </ul>
                </div>

                <div class="col-lg-3 col-md-4 col-12 mt-4 mt-sm-0 pt-2 pt-sm-0">
                    <p class="text-white mb-4 footer-list-title f-17">Business Hours</p>
                    <ul class="list-unstyled text-foot mt-4 mb-0">
                        <li>Monday - Friday : 9:00 am  to 6:00 pm</li>
                        <li class="mt-2">Saturday : 10:00 to 5:00 pm</li>
                        <li class="mt-2">Sunday : Day Off (Holiday)</li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer end -->
        <hr>
        <footer class="footer footer-bar">
            <div class="container text-center">
                <div class="row justify-content-center">
                    <div class="col-12">
                        <div class="">
                            <p class="mb-0">© 2022. Design with by <a href="index.jsp">Infobooth.</a></p>
                        </div>
                    </div>
                </div>
            </div><!--end container-->
        </footer><!--end footer-->
        <!-- Footer End -->

        <!-- Back to top -->
        <a href="#" class="back-to-top rounded text-center" id="back-to-top">
            <i class="mdi mdi-chevron-up d-block"> </i>
        </a>
        <!-- Back to top -->

        <!-- javascript -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery.easing.min.js"></script>
        <script src="js/plugins.js"></script>

        <!-- selectize js -->
        <script src="js/selectize.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>

        <script src="js/owl.carousel.min.js"></script>
        <script src="js/counter.int.js"></script>

        <script src="js/app.js"></script>
        <script src="js/home.js"></script>
        

</body>
</html>