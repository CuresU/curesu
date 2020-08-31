<%@page import="com.beans.*"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Appointment</title>
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
tr:nth-child(even)
{
	background-color:#f2f2f2;
}
</style>
</head> 
   
 <body class="sticky-header left-side-collapsed"  onload="initMap()">
 <%
	Admin ad=null;
	if(session!=null)
	{
		if(session.getAttribute("ad")!=null)
		{
			ad=(Admin)session.getAttribute("ad");
			
%>
 <%
	List<Appointment> list=usermaster_dao.getAllAppointment();
%>
    <section>
    <!-- left side start-->
    <!-- left side start-->
		    <%@ include file="sidebar.jsp" %>
    <!-- left side end-->
    
    
    <!-- main content start-->
		<div class="main-content main-content4">
				<div id="page-wrapper">
				<div class="graphs">
					<h3 class="blank1">Appoinments</h3>
					<!-- <table>
					<tr>
					<td><h4 class="blank1">From date : <input type="date" name="fromdate"></h4></td>
					<td><h4 class="blank1">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;To date : <input type="date" name="todate"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h4></td>
					<td><button type="submit" class="btn" name="action" value="customizecalender" style="margin-top:-10px;">Get Past Appointments</button></td>
					</tr>
					</table> --><br>
					 <div class="xs tabls">
						<div class="bs-example4" data-example-id="contextual-table">
						<table class="table">
						  <thead>
							<tr>
							  <th>Appointment id</th>
							  <th>Patient id</th>
							  <th>Doctor id</th>
							  <th>Appoinment date</th>
							  <th>Appoinment time</th>
							 <!--  <th>Email</th>
							  <th></th> -->
							</tr>
						  </thead>
						  <tbody>
						 	 <%
								for(Appointment a:list)
								{
							%>
							 <tr class="active">
							  
							  <td><%=a.getAapoint_id() %></td>
							  <td><%=a.getU().getUid() %></td>
							  <td><%=a.getD().getDid() %></td>
							  <td><%=a.getAppoint_date() %></td>
							 <%
							 	if(a.getAppoint_time()==null || a.getAppoint_time().equals("00:00"))
							 	{
							 %>
							  <td>Online</td>
							  
							  <%
							 	}
							  else
							 	{
							 %>
							  <td><%=a.getAppoint_time() %></td>
							  <%
							 	}
							  %>
							  
							</tr>
							<% 
								}
							%>
							
							
						  </tbody>
						</table>
					   </div>
					   <!-- <div class="panel-body1"> -->
					   
						
						
		<!--footer section start-->
			<footer>
	<!--		   <p>&copy 2015 Easy Admin Panel. All Rights Reserved | Design by <a href="https://w3layouts.com/" target="_blank">w3layouts.</a></p>  -->
			</footer>
        <!--footer section end-->
	</section>
	
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   
   <%
 		}
 		else
 		{
 			response.sendRedirect("Asign_in.jsp");
 		}
 	}
 	else
 	{
 		response.sendRedirect("Asign_in.jsp");
 	}
%>
</body>
</html>