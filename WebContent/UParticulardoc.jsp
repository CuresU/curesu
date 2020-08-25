<%@page import="com.beans.*"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="com.beans.Doctor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    
</head>

<body>
 <%
 System.out.println("usparticulardoccccccccc");
 	//user u=null;
 	if(session!=null)
 	{		
 			List<Doctor> list=usermaster_dao.getAllDoctors();
 			String cat=request.getParameter("cat");
 			System.out.println("cattttttttttttttttttttttt is : " + cat);
 %>

    <!-- banner-inner -->
    <div style="background: url('imagesuser/Banner.jpg');">
        <div class="dotts">
            <div class="header-top">
 <%@ include file="header.jsp" %>
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
					                    <div class="col-lg-8 job_info_left" >
                    <%
                    	for(Doctor d:list)
                    	{
                    		System.out.println("d.speciality: " + d.getSpeciality());
                    		if(d.getSpeciality().equalsIgnoreCase(cat))
                    		{
                    %>
                                               
                        <div class="emply-resume-list row mb-3" style="height:500px; width: 1100px;">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="doctorimages\<%=d.getDimage() %>" alt="" class="img-fluid">
                                    <img src="doctorclinics\" alt="" class="img-fluid">
                                </div>
                                <div class="emply-resume-info">
                                    <h4><a href="employer_single.html">Dr. <%=d.getFname() %> <%=d.getLname() %></a></h4>
                                    <h5 class="mt-2">Speciality : <%=d.getSpeciality() %></h5>
                                    <h5 class="mt-2">Charges : Rs.<%=d.getFees() %> per appointment</h5>
                                    <h4><b><p style="margin-top:100px;">Clinic Details : </p></b></h4>
                                    <h5><p><%=d.getC_name() %></p></h5>
                                    <p><i class="fas fa-map-marker-alt"></i> <%=d.getCity() %> / <%=d.getState() %></p>
                                    <ul class="links_bottom_emp mt-2">
                                        <li><a href="employer_single.html"><i class="far fa-envelope"></i> <span class="icon_text"><%=d.getC_email() %></span></a></li>
                                        <li><a href="#"><i class="fas fa-eye"></i> <span class="icon_text"><%=d.getAddress() %> <%=d.getLandmark() %></span></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                            <div class="col-md-3 emp_btn text-right">
                                <a href="ActionController?action=bookappointment&did=<%=d.getDid() %>&uid=<%=um.getId() %>" title="">Book Appointment</a>
                            </div>
                        </div>
                        
                        <%
                    				break;
                        }
                    		else{
                    			System.out.println("In else doc not display");                    			
                    		}
 								}
 							
                        %>
                     </div>
                </div>

            </div>
        </div>
    </section>
    <%@ include file="footer.jsp" %>
    <!--//preocess-->
<!---728x90--->
    <!--footer -->
        <!-- //footer -->
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
%>   
</body>

</html>