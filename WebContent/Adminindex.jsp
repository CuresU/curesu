<%@page import="com.beans.Admin"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE HTML>
<html>
<head>
<title>ADMIN DASHBOARD</title>
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
   
 <body class="sticky-header left-side-collapsed"  onload="initMap()">
 <%
	Admin ad=null;
	if(session!=null)
	{
		if(session.getAttribute("ad")!=null)
		{
			ad=(Admin)session.getAttribute("ad");
			
%>
    <section>
    <%@ include file="sidebar.jsp" %>

    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3" style="height:550px;">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <h3 class="tittle text-center mb-lg-4 mb-3">
                   </h3>
                <div class="row populor_category_grids mt-5">
                    <a href="Apatient_table.jsp"><div class="col-md-3 category_grid">
                        <div class="view view-tenth">
                            <div class="category_text_box">
							<i class="fab fa-accusoft"></i>
                                
                                <h3>ALL PATIENTS</h3></a>
                                
                            </div>
                            
                        </div>
                    </div>
                    <a href="Adoctor_table.jsp"><div class="col-md-3 category_grid">
                        <div class="view view1 view-tenth">
                            <div class="category_text_box">
                                  <i class="fas fa-users"></i>
                                <h3>ALL DOCTORS</h3>
                                </a>
                                
                            </div>
                            
                        </div>
                    </div>

                    <a href="Appointment_table.jsp"><div class="col-md-3 category_grid">
                        <div class="view view2 view-tenth">
                            <div class="category_text_box">
								<i class="fas fa-bullhorn"></i>
                                
                                <h3>ALL APPOINTMENTS</h3></a>

                            </div>
                            
                        </div>
                    </div>
                    <a href="ADoctorNotification.jsp"><div class="col-md-3 category_grid">
                        <div class="view view3 view-tenth">
                            <div class="category_text_box">
                                <i class="fas fa-bullhorn"></i>
                                <h3>DOCTOR REGISTRATION NOTIFICATIONS</h3></a>

                            </div>
                            
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
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