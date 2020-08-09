<%@page import="com.beans.*"%>
<%@page import="com.beans.user"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Forgot Email</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Easy Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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

<%-- <%
	String role1=request.getAttribute("role1").toString();
	String id;
	if(role1.equals("doctor"))
	{
		Doctor d=(Doctor)request.getAttribute("d");
		id=Integer.toString(d.getDid());
	}
	else
	{
		user u=(user)request.getAttribute("u");
		id=Integer.toString(u.getUid());
	}
%> --%>
    <section>
			<div id="page-wrapper" class="sign-in-wrapper">
				<div class="graphs">
					<div class="sign-in-form">
						<div class="sign-in-form-top">
							<p><span>Forgot Password</span> <a href="index.jsp"></a></p>
							
						</div>
						<div class="signin">
 							<div class="signin-rit">
								<div class="clearfix"> </div>
							</div>
							<form name="FORGOT PASSWORD" method="post" action="ActionController">
							<%-- <input type="hidden" name="id" value="<%=id %>">
							<input type="hidden" name="role1" value="<%=role1 %>"> --%>
							<div class="log-input">
								<div class="log-input-left">
								   <input type="text" class="user" name="forgotemail" Placeholder="Enter your registered Email Id">
								</div>
								<div class="clearfix"> </div>
							</div>
 							<div class="log-input">
								<div class="log-input-left">
							</div>
							</div>
 							<table>
 							<tr colspan="2">
								<td><input type="submit" name="action" value="Send OTP" style="margin-left:140px; width:150px;"></td>
							</tr>
							</table>
						</form>	 
						</div>
<!-- 						<div class="new_people">
							<h4>For New People</h4>
							<p>Having hands on experience in creating innovative designs,I do offer design 
								solutions which harness.</p>
							<a href="sign-up.html">Register Now!</a>
						</div>
 -->					</div>
				</div>
			</div>
		<!--footer section start-->
<!-- 			<footer>
			   <p>&copy 2015 Easy Admin Panel. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts.</a></p>
			</footer>
 -->        <!--footer section end-->
	</section>
	
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
    
</body>
</html>