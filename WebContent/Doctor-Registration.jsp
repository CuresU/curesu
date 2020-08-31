<%@page import="com.beans.*"%>
<%@page import="com.dao.usermaster_dao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Doctor Registration Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Easy Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />


<script type="application/x-javascript">
addEventListener("load", function() { 
	setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); 
	} 
</script>

 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!----webfonts--->
<link href='//fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<!---//webfonts---> 
 <!-- Meters graphs -->
<script src="js/jquery-1.10.2.min.js"></script>
<!-- Placed js at the end of the document so the pages load faster -->

</head> 
   
 <body class="sign-in-up">
<%--   <%
 int did=Integer.parseInt(request.getAttribute("did").toString());
 System.out.println("int did:" + did);
	Doctor d=usermaster_dao.getdocbyid(did);
	System.out.println("did:" + d.getDid());
 %> --%> 
<%--  <%
 Doctor d=(Doctor)request.getAttribute("d");
 System.out.println("did" + d.getDid());
 %> --%>
 <img src="D:\Daiict\Sem_2\IP\E_Cure\WebContent\images\logo.jpg">
 
    <section>
			<div id="page-wrapper" class="sign-in-wrapper" style="width:1000px; margin-left:175px;">
			
			<div style="border-style:solid;height:110px;width:100%;"><center><img src="logo/logo.png" alt="CuresU" height="120px" width="500px"></center></div>
				<div class="graphs"  style="border-style:solid;">
				
					<div class="sign-up" >
					
						<h3>Doctor Registeration </h3>
						<form name="Doctor Registration" method="post" action="ActionController" enctype="multipart/form-data">
						
						<%-- <input type="hidden" name="did" value="<%=d.getDid() %>"> --%>
						<h5>Personal Information</h5>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Upload image* :</h4>
							</div>
							<div class="sign-up2" style="margin-top:22px;">
							<input type="file" name="d_image" accept="image/*" required="">
							</div>
							<div class="clearfix"> </div>
						</div>
                 
       
						<div class="sign-u">
							<div class="sign-up1">
								<h4>First Name* :</h4>
							</div>
							<div class="sign-up2">
				
				<input type="text" name="d_fname" pattern="[a-zA-Z]*" placeholder="First Name " required=""/>
				
							</div>
							<div class="clearfix"> </div>
						</div>
				
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Last Name* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
					<input type="text" name="d_lname" pattern="[a-zA-Z]*" placeholder="Last Name "  required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u" style="margin-top:15px;">
							<div class="sign-up1" style="margin-top:-25px;">
								<h4>Gender* :</h4>
							</div>
							<div class="sign-up2">
									<input type="radio" name="user-type" value="Male" required="">&nbsp;Male &nbsp;&nbsp;
						             <input type="radio" name="user-type" value="Female">&nbsp;Female &nbsp;&nbsp;
						            <input type="radio" name="user-type" value="Others">&nbsp;Other
							</div>
							<div class="clearfix"> </div>
						</div>
												
							
					  <div class="sign-u">
							<div class="sign-up1">
								<h4>Address* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="d_add" placeholder="Address" required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Email Address* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="d_email" placeholder=" Email Address" pattern="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$" required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Contact No.* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="d_contact" pattern="[6-9]{1}[0-9]{9}" placeholder="Contact " required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Aadhar No.* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="d_aadhar" placeholder="AadharCard " pattern="[2-9]{1}[0-9]{3}[0-9]{4}[0-9]{4}" required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Registered Id* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="regid" placeholder="Doctor Registration Number " pattern="[0-9]{6}" required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Highest Qualification* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="d_qua" placeholder="Highest Qualification" required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Speciality* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<select name="d_speciality" style="margin-top:35px;" required="">
										<option>NeuroSurgeon</option>
										<option>Physiotherapist</option>
										<option>Skin Specialist</option>
										<option>Homeopathy</option>
										<option>child specialist</option>
										<option>Gynocologist</option>
									</select>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>SSC Certificate* :</h4>
							</div>
							<div class="sign-up2" style="margin-top:22px;">
								<!-- <form> -->
							<input type="file" name="d_ssc" accept="pdf/*" required="">
                 				<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>HSC Certificate* :</h4>
							</div>
							<div class="sign-up2" style="margin-top:22px;">
									<input type="file" name="d_hsc" accept="pdf/*" required="">
                 				
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Bachelor Certificate* :</h4>
							</div>
							<div class="sign-up2" style="margin-top:22px;">
								<!-- <form> -->
									<input type="file" name="d_bac" accept="pdf/*" required="">
                 				<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Masters Certificate* :</h4>
							</div>
							<div class="sign-up2" style="margin-top:22px;">
								<!-- <form> -->
									<input type="file" name="d_mas" accept="pdf/*" required="">
                 				<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Others :</h4>
							</div>
							<div class="sign-up2" style="margin-top:22px;">
								<!-- <form> -->
									<input type="file" name="d_others" accept="pdf/*">
                 				<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<br>
						<br>
						
						<h5>Clinical Information</h5>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Upload Clinic Image* :</h4>
							</div>
							<div class="sign-up2" style="margin-top:23px;">
								<!-- <form> -->
									<input type="file" name="d_clinic" accept="image/*" required="">
                 				<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div> 
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Clinic Name* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="c_name" placeholder=" " required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Address* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="c_add" placeholder=" " required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Landmark* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="c_landmark" placeholder=" " required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>City* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="c_city" placeholder=" " required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>State* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<select name="c_state" style="margin-top:35px;" required="">
										<option>Gujarat</option>
										<option>Rajasthan</option>
										<option>Maharashtra</option>										
									</select>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Pincode* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="c_pin" pattern="[0-9]{6}" placeholder=" " required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Email Address* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="c_email" placeholder=" " required="" pattern="^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$"/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Contact No.* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="c_contact" pattern="[6-9]{1}[0-9]{9}" placeholder=" " required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Fees charge* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="fees" placeholder=" " required=""/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Clinic Timing* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
			From: <input type="time" id="from" name="from" min="07:00" max="21:00" required> 
			&nbsp;&nbsp;&nbsp; 
			To: <input type="time" id="to" name="to" min="07:00" max="21:00" required>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u" align="right">
							<input type="checkbox" value="replyinoneday" required=""> &nbsp;&nbsp;By Clicking I agree to the terms and conditions*	
						</div>
						
						<div class="sub_home">
							<div class="sub_home_left">
								<!-- <form> -->
									<button type="submit" name="action" value="registerdoctordetails" >Submit</button>								
								<!-- </form> -->
							</div>
							
						</div>
					</form>
					</div>
				</div>
			</div>
		
	</section>

<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>