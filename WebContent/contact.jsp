<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
	<title>DoctorFinder Contact Us </title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="utf-8">
	<meta name="keywords" content="Replenish a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="cssuser/bootstrap.css" rel='stylesheet' type='text/css' />
	<link href="cssuser/style6.css" rel='stylesheet' type='text/css' />
	<link href="cssuser/style.css" rel='stylesheet' type='text/css' />
	<link href="cssuser/fontawesome-all.css" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
	<link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
</head>


<body>
	<!-- banner-inner -->
    <div style="background: url('imagesuser/Banner.jpg');">
		<div class="dotts">
			<div class="header-top">
 <%@ include file="header.jsp" %>
							</div>
			<!--/banner-info-w3layouts-->
			<div class="banner-info-w3layouts text-center">
			</div>
			<!--//banner-info-w3layouts-->
		</div>
	</div>
	<ol class="breadcrumb justify-content-left">
		<li class="breadcrumb-item">
			<a href="Userindex2.jsp">Home</a>
		</li>
		<li class="breadcrumb-item active">Contact Us</li>
	</ol>
	<!-- banner-text -->
	<!-- contact -->
	<section class="banner-bottom-wthree pt-lg-5 pt-md-3 pt-3">
		<div class="inner-sec-w3ls pt-md-5 pt-md-3 pt-3">
		<!---728x90--->
			<h3 class="tittle text-center mb-lg-5 mb-3">
				<span>Get Intouch</span>Contact Us</h3>
				<!---728x90--->
				<div class="container">
						<div class="address row mb-5">
							<div class="col-lg-4 address-grid">
								<div class="row address-info">
									<div class="col-md-3 address-left text-center">
										<i class="far fa-map"></i>
									</div>
									<div class="col-md-9 address-right text-left">
										<h6 class="ad-info text-uppercase mb-2">Address</h6>
										<p>  Gujarat, India
		
										</p>
									</div>
								</div>
							</div>
							<div class="col-lg-4 address-grid">
								<div class="row address-info">
									<div class="col-md-3 address-left text-center">
										<i class="far fa-envelope"></i>
									</div>
									<div class="col-md-9 address-right text-left">
										<h6 class="ad-info text-uppercase mb-2">Email</h6>
										<p>Email :
											<a href="mailto:doctor1finder@gmail.com"> doctor1finder@gmail.com</a>
										</p>
									</div>
		
								</div>
							</div>
							<div class="col-lg-4 address-grid">
								<div class="row address-info">
									<div class="col-md-3 address-left text-center">
										<i class="fas fa-mobile-alt"></i>
									</div>
									<div class="col-md-9 address-right text-left">
										<h6 class="ad-info text-uppercase mb-2">Phone</h6>
										<p>+91 9638671433</p>
		
									</div>
								</div>
							</div>
						</div>
					</div>
			<!-- <div class="container-fluid">
				<div class="row">
					<div class="col-md-6 map">
						<iframe src="https://www.google.com/maps/place/Ganesh+Meridian,+Opp.+Gujarat+High+Court,+Opp.+Amiraj+Farm,+Sola,+S.+G.+Highway,+D+Block,+Sarkhej+-+Gandhinagar+Hwy,+Vishwas+City+1,+Sola,+Ahmedabad,+Gujarat+380060/@23.0751887,72.5235,17z/data=!3m1!4b1!4m5!3m4!1s0x395e834bf0636a73:0xb61768c087dd424a!8m2!3d23.0751887!4d72.5256887"
						    allowfullscreen></iframe>

					</div>
					
 -->					
 						<center>
 						<div class="col-md-6 main_grid_contact">
						<div class="form">
							<h4 class="mb-4 text-left">Send us a message</h4>
							<form action="ActionController" method="post">
								<div class="form-group">
									<label class="my-2">Name</label>
									<input class="form-control" type="text" name="Name" placeholder="" required="">
								</div>
								<div class="form-group">
									<label>Email</label>
									<input class="form-control" type="email" name="Email" placeholder="" required="">
								</div>
								<div class="form-group">
									<label>Message</label>
									<input class="form-control" type="text" name="Message" placeholder="">
								</div>
								<div class="input-group1">
									<input class="form-control" type="submit" name="action" value="Submit">
								</div>
							</form>
						</div>
					</div>
					</center>
					
				</div>
			</div>
		</div>
	</section>
	<!-- //contact -->
	<!---728x90--->
	<!--footer -->
<%@ include file="footer.jsp" %>
	<!-- //footer -->
</body>

</html>