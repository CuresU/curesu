<!DOCTYPE HTML>
<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@page import="com.beans.*"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="java.util.List"%>
<html>
<head>
<title>Doctor Index</title>
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
 <%
 	Doctor d=null;
	List<Appointment> list1=usermaster_dao.getAllAppointment();

 	if(session!=null)
 	{
 		if(session.getAttribute("d")!=null)
 		{
 			d=(Doctor)session.getAttribute("d");
 			System.out.println(d.getFname());
 			int income=0,people=0;
 			for(Appointment a:list1){ 				
 				if(Integer.parseInt(a.getDid())==d.getDid()){
 					income+=Integer.parseInt(d.getFees());
 					people++; 					
 				}
 			}
 			 			
 			System.out.println("id is : " + d.getDid());
 			System.out.println("Doctor index");
 %>
    <section>
   <br>
						<h3 class="tittle text-center mb-lg-4 mb-3" style="color:red;"> <span>Hello Dr. <%=d.getFname() %> <%=d.getLname() %></span></h3>
						
    <hr>
		<!-- main content start-->
		
			<div id="page-wrapper">
				<div class="graphs">
				
					<div class="col_4">
												
						<div class="col-md-4 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-users"></i>
								<div class="stats">
								  <h5><%=people %> <span> people</span></h5>
								  <div class="grow grow1">
									<p>Patients</p>
								  </div>
								</div>
							</div>
						</div>
						
						 <div class="col-md-4 widget" align="right">
							<div class="r3_counter_box">
								<i class="fa fa-usd"></i>
								<div class="stats">
								  <h5><%=income %> <span>Rs.</span></h5>
								  <div class="grow grow2">
									<p>Income</p>
								  </div>
								</div>
							</div>
						</div>
						
						<div class="clearfix"> </div>
						
					</div>


					<br><br>	
<h3 class="blank1">Patients</h3>
					 <div class="xs tabls">
						<div class="bs-example4" data-example-id="contextual-table">
						<table class="table">
						  <thead>
							<tr>
							  <th>Application Date</th>
							  <th>First-name</th>
							  <th>Last-name</th>
							  <th>Contact</th>
							  <th>Application Mode</th>
							  <th></th>
							  
							</tr>
						  </thead>
						  <tbody>
						 	 
					<%

for(Appointment a:list1){ 				
		if(Integer.parseInt(a.getDid())==d.getDid()){
		
%>
							<tr>
								<td><%=a.getAppoint_date() %></td>
								<td><%=a.getU().getFname() %></td>
								<td><%=a.getU().getLname() %></td>
								<td><%=a.getU().getContact() %></td>
						<%-- <%if(a.getMode().equalsIgnoreCase("offline")){%> --%>
						<!-- 		<td>Offline</td> -->
						<%-- <%}else{ %> --%>								
								 <td><%=a.getMode() %></td>
						 <%-- <%} %>  --%>
							<td>
							<%if(a.getMode().equalsIgnoreCase("online")){
							
							%> 
							<form action="ActionController" method="post">
							<input type="hidden" name="aid" value="<%=a.getAapoint_id() %>" >
								<button type="submit"class="btn-primary" name="action" value="viewissue" >View</button>
							</form>
							<%}else{ %>
							<button disabled="disable" class="btn-primary" >View</button>
							<%} %> 
							</td>	
							</tr>
							
							<%}} %>
						  </tbody>
						</table>
					   </div>
					   </div>
	
						
			
			</div>
		</div>
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
 		else{
 			response.sendRedirect("login.jsp");
 		}
 	
%>   
</body>
</html>