<%@ page language="java" contentType="text/html"  pageEncoding="ISO-8859-1"%>
<%@ page import="dao.Companyuser" %>
<%@page import="java.io.PrintStream"%>
<%@ page import="java.util.*" %>

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
	//System.out.println("hello");
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

    <link rel="shortcut icon" href="images/infobooth.png">

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">

    <!--Material Icon -->
    <link rel="stylesheet" type="text/css" href="css/materialdesignicons.min.css" />

    <link rel="stylesheet" type="text/css" href="css/fontawesome.css" />

    <!-- selectize css -->
    <link rel="stylesheet" type="text/css" href="css/selectize.css" />

    <!--Slider-->
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link rel="stylesheet" href="css/owl.theme.css" />
    <link rel="stylesheet" href="css/owl.transitions.css" />

    <!-- Custom  Css -->
    <link rel="stylesheet" type="text/css" href="css/style.css" />
     



</head>
<body>

<%

String lst=null;
if(ss.getAttribute("findsuccess")!=null)
{
	lst=(String)ss.getAttribute("findsuccess");
	

%>

<body onload="callmodal()">
<script>
function callmodal()
{
	$('#exampleModal1').modal('show');
}

</script> 
<%
}
%>
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
                        <li class="list-inline-item"><a href="javascript:void(0);"><i class="mdi mdi-account mr-2"></i><%if(cuser.getcompany_name()!=null)
                        	out.print(cuser.getcompany_name());
                        else
                        	response.sendRedirect("home.jsp");
                        	%></li>
                   
                        
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
    <!-- Navbar End -->

    <!-- Start Home -->
    <section class="bg-home" style="background: linear-gradient(90deg, hsla(152, 100%, 50%, 1) 0%, hsla(186, 100%, 69%, 1) 100%);">
        <div class="bg-overlay"></div>
        <div class="home-center">
            <div class="home-desc-center">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-12">
                            <div class="title-heading text-center text-white">
                                <h6 class="small-title text-uppercase text-light mb-3">Search for your candidate, get insights and make your hiring process go more smoothly</h6>
                                <h1 class="font-weight-bold mb-6">The quickest approach to find the reliable fit for your company</h1>
                            </div>
                        </div>
                    </div>
                    <div class="home-form-position">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="home-registration-form p-4 mb-3">
                                    <form class="registration-form" method="post" action="search_blocked">
                                        <div class="row">
                                            <div class="col-lg-3 col-md-6">
                                                <div class="registration-form-box">
                                                    <i class="fa fa-briefcase"></i>
                                                    <input type="text" required="required" id="exampleInputName1" name="name" class="form-control rounded registration-input-box" placeholder="Full Name">
                                                </div>
                                            </div>

                                           
                                            <div class="col-lg-3 col-md-6">
                                                <div class="registration-form-box">
                                                    <i class="fa fa-briefcase"></i>
                                                    <input type="number"  required="required" id="exampleInputName2"  name="phone" class="form-control rounded registration-input-box" placeholder="Phone number">
                                                </div>
                                            </div>
                                            
                                            
                                             <div class="col-lg-3 col-md-6">
                                                <div class="registration-form-box">
                                                    <i class="fa fa-briefcase"></i>
                                                    <input type="text" id="DOB" required="required" name=dob onmouseover="(this.type='date')" onmouseout ="if(!this.value)this.type='text'" class="form-control rounded registration-input-box" placeholder="DOB">
                                                </div>
                                            </div>
                                            
                                            <div class="col-lg-3 col-md-6">
                                                <div class="registration-form-box">
                                                    <input type="submit" id="submit" name="send" value="Search" class="submitBnt btn btn-primary btn-block" >
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end home -->
<!-- pop window start -->
<div class="modal fade" id="exampleModal1" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
        <div class="modal-content rounded-0">
          <div class="modal-body bg-3">

            <div class="px-3 to-front">
              <div class="row align-items-center">
                <div class="col text-right">
                  <a href="#" class="close-btn" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true"><span class="icon-close2"></span></span>
                  </a>
                </div>
              </div>
            </div>
            <div class="p-4 to-front">
              <div class="text-center">
               
               
                <%
               %>
                		<p class="mb-4"><%=lst%></p>
                <%
                ss.setAttribute("findsuccess",null);
                
                
                
                %>
                
                <form action="#" class="mb-4">
                  <div class="row">
                    <div class="col-6">
                      <button class="btn btn-secondary btn-block" data-dismiss="modal" style="margin-left:50%">Done</button>
                    </div>
                    
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>

<!-- pop window end -->
	


    <!-- How it Work start -->
    <section class="section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="section-title text-center mb-4 pb-2">
                        <h4 class="title title-line pb-5">How It Work</h4>
                        <p class="text-muted para-desc mx-auto mb-1">Post a job to tell us about your project. We'll quickly match you with the right freelancers.</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 mt-6 pt-2">
                    <div class="how-it-work-box bg-light p-4 text-center rounded shadow">
                        <div class="how-it-work-img position-relative rounded-pill mb-3">
                            <img src="images/how-it-work/img-1.png" alt="" class="mx-auto d-block" height="50">
                        </div>
                        <div>
                            <h5>Search for the candidate</h5>
                            <p class="text-muted">Company can search for the candidate on the portal before offering any offer letter to the candidate  and make a wise decision.</p>
                            
                           
                        </div>
                    </div>
                </div>
                <div class="col-md-6 mt-6 pt-2">
                    <div class="how-it-work-box bg-light p-4 text-center rounded shadow">
                        <div class="how-it-work-img position-relative rounded-pill mb-3">
                            <img src="images/how-it-work/img-2.png" alt="" class="mx-auto d-block" height="50">
                        </div>
                        <div>
                            <h5>Block the candidate</h5>
                            <p class="text-muted"> Company can block the candidates who decline offer after accepting offer and decrease the availability for the right candidates.</p>
                           
                        </div>
                    </div>
                </div>
               
            </div>
        </div>
    </section>
    <!-- How it Work end -->

 


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
 <script>
  if (document.location.search.match(/type=embed/gi)) {
    window.parent.postMessage("resize", "*");
  }
</script>
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