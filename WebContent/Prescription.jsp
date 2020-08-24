<%@page import="com.beans.*"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="com.beans.Doctor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<title>Prescription</title>
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
   
 <body>
 <%@ include file="DocSidebar.jsp" %>
  <%
 	//Doctor d=null;
  	Appointment a=null;
  	List<Appointment> list1=usermaster_dao.getAllAppointment();
 	if(session!=null)
 	{
 		if(session.getAttribute("d")!=null)
 		{
 			d=(Doctor)session.getAttribute("d");
 			a=(Appointment)request.getAttribute("a");
 			System.out.println(a.getAapoint_id());
 			
 %>
    <section>
    <center>
     
    <!-- main content start-->
		<div style="background:#F8F8F8;">
				<div class="graphs" style="width:70%;background-color: #E6E6FA" >
					<article style="margin: 3px 10px;">
					<div align="right" ><br>
					<h4 class="blank1" ><a href="#">Dr. <%=d.getFname() %> <%=d.getLname() %></a></h4><br>
					<h6 class="blank1" >Clinic Name: <%=d.getC_name() %></h6>
					<h6 class="blank1" ><%=d.getC_address() %> <br> <%=d.getCity() %>,  <%=d.getPincode() %>, <%=d.getState() %> </h6>
					<h6 class="blank1" > Contact Number : <%=d.getC_contact() %></h6>
					<hr>
					</div>
					
					<form class="form-horizontal" method="post" action="ActionController" style="background-color: #E6E6FA">
							<input type="hidden" name="aid" value="<%=a.getAapoint_id() %>">
							<input type="hidden" name="did" value="<%=d.getDid() %>">
								<div class="form-group">
								
								<div align="right">
									Date: <%=a.getAppoint_date() %>
								</div>
									
								<div align="left">
								    <h4>Prescribed to: <a href="#"><%=a.getU().getFname() %> <%=a.getU().getLname() %></a> <br>Age: <%=a.getU().getAge() %></h4>
								</div>
								
								<div align="left"><h4>Issues:</h4></div><br>
								<div><textarea rows="10" cols="100" placeholder="<%= a.getIssue()%>" disabled></textarea>
								</div><br><br>
								
								
								<div align="left"><h4>Medicine prescribed:</h4></div><br>
								<div>
							<textarea name="meds" rows="10" cols="100" id="meds"  placeholder="" required="required"> </textarea>
								</div> </div>
								<br>
				<div align="right"><button class="btn-primary" style="width:30%;height:10%" type="submit" name="action" value="prescriptionupload"><h2>Prescribe</h2></button></div>
				
						</form>
						</div>
				</article>		
	</div>
		</center>
	</section>
	
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