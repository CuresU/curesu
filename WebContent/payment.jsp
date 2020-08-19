<%@page import="com.beans.*"%>
<%@page import="com.beans.Doctor"%>
<%@page import="com.beans.user"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>CuresU Login Page</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="utf-8">
    <meta name="keywords" content="Replenish a Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script>
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <link href="cssuser/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="cssuser/zoomslider.css" rel='stylesheet' type='text/css' />
    <link href="cssuser/style6.css" rel='stylesheet' type='text/css' />
    <link href="cssuser/style.css" rel='stylesheet' type='text/css' />
    <link href="cssuser/fontawesome-all.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
</head>

<body>
<%
	System.out.println("ap.jsp");
	user_master um=null;
	System.out.println("u dc");
	Doctor d=null;
	System.out.println("d dc");
	Appointment a=null;
	if(session!=null)
	{
		System.out.println("in if");
		if(session.getAttribute("um")!=null && request.getAttribute("d")!=null && request.getAttribute("a")!=null)
		{
			System.out.println("in if if");
			um=(user_master)session.getAttribute("um");
			 d=(Doctor)request.getAttribute("d");
			a=(Appointment)request.getAttribute("a"); 
			String adate=null;
			/* if(a.getAm10to11am().equalsIgnoreCase("10 am to 11 am"))
				adate=a.getAm10to11am();
			else if(a.getAm11to12pm().equalsIgnoreCase("11 am to 12 pm"))
				adate=a.getAm10to11am();
			else if(a.getPm12to1pm().equalsIgnoreCase("12 pm to 1 pm"))
				adate=a.getAm10to11am();
			else if(a.getPm1to2pm().equalsIgnoreCase("1 pm to 2 pm"))
				adate=a.getAm10to11am(); */
			System.out.println(adate);
%>


<div id="demo-1" data-zs-src='["imagesuser/1.jpg", "imagesuser/2.jpg","imagesuser/3.jpg", "imagesuser/4.jpg"]' data-zs-overlay="dots">
        <div class="demo-inner-content">
            <div class="header-top">
                <header>
                
              

    <!--model-forms-->
    <!--/Login -->
 <!--    <div class="modal fade" id="#" tabindex="-1" role="dialog" aria-hidden="true">               -->
 
    
                        
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                     <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>  
                <div class="modal-body">

                    <div class="login px-4 mx-auto mw-100">
                        <h5 class="text-center mb-4">Book Appointment</h5>
                        <form name="login" action="ActionController" method="post">
                        	<input type="hidden" name="uid" value="1"><%-- <%=um.getU()%>"> --%>
                        	<input type="hidden" name="did" value="<%=d.getDid() %>">
                        	<input type="hidden" name="did" value="<%=a.getAapoint_id() %>">
                         	<input type="hidden" name="txnAmount" value="300">
                        	
                          	<!-- <div class="form-group">
                        	 <label class="mb-2"></label>
                        		<input class="mb-2" type="radio" name="user-type" value="Doctor">Doctor
                        		<input type="radio" name="user-type" value="Patient" style="margin-left:100px;">Patient<br>
                        	</div> -->
                        	<div class="form-group">
                                <label class="mb-2">patient Name : </label>
                               <!--  <input type="date" name="appointdate" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required=""> -->
                              	<label class="form-control">Mr/Mrs. <%=um.getFname() %> <%=um.getLname() %></label>
                                <!-- <small id="emailHelp" class="form-text text-muted">Please choose your appointment date wisely.</small> -->
                            </div>
                            
                        	<div class="form-group">
                                <label class="mb-2">Doctor Name : </label>
                               <!--  <input type="date" name="appointdate" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required=""> -->
                              	<label class="form-control">Dr. <%=d.getFname() %> <%=d.getLname() %></label>
                                <!-- <small id="emailHelp" class="form-text text-muted">Please choose your appointment date wisely.</small> -->
                            </div>
                            <div class="form-group">
                                <label class="mb-2">Clinic : </label>
                               <!--  <input type="date" name="appointdate" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required=""> -->
                              	<label class="form-control"><%=d.getAddress() %></label>
                                <!-- <small id="emailHelp" class="form-text text-muted">Please choose your appointment date wisely.</small> -->
                            </div>
                            <div class="form-group">
                                <label class="mb-2">Clinic contact : </label>
                               <!--  <input type="date" name="appointdate" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required=""> -->
                              	<label class="form-control"><%=d.getC_contact() %></label>
                                <!-- <small id="emailHelp" class="form-text text-muted">Please choose your appointment date wisely.</small> -->
                            </div>
                                                            <input type="hidden" name="txnAmount" value="<%=d.getFees()%>">
                            
                            <div class="form-group">
                                <label class="mb-2">Fees : </label>
                               <!--  <input type="date" name="appointdate" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required=""> -->
                              	<label class="form-control"> <%=d.getFees()%></label>
                                <!-- <small id="emailHelp" class="form-text text-muted">Please choose your appointment date wisely.</small> -->
                            </div>
                            <div class="form-group">
                                <label class="mb-2">Appointment Date : </label>
                               <!--  <input type="date" name="appointdate" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required=""> -->
                              	<label class="form-control"> <%=a.getAppoint_date() %> </label>
                                <!-- <small id="emailHelp" class="form-text text-muted">Please choose your appointment date wisely.</small> -->
                            </div>
                            
                            <!-- <div class="form-group">
                                <label class="mb-2">Appoinment date : </label>
                                <input type="date" name="appointdate" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">
                                <small id="emailHelp" class="form-text text-muted">Please choose your appointment date wisely.</small>
                            </div>
                             --><div class="form-group">
                                <label class="mb-2">Appoinment Time Available : </label><br>
                               	<!-- <input type="password" name="pass" class="form-control" id="exampleInputPassword1" placeholder="" required=""> -->
                            	<label class="form-control"> <%=adate %> </label>
                            </div>
                           <!--  <div class="form-check mb-2">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div> -->
                            <!-- <button type="submit" name = "action"  value="sign_in" class="btn btn-primary submit mb-4">Sign In</button> -->
                            <center><button type="submit" name = "action"  value="Paynow" class="btn btn-primary submit mb-4">Pay Now</button>
                            <button type="submit" name = "action"  value="Cash_on_meeting" class="btn btn-primary submit mb-4">Cash on Meeting</button>
                            </center>
                            <!-- <p class="text-center pb-4">
                                <a href="#" data-toggle="modal2" data-target="#exampleModalCenter"> Don't have an account?</a>
                            </p> -->
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
  
    <!-- js -->
    <!--/slider-->
    <script src="jsuser/jquery-1.11.1.min.js"></script>
    <script src="jsuser/modernizr-2.6.2.min.js"></script>
    <script src="jsuser/jquery.zoomslider.min.js"></script>
    <!--//slider-->
    <!--search jQuery-->
    <script src="jsuser/classie-search.js"></script>
    <script src="jsuser/demo1-search.js"></script>
    <!--//search jQuery-->

    <script>
        $(document).ready(function() {
            $(".dropdown").hover(
                function() {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function() {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!-- //dropdown nav -->
    <!-- password-script -->
    <script>
        window.onload = function() {
            document.getElementById("password1").onchange = validatePassword;
            document.getElementById("password2").onchange = validatePassword;
        }

        function validatePassword() {
            var pass2 = document.getElementById("password2").value;
            var pass1 = document.getElementById("password1").value;
            if (pass1 != pass2)
                document.getElementById("password2").setCustomValidity("Passwords Don't Match");
            else
                document.getElementById("password2").setCustomValidity('');
            //empty string means no validation error
        }
    </script>
    <!-- //password-script -->

    <!-- stats -->
    <script src="jsuser/jquery.waypoints.min.js"></script>
    <script src="jsuser/jquery.countup.js"></script>
    <script>
        $('.counter').countUp();
    </script>
    <!-- //stats -->

    <!-- //js -->
    <script src="jsuser/bootstrap.js"></script>
    <!--/ start-smoth-scrolling -->
    <script src="jsuser/move-top.js"></script>
    <script src="jsuser/easing.js"></script>
    <script>
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 900);
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            /*
            						var defaults = {
            							  containerID: 'toTop', // fading element id
            							containerHoverID: 'toTopHover', // fading element hover id
            							scrollSpeed: 1200,
            							easingType: 'linear' 
            						 };
            						*/

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!--// end-smoth-scrolling -->
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