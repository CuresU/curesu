<%@page import="com.beans.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Reset Password</title>
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



    <link href="cssuser/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="cssuser/zoomslider.css" rel='stylesheet' type='text/css' />
    <link href="cssuser/style6.css" rel='stylesheet' type='text/css' />
    <link href="cssuser/style.css" rel='stylesheet' type='text/css' />
    <link href="cssuser/fontawesome-all.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
    
</head> 
   
 <body class="sign-in-up">
 <%
	user_master um=null;
	if(session!=null)
	{
		if(session.getAttribute("um")!=null)
		{
			um=(user_master)session.getAttribute("um");
			System.out.println("um id = " + um.getId());
%>

    <section>
			<div id="page-wrapper" class="sign-in-wrapper">
				<div class="graphs">
					<div class="sign-in-form">
						<div class="sign-in-form-top">
							<p><span>Reset Password</span> <a href="index.html"></a></p>
						</div>
						<div class="signin">
 							<div class="signin-rit">
								<div class="clearfix"> </div>
							</div>
						<form name="Resetpasswordpage" method="post" action="ActionController">
							<input type="hidden" name="um_id" value="<%=um.getId()%>">
							<div class="log-input">
								<div class="log-input-left">
								   <input type="password" class="user" name="cur_pass" placeholder="Enter Current Password" required="required">
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="log-input">
								<div class="log-input-left">
								   <input type="password" class="user" name="new_pass" placeholder="Enter New Password" onchange="checkpass(this)" required="required">
								</div>
								<div class="clearfix"> </div>
							</div>
							<div class="log-input">
								<div class="log-input-left">
								<input type="password" class="user" name="c_pass" placeholder="Confirm Password" onchange="matchpass(this); checkpass(this);" required="required">
								</div>
							</div>
							<input type="submit" name="action" value="Reset Password">
						</form>	 
						</div>
					</div>
				</div>
			</div>
		<!--footer section start-->
       <!--footer section end-->
	</section>
<script>

   function checkpass(checkval)
   {
	   alert("checkpass");
	    var passvalidation=/^(?=.*[0-9])(?=.*[!@#$%^&*])[a-zA-Z0-9!@#$%^&*]{6,16}$/;
		var passval=checkval.value;
		if(passval.match(passvalidation))
		{
			alert("matched");
		}
		else
		{
			alert("not matched");
		}
	}

	function matchpass(checkval)
	{
		var pass=document.Resetpasswordpage.new_pass.value;
		var cpass=checkval.value;
		alert("pass = " + pass + " cpass = " + cpass);
		if(pass===cpass)
		{
			alert("password matches");
		}
		else
		{
			alert("passwords doesn't match");
		}
	}
   </script>	
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <%
		}
 		else
 		{
 			response.sendRedirect("login.jsp");
 		}
 	}
 	else
 	{
 		response.sendRedirect("login.jsp");
 	}
    %> 
</body>
</html> 