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
<title>Easy Admin Panel an Admin Panel Category Flat Bootstrap Responsive Website Template | Sign In :: w3layouts</title>
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
<style>
.btn{
	
	font-size: 1.1em;
    color: #fff;
    background: #00ACED;
    border: none;
    width:auto;
    height:35px;
	margin-top: 0.5em;
	display: block;
	outline: none;
	border-radius: 4px;
	cursor:pointer;
	display:inline;
	
	}
.btn:hover{
	 background:#8BC34A;
	 transition: 0.5s all;
  -webkit-transition: 0.5s all;
  -moz-transition: 0.5s all;
  -o-transition: 0.5s all;
	}
/* tr:nth-child(even)
{
	background-color:#f2f2f2;
} */
</style>
</head> 
   
 <body class="sign-in-up">
<%
	/* Admin a=null;
	if(session!=null)
	{
		System.out.println("in if session");
		if(session.getAttribute("a")!=null)
		{
			System.out.println("in if admin session");
			a=(Admin)session.getAttribute("a"); */
			
			//List<Category> list=ProductDao.getAllCategory();
		Doctor d=(Doctor)request.getAttribute("d");
%>
    <section>
			<div id="page-wrapper" class="sign-in-wrapper">
				<div class="graphs">
					<div class="sign-in-form">
						<div class="sign-in-form-top">
							<p><span>Dr. <%=d.getFname()%> <%=d.getLname() %></span> <a href="index.html"></a></p>
						</div>
						<div class="signin">
							<div class="signin-rit">
								<!-- <span class="checkbox1">
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked="">Forgot Password ?</label>
								</span> -->
								<!-- <p><a href="#">Click Here</a> </p> -->
								<div class="clearfix"> </div>
							</div>
							<form name="login" method="post" action="ActionController" style="margin-top:-50px;">
							<table>
							<input type="hidden" name="did" value="<%=d.getDid() %>">
							<div class="log-input">
								<div class="log-input-left">
								<tr>
									<td><h3><label>Doctor Name : </label></h3></td>
									<td><h3><label>Dr. <%=d.getFname()%> <%=d.getLname() %></label></h3></td>
								</tr>
								</div>
								<div class="log-input-left">
								<tr>
									<td><h3><label>Highest Qualification : </label></h3></td>
									<td><h3><label><%=d.getHigh_qua() %></label></h3></td>
								</tr>
								</div>
								<div class="log-input-left">
								<tr>
									<td><h3><label>SSC : </label></h3></td>
									<td><p  style="margin-top:-10px;"><a class="btn"  href="ActionController?action=viewssc&did=<%=d.getDid() %>">SSC Certificate</a></p></td>
								</tr>
								</div>
								
								<div class="log-input-left">
								<tr>
									<td><h3><label>HSC : </label></h3></td>
									<td><p  style="margin-top:-10px;"><a class="btn"  href="ActionController?action=viewhsc&did=<%=d.getDid() %>">HSC Certificate</a></p></td>
								</tr>
								</div>
								<div class="log-input-left">
								<tr>
									<td><h3><label>BACHELORS : </label></h3></td>
									<td><p  style="margin-top:-10px;"><a class="btn"  href="ActionController?action=viewbac&did=<%=d.getDid() %>">Bachelor's Certificate</a></p></td>
								</tr>
								</div>
								<div class="log-input-left">
								<tr>
									<td><h3><label>MASTERS : </label></h3></td>
									<td><p  style="margin-top:-10px;"><a class="btn"  href="ActionController?action=viewmas&did=<%=d.getDid() %>">Master's Certificate</a></p></td>
								</tr>
								</div>
								<div class="log-input-left">
								<tr>
									<td><h3><label>OTHERS : </label></h3></td>
									<td><p  style="margin-top:-10px;"><a class="btn"  href="ActionController?action=viewothers&did=<%=d.getDid() %>">Other Certificate</a></p></td>
								</tr>
								</div>
								<div class="log-input-left">
								<tr>
									<td><h3><label>Clinic Name : </label></h3></td>
									<td><h3><label><%=d.getC_name() %></label></h3></td>
								</tr>
								</div>
								<div class="log-input-left">
								<tr>
									<td><h3><label>Clinic Address : </label></h3></td>
									<td><h3><label><%=d.getC_address() %> , <%=d.getCity() %> , <%=d.getState() %></label></h3></td>
								</tr>
								</div>
								<div class="log-input-left">
								<tr>
									<td><h3><label></label></h3></td>
									<td><h3><label></label></h3></td>
								</tr>
								</div>
								<!-- <span class="checkbox2">
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i></label>
								</span> -->
								<div class="clearfix"> </div>
							</div>
							<div class="log-input">
								<!-- <div class="log-input-left">
								   <input type="password" class="lock" name="pass"  onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email address:';}"/>
								</div> -->
								<!-- <span class="checkbox2">
									 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i></label>
								</span> -->
								<div class="clearfix"> </div>
							</div>
							<tr><td colspan=2><center><button type="submit" class="btn" name="action" value="verifydoctor" style="margin-top:-20px;">Verify</button></center></td></tr>
							</table>
						</form>	 
						</div>
						<!-- <div class="new_people">
							<h4>For New People</h4>
							<p>Having hands on experience in creating innovative designs,I do offer design 
								solutions which harness.</p>
							<a href="sign-up.html">Register Now!</a>
						</div> -->
					</div>
				</div>
			</div>
		<!--footer section start-->
			<!-- <footer>
			   <p>&copy 2015 Easy Admin Panel. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts.</a></p>
			</footer> -->
        <!--footer section end-->
	</section>
	
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <%-- <%
		}
		else
		{
			response.sendRedirect("sign_in_admin.jsp");
		}
	}
	else
	{
		response.sendRedirect("sign_in_admin.jsp");
	}

%> --%>
</body>
</html>