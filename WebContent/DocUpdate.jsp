<%@page import="com.beans.*"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML>
<html>
<head>
<title>Doctor Updation Form</title>
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

 <img src="D:\Daiict\Sem_2\IP\E_Cure\WebContent\images\logo1.jpg">
 
    <section>
			<div id="page-wrapper" class="sign-in-wrapper" style="width:1000px; margin-left:175px;">
			
			<div style="border-style:solid;height:90px;width:100%;"><center><img src="logo/logog like.png" alt="CuresU" height="80px" width="600px"></center></div>
				<div class="graphs"  style="border-style:solid;">
				
					<div class="sign-up" >
					<% int id=Integer.parseInt(request.getParameter("id"));
					Doctor d=usermaster_dao.getdocbyid(id); %>
						<h3>Update Doctor Details</h3>
						<form name="Update Doctor Details" method="post" action="ActionController" enctype="multipart/form-data">
						
						<%-- <input type="hidden" name="did" value="<%=d.getDid() %>"> --%>
						<h5>Personal Information</h5>
						
							<div class="sign-u">
							<div class="sign-up1">
								<h4>Upload image* :</h4>
							</div>
							<div class="sign-up2" style="margin-top:22px;">
										<input type="file" name="d_image" accept="image/*">
	          				</div>
							<div class="clearfix"> </div>
						</div>
							
							
							<div class="sign-u">
							<div class="sign-up1">
								<h4>First Name* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="d_fname" value="<%= d.getFname() %>" <%-- value=" --%> required/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Last Name* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="d_lname" value="<%= d.getLname() %> " <%-- value="<%=d.getLname()  %>" --%>  required/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Gender :</h4>
							</div>
							<div class="sign-up2" style="margin-top:35px;margin-bottom:10px;">
									<input type="radio" name="user-type" value="Male" style="margin-left:100px;">Male
						             <input type="radio" name="user-type" value="Female" style="margin-left:100px;">Female
						            <input type="radio" name="user-type" value="Others" style="margin-left:100px;">Other
							</div>
						</div>
												
							
					  <div class="sign-u">
							<div class="sign-up1">
								<h4>Address* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="d_add" value=" <%= d.getAddress() %>" required/>
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
									<input type="text" name="d_email" value="<%= d.getEmail() %> " required/>
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
									<input type="text" name="d_contact" value="<%= d.getContact() %>  " required/>
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
									<input type="text" name="d_aadhar" value="<%= d.getAadharno() %>  " required/>
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
									<input type="text" name="d_qua" value="<%= d.getHigh_qua() %>  " required/>
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
									<select name="d_speciality" style="margin-top:35px;">
										<option selected><%= d.getSpeciality() %></option>
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
									<input type="file" name="d_ssc" accept="pdf/*">
                 				<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>HSC Certificate* :</h4>
							</div>
							<div class="sign-up2" style="margin-top:22px;">
									<input type="file" name="d_hsc" accept="pdf/*">
                 				
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Bachelor Certificate* :</h4>
							</div>
							<div class="sign-up2" style="margin-top:22px;">
								<!-- <form> -->
									<input type="file" name="d_bac" accept="pdf/*">
                 				<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						
						<div class="sign-u">
							<div class="sign-up1">
								<h4>Masters Certificate :</h4>
							</div>
							<div class="sign-up2" style="margin-top:22px;">
								<!-- <form> -->
									<input type="file" name="d_mas" accept="pdf/*">
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
									<input type="file" name="d_clinic" accept="image/*">
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
									<input type="text" name="c_name" value="<%= d.getC_name() %> " required/>
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
									<input type="text" name="c_add" value="<%= d.getC_address() %> " required/>
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
									<input type="text" name="c_landmark" value=" <%= d.getLandmark() %>" required/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
						<div class="sign-u">
							<div class="sign-up1">
								<h4>PinCode* :</h4>
							</div>
							<div class="sign-up2">
								<!-- <form> -->
									<input type="text" name="c_landmark" value=" <%= d.getPincode() %>" required/>
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
									<input type="text" name="c_city" value=" <%= d.getCity() %>" required/>
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
									<input type="text" name="c_state" value=" <%= d.getState() %>" required/>
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
									<input type="text" name="c_email" value=" <%= d.getC_email() %>" required/>
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
									<input type="text" name="c_contact" value="<%= d.getC_contact() %> " required/>
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
									<input type="text" name="fees" value=" <%= d.getFees() %>" required/>
								<!-- </form> -->
							</div>
							<div class="clearfix"> </div>
						</div>
		
						<div class="sub_home">
							<div class="sub_home_left">
								<!-- <form> -->
								<form method="post" action="ActionController">
								<input type="hidden" name="id" value="<%= d.getDid()%>">
									<button type="submit" name="action" value="updateregisterdoctordetails">Update</button>
								</form>
																
								<!-- </form> -->
							</div>
							<div class="sub_home_right">
								<p>Go Back to <a href="Adoctor_table.jsp">Doctor Table</a></p>
							</div>
							<div class="clearfix"> </div>
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