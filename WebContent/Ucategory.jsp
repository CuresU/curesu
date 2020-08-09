<%@page import="com.beans.*"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="com.beans.Doctor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Category</title>
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
    <link href="cssuser/style6.css" rel='stylesheet' type='text/css' />
    <link href="cssuser/style.css" rel='stylesheet' type='text/css' />
    <link href="cssuser/fontawesome-all.css" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Dosis:200,300,400,500,600,700" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Quicksand:300,400,500,700" rel="stylesheet">
</head>

<body>
 <%
 	user u=null;
 	if(session!=null)
 	{
 		if(session.getAttribute("u")!=null)
 		{
 			u=(user)session.getAttribute("u");
 			List<Doctor> list=usermaster_dao.getAllDoctors();
 %>

<%-- <% 
List<Doctor> list=usermaster_dao.getAllDoctors();
%>
 --%>
    <!-- banner-inner -->
    <div id="demo-1" class="page-content">
        <div class="dotts">
            <div class="header-top">
                <header>
                    <div class="top-head ml-lg-auto text-center">
                        <div class="row top-vl">

                            <div class="col-md-4">
                                <span>Welcome Back!</span>
                            </div>
                            <div class="col-md-3 sign-btn">
                                <a href="#" data-toggle="modal" data-target="#exampleModalCenter">
                                        <i class="fas fa-lock"></i> Sign In</a>
                            </div>
                           <!--  <div class="col-md-3 sign-btn">
                                <a href="#" data-toggle="modal" data-target="#exampleModalCenter2">
                                        <i class="far fa-user"></i> Register</a>
                            </div> -->
                            <div class="search col-md-2">
                                <div class="mobile-nav-button">
                                    <button id="trigger-overlay" type="button">
                                        <i class="fas fa-search"></i>
                                    </button>
                                </div>
                                <!-- open/close -->
                                <div class="overlay overlay-door">
                                    <button type="button" class="overlay-close">
                                        <i class="fa fa-times" aria-hidden="true"></i>
                                    </button>
                                    <form action="#" method="post" class="d-flex">
                                        <input class="form-control" type="search" placeholder="Search here..." required="">
                                        <button type="submit" class="btn btn-primary submit">
                                            <i class="fas fa-search"></i>
                                        </button>
                                    </form>
                                </div>
                                <!-- open/close -->
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <div class="logo">
                            <h1>
                                <a class="navbar-brand" href="userindex2.jsp">
                                    <i class="fab fa-codepen"></i> DoctorFinder</a>
                            </h1>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon">
                                    <i class="fas fa-bars"></i>
                                </span>
            
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-lg-auto text-center">
                                <li class="nav-item">
                                    <a class="nav-link" href="userindex2.jsp">Home
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
<!--                                 <li class="nav-item">
                                    <a class="nav-link" href="how.html">How it works</a>
                                </li> -->
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Categories
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="services.html">Candidates</a>
                                        <a class="dropdown-item" href="candidates_list.html" title="">Candidates List 1</a>
                                        <a class="dropdown-item" href="candidates_list.html" title="">Candidates List 2</a>
                                        <a class="dropdown-item" href="candidates_list.html" title="">Candidates List 3</a>
                                        <a class="dropdown-item" href="candidates_single.html" title="">Candidates Single 1</a>


                                    </div>
                                </li>
                              <!--   <li class="nav-item">
                                    <a class="nav-link" href="pricing.html">Pricing</a>
                                </li>
                                <li class="nav-item dropdown active">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Employers
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="employer_list.html"> Employer List 1</a>
                                        <a class="dropdown-item" href="employer_list.html">Employer List 2</a>
                                        <a class="dropdown-item" href="employer_list.html">Employer List 3</a>
                                        <a class="dropdown-item" href="employer_list.html">Employer List 4</a>
                                        <a class="dropdown-item" href="employer_single.html">Employer Single 1</a>
                                    </div>
                                </li>
                               -->  <li class="nav-item">
                                    <a class="nav-link" href="contact.jsp">Contact</a>
                                </li>
                            </ul>

                        </div>
                    </nav>
                </header>
            </div>
            <!--/banner-info-w3layouts-->
            <div class="banner-info-w3layouts text-center">
            </div>
            <!--//banner-info-w3layouts-->
        </div>
    </div>
    <ol class="breadcrumb justify-content-left">
        <li class="breadcrumb-item">
            <a href="userindex2.jsp">Home</a>
        </li>
       <!--  <li class="breadcrumb-item active">Employer List</li> -->
    </ol>
    <!-- banner-text -->
    <!--/process-->
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
		
            <div class="inner-sec-w3ls py-lg-5  py-3">
			<!---728x90--->
                <h3 class="tittle text-center mb-lg-4 mb-3">
                    <span>Info</span>All Doctors</h3>
					<!---728x90--->
          <!--       <div class="row choose-main mt-5">
                    <div class="col-lg-4 job_info_right">
                        <div class="widget_search">
                            <h3 class="j-b mb-3">Search</h3>
                            <div class="widget-content">
                                <form action="#" method="post">
                                    <div class="form-group">
                                        <label class="mb-2">I'm looking for a ...</label>

                                        <select class="form-control jb_1">
                                            <option value="0">Job</option>
                                            <option value="">Category1</option>
                                            <option value="">Category2</option>
                                            <option value="">Category3</option>
                                            <option value="">Category4</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <label class="mb-2">in</label>

                                        <input type="text" class="form-control jb_2" placeholder="Location" required="">
                                    </div>
                                    <div class="form-group mb-3">
                                        <input type="text" class="form-control jb_2" placeholder="Industry / Role" required="">
                                    </div>
                                    <input type="submit" value="Search">
                                </form>
                            </div>
                        </div>
                        <div class="col_3 permit my-4">
                            <h3 class="j-b mb-3">Specialism</h3>
                            <ul class="list-group candidate-page">
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Accountancy (2)</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Banking (2)</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Charity & Voluntary (3)</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Digital & Creative (4)</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Estate Agency (3)</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Graduate (2)</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> IT Contractor (7)</li>
                            </ul>
                        </div>
                        <div class="col_3 experience">
                            <h3 class="j-b mb-3">Team Size</h3>
                            <ul class="list-group candidate-page">
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 1 - 10</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 100 - 200</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 201 - 301</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 301 - 301</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 401 - 501</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> 501 - 601</li>
                            </ul>
                        </div>
                        <div class="col_3 permit my-4">
                            <h3 class="j-b mb-3">Work Permit</h3>
                            <ul class="list-group candidate-page">
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Full Time</li>
                                <li class="list-group-item"><input type="checkbox" class="checkbox"> Prt Time</li>

                            </ul>
                        </div>

                    </div> -->
                    <div class="col-lg-8 job_info_left" >
                    <%
                    	for(Doctor d:list)
                    	{
                    %>
                        <!--/ Emply List -->
                       <div class="emply-resume-list row mb-3" style="width: 1100px;">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="imagesuser/b1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><font color="blue">Dr. <%=d.getFname() %> <%=d.getLname() %></font></h4>
                                    <h5 class="mt-2"><%=d.getHigh_qua() %></h5>
                                    <p><i class="fas fa-map-marker-alt"></i><%=d.getCity() %> / <%=d.getState() %></p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"><%=d.getEmail() %></span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="ActionController?action=bookappointment&did=<%=d.getDid() %>&uid=<%=u.getUid() %>" title="">Book Appointment</a>
                            </div>
                        </div> 
                        
                        <%
                    	}
                        %>
                        <!--// Emply List -->
                        <!--/ Emply List1 -->
                       <!--  <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="imagesuser/b2.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">Comapany Name</a></h4>
                                    <h5 class="mt-2">Arts, Design, and Media, Web Developer</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">4 Open Position</a>
                            </div>
                        </div>
                        // Emply List1
                        / Emply List2
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="imagesuser/b1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">
                                            Comapany Name</a></h4>
                                    <h5 class="mt-2">Arts, Design, and Media, Web Developer</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">6 Open Position</a>
                            </div>
                        </div>
                        // Emply List2
                        / Emply List3
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="imagesuser/b2.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">
                                            Comapany Name</a></h4>
                                    <h5 class="mt-2">Arts, Design,and Web Developer</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">2 Open Position</a>
                            </div>
                        </div>
                        // Emply List3
                        / Emply List
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="imagesuser/b1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">Comapany Name</a></h4>
                                    <h5 class="mt-2">Accountancy, Human Resources</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">10 Open Position</a>
                            </div>
                        </div>
                        // Emply List
                        / Emply List1
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="imagesuser/b2.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">Comapany Name</a></h4>
                                    <h5 class="mt-2">Financial Services, Sales & Marketing</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">8 Open Position </a>
                            </div>
                        </div>
                        // Emply List1
                        / Emply List2
                        <div class="emply-resume-list row mb-3">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="imagesuser/b1.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">
                                                Comapany Name</a></h4>
                                    <h5 class="mt-2">Arts, Design, and Media, Web Developer</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">4 Open Position</a>
                            </div>
                        </div>
                        // Emply List2
                        / Emply List3
                        <div class="emply-resume-list row">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="imagesuser/b2.jpg" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">
                                                Comapany Name</a></h4>
                                    <h5 class="mt-2">Accounting Assistant, Arts, Design, and Media</h5>
                                    <p><i class="fas fa-map-marker-alt"></i> Istanbul / Turkey</p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"> Email this Job</span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text">View full Job Description</span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="#" title="">6 Open Position</a>
                            </div>
                        </div> -->
                        <!--// Emply List3 -->
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--//preocess-->
<!---728x90--->
    <!--footer -->
    <footer class="footer-emp-w3layouts bg-dark dotts py-lg-5 py-3">
        <div class="container-fluid px-lg-5 px-3">
            <div class="row footer-top">
                <div class="col-lg-3 footer-grid-wthree-w3ls">
                    <div class="footer-title">
                        <h3>About Us</h3>
                    </div>
                    <div class="footer-text">
                        <p>Curabitur non nulla sit amet nislinit tempus convallis quis ac lectus. lac inia eget consectetur sed, convallis at tellus. Nulla porttitor accumsana tincidunt.</p>
                        <ul class="footer-social text-left mt-lg-4 mt-3">

                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-facebook-f"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-twitter"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-google-plus-g"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-linkedin-in"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fas fa-rss"></span>
                                </a>
                            </li>
                            <li class="mx-2">
                                <a href="#">
                                    <span class="fab fa-vk"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3 footer-grid-wthree-w3ls">
                    <div class="footer-title">
                        <h3>Get in touch</h3>
                    </div>
                    <div class="contact-info">
                        <h4>Location :</h4>
                        <p>0926k 4th block building, king Avenue, New York City.</p>
                        <div class="phone">
                            <h4>Contact :</h4>
                            <p>Phone : +121 098 8907 9987</p>
                            <p>Email :
                                <a href="mailto:doctor1finder@gmail.com">doctor1finder@gmail.com</a>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 footer-grid-wthree-w3ls">
                    <div class="footer-title">
                        <h3>Quick Links</h3>
                    </div>
                    <ul class="links">
                        <li>
                            <a href="Index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="about.html">About</a>
                        </li>
                        <li>
                            <a href="404.html">Error</a>
                        </li>
                        <li>
                            <a href="pricing.html">Job Packages</a>
                        </li>
                        <li>
                            <a href="contact.jsp">Contact Us</a>
                        </li>
                    </ul>
                    <ul class="links">
                        <li>
                            <a href="how.html">How it works</a>
                        </li>
                        <li>
                            <a href="contact.jsp">Support</a>
                        </li>
                        <li>
                            <a href="employer_list.html">For Employers</a>
                        </li>
                    </ul>

                    <div class="clearfix"></div>
                </div>
                <div class="col-lg-3 footer-grid-wthree-w3ls">
                    <div class="footer-title">
                        <h3>Sign up for your offers</h3>
                    </div>
                    <div class="footer-text">
                        <p>By subscribing to our mailing list you will always get latest news and updates from us.</p>
                        <form action="#" method="post">
                            <input class="form-control" type="email" name="Email" placeholder="Enter your email..." required="">
                            <button class="btn2">
                                <i class="far fa-envelope" aria-hidden="true"></i>
                            </button>
                            <div class="clearfix"> </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="copyright mt-4">
                <p class="copy-right text-center ">&copy; 2018 Replenish. All Rights Reserved | Design by
                    <a href="http://w3layouts.com/"> W3layouts </a>
                </p>
            </div>
        </div>
    </footer>
    <!-- //footer -->

    <!--model-forms-->
      <!--/Login-->
    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">

                    <div class="login px-4 mx-auto mw-100">
                        <h5 class="text-center mb-4">Login Now</h5>
                        <form name="login" action="UserActionController" method="post">
                        	<div class="form-group">
                        	 <label class="mb-2"></label>
                        		<input class="mb-2" type="radio" name="user-type" value="Doctor">Doctor
                        		<input type="radio" name="user-type" value="Patient" style="margin-left:100px;">Patient<br>
                        	</div>
                            <div class="form-group">
                                <label class="mb-2">Email address</label>
                                <input type="email" name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="">
                                <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                            </div>
                            <div class="form-group">
                                <label class="mb-2">Password</label>
                                <input type="password" name="pass" class="form-control" id="exampleInputPassword1" placeholder="" required="">
                            </div>
                            <div class="form-check mb-2">
                                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                <label class="form-check-label" for="exampleCheck1">Check me out</label>
                            </div>
                            <button type="submit" name = "action"  value="sign_in" class="btn btn-primary submit mb-4">Sign In</button>
                            <button type="submit" name = "action"  value="Forgot Password" class="btn btn-primary submit mb-4">Forgot Password</button>
                            <p class="text-center pb-4">
                                <a href="#" data-toggle="modal2" data-target="#exampleModalCenter"> Don't have an account?</a>
                            </p>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--//Login-->
    <!--/Register-->
    <div class="modal fade" id="exampleModalCenter2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header text-center">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="login px-4 mx-auto mw-100">
                        <h5 class="text-center mb-4">Register Now</h5>
                        <form name="register" action="../../doctorfinderAdmin/ActionController" method="post">
                        
                         <div class="form-group">
                         <input class="mb-2" type="radio" name="u-type" value="Doctor">Doctor
                        		<input type="radio" name="u-type" value="Patient" style="margin-left:100px;">Patient<br>
                         </div>
                         
                            <div class="form-group">
                                <label>First name</labe>
                                <input type="text" name="fname" class="form-control" id="validationDefault01" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label>Last name</label>
                                <input type="text" name="lname" class="form-control" id="validationDefault02" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" name="email" class="form-control" id="validationDefault02" placeholder="" required="">
                            </div>
                            

                            <div class="form-group">
                                <label class="mb-2">Password</label>
                                <input type="password" name="password" class="form-control" id="password1" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <input type="password" name="cpass" class="form-control" id="password2" placeholder="" required="">
                            </div>

                            <button type="submit" class="btn btn-primary submit mb-4" name="action" value="insertusermaster">Register</button>
                            <p class="text-center pb-4">
                                <a href="#">By clicking Register, I agree to your terms</a>
                            </p>
                        </form>

                    </div>
                </div>

            </div>
        </div>
    </div>
    <!--//Register-->

    <!--//model-form-->
    <!-- js -->
    <!--/slider-->
    <script src="jsuser/jquery-1.11.1.min.js"></script>
    <script src="jsuser/modernizr-2.6.2.min.js"></script>
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