<%@page import="com.beans.*"%>
<%@page import="com.beans.Doctor"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Doctor Appointment</title>
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
	Doctor d=null;
	if(session!=null)
	{
		if(session.getAttribute("d")!=null)
		{
			d=(Doctor)session.getAttribute("d");
			List<Doctor> list=usermaster_dao.getAllDoctors();
			List<Appointment> list1=usermaster_dao.getAllAppointment();
			
%>
    <section>
    <%@ include file= "sidebar.jsp" %>
    <!-- main content start-->
		<div class="main-content main-content4">
			<!-- header-starts -->
			<div class="header-section">
			 
			<!--toggle button start-->
			<a class="toggle-btn  menu-collapsed"><i class="fa fa-bars"></i></a>
			<!--toggle button end-->

			<!--notification menu start -->
			<div class="menu-right">
				<div class="user-panel-top">  	
					<div class="profile_details_left">
						<ul class="nofitications-dropdown">
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
									
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have 3 new messages</h3>
												</div>
											</li>
											<li><a href="#">
											   <div class="user_img"><img src="images/1.png" alt=""></div>
											   <div class="notification_desc">
												<p>Lorem ipsum dolor sit amet</p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											 </a></li>
											 <li class="odd"><a href="#">
												<div class="user_img"><img src="images/1.png" alt=""></div>
											   <div class="notification_desc">
												<p>Lorem ipsum dolor sit amet </p>
												<p><span>1 hour ago</span></p>
												</div>
											  <div class="clearfix"></div>	
											 </a></li>
											<li><a href="#">
											   <div class="user_img"><img src="images/1.png" alt=""></div>
											   <div class="notification_desc">
												<p>Lorem ipsum dolor sit amet </p>
												<p><span>1 hour ago</span></p>
												</div>
											   <div class="clearfix"></div>	
											</a></li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all messages</a>
												</div> 
											</li>
										</ul>
							</li>
							<li class="login_box" id="loginContainer">
									<div class="search-box">
										<div id="sb-search" class="sb-search">
											<form>
												<input class="sb-search-input" placeholder="Enter your search term..." type="search" id="search">
												<input class="sb-search-submit" type="submit" value="">
												<span class="sb-icon-search"> </span>
											</form>
										</div>
									</div>
										<!-- search-scripts -->
										<script src="js/classie.js"></script>
										<script src="js/uisearch.js"></script>
											<script>
												new UISearch( document.getElementById( 'sb-search' ) );
											</script>
										<!-- //search-scripts -->
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
									<ul class="dropdown-menu">
										<li>
											<div class="notification_header">
												<h3>You have 3 new notification</h3>
											</div>
										</li>
										<li><a href="#">
											<div class="user_img"><img src="images/1.png" alt=""></div>
										   <div class="notification_desc">
											<p>Lorem ipsum dolor sit amet</p>
											<p><span>1 hour ago</span></p>
											</div>
										  <div class="clearfix"></div>	
										 </a></li>
										 <li class="odd"><a href="#">
											<div class="user_img"><img src="images/1.png" alt=""></div>
										   <div class="notification_desc">
											<p>Lorem ipsum dolor sit amet </p>
											<p><span>1 hour ago</span></p>
											</div>
										   <div class="clearfix"></div>	
										 </a></li>
										 <li><a href="#">
											<div class="user_img"><img src="images/1.png" alt=""></div>
										   <div class="notification_desc">
											<p>Lorem ipsum dolor sit amet </p>
											<p><span>1 hour ago</span></p>
											</div>
										   <div class="clearfix"></div>	
										 </a></li>
										 <li>
											<div class="notification_bottom">
												<a href="#">See all notification</a>
											</div> 
										</li>
									</ul>
							</li>	
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">22</span></a>
									<ul class="dropdown-menu">
										<li>
											<div class="notification_header">
												<h3>You have 8 pending task</h3>
											</div>
										</li>
										<li><a href="#">
												<div class="task-info">
												<span class="task-desc">Database update</span><span class="percentage">40%</span>
												<div class="clearfix"></div>	
											   </div>
												<div class="progress progress-striped active">
												 <div class="bar yellow" style="width:40%;"></div>
											</div>
										</a></li>
										<li><a href="#">
											<div class="task-info">
												<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
											   <div class="clearfix"></div>	
											</div>
										   
											<div class="progress progress-striped active">
												 <div class="bar green" style="width:90%;"></div>
											</div>
										</a></li>
										<li><a href="#">
											<div class="task-info">
												<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
												<div class="clearfix"></div>	
											</div>
										   <div class="progress progress-striped active">
												 <div class="bar red" style="width: 33%;"></div>
											</div>
										</a></li>
										<li><a href="#">
											<div class="task-info">
												<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
											   <div class="clearfix"></div>	
											</div>
											<div class="progress progress-striped active">
												 <div class="bar  blue" style="width: 80%;"></div>
											</div>
										</a></li>
										<li>
											<div class="notification_bottom">
												<a href="#">See all pending task</a>
											</div> 
										</li>
									</ul>
							</li>		   							   		
							<div class="clearfix"></div>	
						</ul>
					</div>
					<div class="profile_details">		
						<ul>
							<li class="dropdown profile_details_drop">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<div class="profile_img">	
										<span style="background:url(images/1.jpg) no-repeat center"> </span> 
										 <div class="user-name">
											<p>Michael<span>Administrator</span></p>
										 </div>
										 <i class="lnr lnr-chevron-down"></i>
										 <i class="lnr lnr-chevron-up"></i>
										<div class="clearfix"></div>	
									</div>	
								</a>
								<ul class="dropdown-menu drp-mnu">
									<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
									<li> <a href="#"><i class="fa fa-user"></i>Profile</a> </li> 
									<li> <a href="sign-up.html"><i class="fa fa-sign-out"></i> Logout</a> </li>
								</ul>
							</li>
							<div class="clearfix"> </div>
						</ul>
					</div>		
					<div class="social_icons">
						<div class="col-md-4 social_icons-left">
							<a href="#" class="yui"><i class="fa fa-facebook i1"></i><span>300<sup>+</sup> Likes</span></a>
						</div>
						<div class="col-md-4 social_icons-left pinterest">
							<a href="#"><i class="fa fa-google-plus i1"></i><span>500<sup>+</sup> Shares</span></a>
						</div>
						<div class="col-md-4 social_icons-left twi">
							<a href="#"><i class="fa fa-twitter i1"></i><span>500<sup>+</sup> Tweets</span></a>
						</div>
						<div class="clearfix"> </div>
					</div>		             	
					<div class="clearfix"></div>
				</div>
			</div>
			<!--notification menu end -->
			</div>
	<!-- //header-ends -->
			<div id="page-wrapper">
				<div class="graphs">
					<h3 class="blank1">Appoinments</h3>
					<table>
					<tr>
					<td><h4 class="blank1">From date : <input type="date" name="fromdate"></h4></td>
					<td><h4 class="blank1">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;To date : <input type="date" name="todate"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</h4></td>
					<td><button type="submit" class="btn" name="action" value="customizecalender" style="margin-top:-10px;">Get Past Appointments</button></td>
					</tr>
					</table>
					 <div class="xs tabls">
						<div class="bs-example4" data-example-id="contextual-table">
						<table class="table">
						  <thead>
							<tr>
							  <th>Appointment No.</th>
							  <th>Patient id</th>
							  <!-- <th>Doctor id</th> -->
							  <th>Appoinment date</th>
							  <th>Appoinment time</th>
							  <!-- <th>Update</th> -->
							  <th>Cancel</th>
							  <th>Proceed</th>
							 <!--  <th>Email</th>
							  <th></th> -->
							</tr>
						  </thead>
						  <tbody>
						 	 <%
						 		int i=0;
								for(Appointment a:list1)
								{
									
									if(a.getDid().equalsIgnoreCase(Integer.toString(d.getDid())))
									{
										i+=1;
										System.out.println("in if if");
										//u=(user)session.getAttribute("u");
										d=(Doctor)request.getAttribute("d");
										a=(Appointment)request.getAttribute("a");
										String adate=null;
										if(a.getAm10to11am().equalsIgnoreCase("10 am to 11 am"))
											adate=a.getAm10to11am();
										else if(a.getAm11to12pm().equalsIgnoreCase("11 am to 12 pm"))
											adate=a.getAm10to11am();
										else if(a.getPm12to1pm().equalsIgnoreCase("12 pm to 1 pm"))
											adate=a.getAm10to11am();
										else if(a.getPm1to2pm().equalsIgnoreCase("1 pm to 2 pm"))
											adate=a.getAm10to11am();
										System.out.println(adate);
							%>
							 <tr class="active">
							 
							  <th scope="row"><%=i %></th>
							  <td><%=a.getU().getUid() %></td>
							 <!--  <td>6</td> -->
							  <td><%=a.getAppoint_date() %></td>
							  <td><%=adate %></td>
							
								<%-- <td>
									<form name="update" method="post" action="ActionController">
										<input type="hidden" name="aid" value="<%=a.getAapoint_id()%>">
										<button type="submit" style="margin-top:-5px;" name="action" value="update" class="btn">Update</button>
									</form>
								</td> --%>

								<td>
									<form name="cancel" method="post" action="ActionController">
										<input type="hidden" name="aid" value="<%=a.getAapoint_id()%>">
										<button type="submit" style="margin-top:-5px;" name="action" value="cancel" class="btn">Cancel</button>
									</form>
								</td>							 
								
								<td>
									<form name="proceed" method="post" action="ActionController">
										<input type="hidden" name="aid" value="<%=a.getAapoint_id()%>">
										<input type="hidden" name="did" value="<%=d.getDid() %>">
										<button type="submit" style="margin-top:-5px;" name="action" value="proceed" class="btn">Proceed</button>
									</form>
								</td>
								
							</tr>
							<!-- <tr>
							  <th scope="row">++i</th>
							  <td>2</td>
							  <td>12</td>
							  <td>22-03-2019</td>
							  <td>10am-11am</td>
							   <td><button class="btn">Update</button></td>
							  <td><button class="btn">Cancel</button></td>
							  <td><button class="btn">Proceed</button></td>
							</tr>
							<tr class="success">
							  <th scope="row">++i</th>
							  <td>6</td>
							  <td>8</td>
							  <td>14-04-2019</td>
							  <td>4pm-5pm</td>
							   <td><button class="btn">Update</button></td>
							  <td><button class="btn">Cancel</button></td>
							  <td><button class="btn">Proceed</button></td>
							</tr> -->
							<!-- <tr>
							  <th scope="row">4</th>
							  <td>Column content</td>
							  <td>Column content</td>
							  <td>Column content</td>
							</tr>
							<tr class="info">
							  <th scope="row">5</th>
							  <td>Column content</td>
							  <td>Column content</td>
							  <td>Column content</td>
							</tr>
							<tr>
							  <th scope="row">6</th>
							  <td>Column content</td>
							  <td>Column content</td>
							  <td>Column content</td>
							</tr>
							<tr class="warning">
							  <th scope="row">7</th>
							  <td>Column content</td>
							  <td>Column content</td>
							  <td>Column content</td>
							</tr>
							<tr>
							  <th scope="row">8</th>
							  <td>Column content</td>
							  <td>Column content</td>
							  <td>Column content</td>
							</tr>
							<tr class="danger">
							  <th scope="row">9</th>
							  <td>Column content</td>
							  <td>Column content</td>
							  <td>Column content</td>
							</tr> -->
							<%-- <tr>
								<td><%=d.getDid() %></td>
								<td><%=d.getFname() %></td>
								<td><%=d.getLname() %></td>
								<td><%=d.getContact() %></td>
								<td><%=d.getEmail() %></td>
								<td>
									<form name="edit" method="post" action="ActionController">
										<input type="hidden" name="id" value="<%=d.getDid()%>">
										<input type="submit" name="action" value="edit" class="btn">
									</form>
								</td>
								<td>
									<form name="delete" method="post" action="ActionController">
									<input type="hidden" name="id" value="<%=d.getDid()%>">
									<input type="submit" name="action" value="Delete" class="btn">
									</form>
								</td>
							</tr> --%>
							<%		
									}
								}
							%>
						  </tbody>
						</table>
					   </div>
					   <!-- <div class="panel-body1"> -->
					   <!-- <table class="table">
						 <thead>
							<tr>
							  <th>#</th>
							  <th>First Name</th>
							  <th>Last Name</th>
							  <th>Username</th>
							</tr>
						  </thead>
						  <tbody>
							<tr>
							  <th scope="row">1</th>
							  <td>Mark</td>
							  <td>Otto</td>
							  <td>@mdo</td>
							</tr>
							<tr>
							  <th scope="row">2</th>
							  <td>Jacob</td>
							  <td>Thornton</td>
							  <td>@fat</td>
							</tr>
							<tr>
							  <th scope="row">3</th>
							  <td>Larry</td>
							  <td>the Bird</td>
							  <td>@twitter</td>
							</tr>
						  </tbody>
						</table> 
						</div>-->
						<!--<div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
							 <div class="panel-body no-padding">
								<table class="table table-striped">
									<thead>
										<tr class="warning">
											<th>#</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Username</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
										</tr>
										<tr>
											<td>3</td>
											<td>Larry</td>
											<td>the Bird</td>
											<td>@twitter</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>-->
						<!-- <div class="panel panel-warning" data-widget="{&quot;draggable&quot;: &quot;false&quot;}" data-widget-static="">
							<div class="panel-heading">
								<h2>Warning Table</h2>
								<div class="panel-ctrls" data-actions-container="" data-action-collapse="{&quot;target&quot;: &quot;.panel-body&quot;}"><span class="button-icon has-bg"><i class="ti ti-angle-down"></i></span></div>
							</div>
							<div class="panel-body no-padding" style="display: block;">
								<!-- <table class="table table-striped">
									<thead>
										<tr class="warning">
											<th>#</th>
											<th>First Name</th>
											<th>Last Name</th>
											<th>Username</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td>Mark</td>
											<td>Otto</td>
											<td>@mdo</td>
										</tr>
										<tr>
											<td>2</td>
											<td>Jacob</td>
											<td>Thornton</td>
											<td>@fat</td>
										</tr>
										<tr>
											<td>3</td>
											<td>Larry</td>
											<td>the Bird</td>
											<td>@twitter</td>
										</tr>
									</tbody>
								</table> 
							</div>
						</div>-->
						<!-- <div class="bs-example4" data-example-id="simple-responsive-table">
						<div class="table-responsive">
						  <table class="table">
							<thead>
							  <tr>
								<th>#</th>
								<th>Table heading</th>
								<th>Table heading</th>
								<th>Table heading</th>
								<th>Table heading</th>
								<th>Table heading</th>
								<th>Table heading</th>
							  </tr>
							</thead>
							<tbody>
							  <tr>
								<th scope="row">1</th>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
							  </tr>
							  <tr>
								<th scope="row">2</th>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
							  </tr>
							  <tr>
								<th scope="row">3</th>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
							  </tr>
							</tbody>
						  </table>
						</div> --><!-- /.table-responsive -->
						<!-- <div class="table-responsive">
						  <table class="table table-bordered">
							<thead>
							  <tr>
								<th>#</th>
								<th>Table heading</th>
								<th>Table heading</th>
								<th>Table heading</th>
								<th>Table heading</th>
								<th>Table heading</th>
								<th>Table heading</th>
							  </tr>
							</thead>
							<tbody>
							  <tr>
								<th scope="row">1</th>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
							  </tr>
							  <tr>
								<th scope="row">2</th>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
							  </tr>
							  <tr>
								<th scope="row">3</th>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
								<td>Table cell</td>
							  </tr>
							</tbody>
						  </table>
						</div> --><!-- /.table-responsive -->
						<!-- </div>
					</div>
				</div>
			</div>
		</div> -->
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