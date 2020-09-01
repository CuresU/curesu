<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@page import="com.beans.*"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="java.util.List"%>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" />
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



<script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
		
    </script>
    <link href="cssre/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="cssre/zoomslider.css" rel='stylesheet' type='text/css' />
    <link href="cssre/style6.css" rel='stylesheet' type='text/css' />
    <link href="cssre/style.css" rel='stylesheet' type='text/css' />
    <link href="cssre/fontawesome-all.css" rel="stylesheet">
    <link href="//fontsre.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
    <link href="//fontsre.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
	
</style>
</script>


</head>
<body class="sticky-header left-side-collapsed">
    <section>
    <%
    Doctor d=null;
    if(session!=null)
 	{
 		if(session.getAttribute("d")!=null)
 		{
 			d=(Doctor)session.getAttribute("d");
 			System.out.println("Doc Sidebar");
    %>
    <!-- left side start-->
		<div class="left-side sticky-left-side">

			<!--logo and iconic logo start-->
			<div class="logo">
				<h1><a href="Doctorindex.jsp"> <span>Admin</span></a></h1>
			</div>
			<div class="logo-icon text-center">
				<a href="Doctorindex.jsp"><i class="lnr lnr-home"></i> </a>
			</div>

			<!--logo and iconic logo end-->
			<div class="left-side-inner">

				<!--sidebar nav start-->
					<ul class="nav nav-pills nav-stacked custom-nav">
						<li class="active">
							<a href="logout.jsp"><i class="lnr lnr-power-switch"></i>
							<span>Logout</span></a>
						</li>
						<li>
							<a href="allapoint.jsp"><i class="fas fa-user-md"></i>
								<span>View Patients</span></a>								
						</li>
												
				<!--sidebar nav end-->
			</div>
		</div>
		<!-- left side end-->
    </section>
    
    			<div class="header-section">
    <!--toggle button start-->
			<a class="toggle-btn" style="margin-top:20px "><i class="fab fa-elementor"></i></a>
			<!--toggle button end-->
				
				<div class="profile_details">		
						<ul>
							<li class="dropdown profile_details_drop">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<div class="profile_img">	
										<span style="background:url(doctorimages/<%=d.getDimage() %>) no-repeat center"> </span> 
										 <div class="user-name">
											<p><%=d.getFname() %> <%=d.getLname() %></p>
										 </div>
										 <i class="lnr lnr-chevron-down"></i>
										 <i class="lnr lnr-chevron-up"></i>
										<div class="clearfix"></div>	
									</div>	
								</a>
								<ul class="dropdown-menu drp-mnu">
									<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
									<li> <a href="#"><i class="fa fa-user"></i>Profile</a> </li> 
									<li> <a href="Alogout.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
								</ul>
							</li>
							<div class="clearfix"> </div>
						</ul>
					</div>		</div>
					
		
    <!--banner -->
    
    <section class="banner-bottom-wthree mid py-lg-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <div class="mid-info text-center pt-3">
                    <h3 class="tittle text-center cen mb-lg-5 mb-4">
                        CuresU</h3>
                </div>
            </div>
        </div>
    </section>
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