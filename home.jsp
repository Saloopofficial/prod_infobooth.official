<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">

	<title>Infobooth</title>

	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="keywords" content="">
	<meta name="author" content="">

	<!-- FAVICON -->
	<link rel="shortcut icon" href="images/logo.png">

	<!-- BOOTSTRAP -->
	<link rel="stylesheet" href="homecss/css/bootstrap.min.css">

	<!-- ICONS -->

	<link rel="stylesheet" href="homecss/css/icons/fontawesome/css/style.css">
	<link rel="stylesheet" href="homecss/css/icons/style.css">
	<link rel="stylesheet" href="homecss/css/icons/icon2/style.css">
	<link rel="stylesheet" href="homecss/css/home.css">
	 
</head>
<body id="page-top">

<div class="body">
	<!-- HEADER -->
	<header>
		<nav class="navbar-inverse navbar-lg navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<a href="home.jsp" class="navbar-brand brand"><img src="images/infobooth1.png" alt="logo" width="120px"></a>

						</div>

				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				</button>

				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav navbar-right navbar-login">
						<li>
							<a href="https://forms.gle/mgRomJRzDRFK89iQ7"> <i class="fa fa-phone"></i> Join Us</a>
						</li>
					</ul>
					<ul class="nav navbar-nav navbar-right">





					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- INTRO -->
	<div id="home" class="intro intro1">
		<div class="overlay"></div>
		<div class="container">
			<div class="row center-content">
				<div class="col-sm-5 col-md-4">
					<div class="intro-form">
						<h4>Welcome to Infobooth</h4>
						<form method="post" action="Login">
							<input name="form-type" value="contact" type="hidden">
							<fieldset>

								<input name="email" id="email"  placeholder="Username" required type="email">
								<input name="pass" id="pass" placeholder="Password" required type="password" >
								<button name="formsubmit" id="formsubmit" class="btn btn-block btn-lg btn-primary" type="submit">Sign in</button>
							</fieldset>
						</form>
						<p Style="color:red"><% HttpSession ss =request.getSession(); 
						if(ss.getAttribute("error")!=null){
						%>
						<%=ss.getAttribute("error") %>
						<%ss.setAttribute("error", null); }%>
						</p>
					</div>
				</div>
				<div class="col-sm-7 col-md-push-1">
					<h3>Infobooth- Helping the organization to find their best fit </h3><br> <h2>What We Have ?</h2>
					<div class="row">
						<div class="col-md-10">
							<div class="intro-box">
								<span class="icon-calendar"></span>
								<div>
									<h4>1. Company Database</h4>
									<p>Robust database of various companies.</p>
								</div>
							</div>
							<div class="intro-box">
								<span class="icon-lock"></span>
								<div>
									<h4>2. Employee Database </h4>
									<p>Directory of employees</p>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




     <!-- SERVICES -->
	 <div class=" bg-light">
    <div class="container">
	<div class="about-inline text-center">
		<div class="container">
        <p>- reason -</p>
			<h3>Reasons To Adopt Us </h3>
			</div>
	</div>

    <div class="service3 icon-box-square">
		<div class="container">
			<div class="row">
				<div class="col-md-4">
					<div class="text-center">
						<span><i class="fa fa-1x fa-magic"></i></span>
						<div class="services-content">
							<h2>Transparent</h2>
							<p> We are here to provide you with  authentic insights thus being transparent.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="text-center">
						<span><i class="fa fa-1x fa-codepen"></i></span>
						<div class="services-content">
							<h2>Loyal</h2>
							<p> We, as a platform, are dedicated  and loyal to our users.</p>
						</div>
					</div>
				</div>
				<div class="col-md-4">
					<div class="text-center">
						<span><i class="fa fa-1x fa-delicious"></i></span>
						<div class="services-content">
							<h2>Innovative</h2>
							<p>We are here to provide you with unique and relevant solutions thus being innovative.</p>
						</div>
					</div>
				</div>
			</div>
		</div>

	 </div>
   </div>
 </div>
 </div>

 <!-- INFO CONTENT -->

   <!-- CONTACT US -->
    <div class="container" id="contact">
	<div class="about-inline text-center">
        <p>- CONTACT US -</p>
			<h3>Customer satisfaction is our top priority,  <br>  Don't hesitate to contact us </h3>
		</div>
	</div>

	<!-- CONTACT INFO -->
	<div id="contact-info">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-sm-6">
					<div class="c-info">
						<i class="icon-phone"></i>
						<h5><b>Call Us</b></h5>
						<p>+91 8750510042</p>
					</div>
				</div>

				<div class="col-lg-3 col-sm-6">
					<div class="c-info">
						<i class="icon-envelope"></i>
						<h5><b>Email</b></h5>
						<p><a href="">contact@infobooth.in</a></p>
					</div>
				</div>

				<div class="col-lg-3 col-sm-6">
					<div class="c-info">
						<i class="icon-map-marker"></i>
						<h5><b>Address</b></h5>
						<p>Shahdara, Delhi</p>
					</div>
				</div>

                <div class="col-lg-3 col-sm-6">
					<div class="c-info">
						<i class="icon-lifesaver"></i>
						<h5><b>WEBSITE</b></h5>
						<p><a href="" >www.infobooth.in</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- COPYRIGHT -->
	<div class="footer-copy">
		<div class="container">
			&copy; 2022. Infobooth. All rights reserved.
	</div>
</div>


<!-- JAVASCRIPT =============================-->
<script src="homecss/js/jquery.js"></script>
<script src="homecss/js/bootstrap.min.js"></script>
<script src="homecss/js/vendors/slick/slick.min.js"></script>

<script src="homecss/js/vendors/stellar.js"></script>

<script src="homecss/js/vendors/swipebox/js/jquery.swipebox.min.js"></script>
<script src="homecss/js/home1.js"></script>



</body>
</html>