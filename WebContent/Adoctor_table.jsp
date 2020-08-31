<%@page import="com.beans.*"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Doctor Table</title>
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
	List<Doctor> list=usermaster_dao.getAllDoctors();
%>
    <section>
    <%@ include file="sidebar.jsp" %>
    
    <!-- main content start-->
		<div class="main-content main-content4">	
			<div id="page-wrapper">
				<div class="graphs">
					<h3 class="blank1">Doctors</h3>
					 <div class="xs tabls">
						<div class="bs-example4" data-example-id="contextual-table">
						<table class="table">
						  <thead>
							<tr>
							  <th>Doctor id</th>
							  <th>First-name</th>
							  <th>Last-name</th>
							  <th>Contact</th>
							  <th>Email</th>
							  <th></th>
							  <th></th>
							</tr>
						  </thead>
						  <tbody>
						 	 <%
								for(Doctor d:list)
								{
							%>
					
							<tr>
								<td><%=d.getDid() %></td>
								<td><%=d.getFname() %></td>
								<td><%=d.getLname() %></td>
								<td><%=d.getContact() %></td>
								<td><%=d.getEmail() %></td>
								<td>
									<form name="edit" method="post" action="DocUpdate.jsp">
										<input type="hidden" name="id" value="<%=d.getDid()%>">
										<button name="action" class="btn">Edit</button>
									</form>
								</td>
								<td>
									<form name="delete" method="post" action="ActionController">
									<input type="hidden" name="id" value="<%=d.getDid()%>">
									<input type="submit" name="deleteDoc" id="deleteDoc" value="Delete" class="btn">
									</form>
								</td>
							</tr>
							<%		
								}
							%>
						  </tbody>
						</table>
					   </div>
					   </div>
					   </div></div></div></section>
	
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