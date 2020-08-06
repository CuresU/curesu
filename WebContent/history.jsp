<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User History</title>
</head>
<body>
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
                    <span>User</span>History</h3>
		         		<div class="col-lg-8 job_info_left" >
                     <%
                    System.out.println("In History");
                 	//user u=null;
                 	if(session!=null)
                 	{		
                 		List<Appointment> list=usermaster_dao.getAllAppointment();
                 		
                 			
                    for(Appointment d:list)
                    	{
                    		System.out.println("user name: " + um.getId());
                    		System.out.println("user name: " + d.getU().getUm().getId());
                    		  if(um.getId()==d.getU().getUm().getId())
                    		 { 
                    			 
                    			 List<Doctor> list1=usermaster_dao.getAllDoctors();
                                 for(Doctor doc:list1)
                                 {
                              		if(Integer.parseInt(d.getDid()) == doc.getDid())
                              		{
                          	 
                              
                    %>
                                               
               <div class="emply-resume-list row mb-3" style="height:170px; width: 1100px;">
                            <div class="col-md-9 emply-info">
                                <div class="emply-img">
                                    <img src="doctorimages/<%=doc.getDimage() %>" alt="Doctor Image" class="img-fluid" height="500px" width="600px">
                                    
                                </div>
                                <div class="emply-resume-info">
                  <h4><a href="#"><%= doc.getFname() %>&nbsp;<%= doc.getLname() %></a></h4>
                                    <h5 class="mt-2"><%= doc.getSpeciality() %></h5>
                                    <h5 class="mt-2">VisitDate</h5>
                                    <h5 class="mt-2">Payment : <%= doc.getFees() %> Rs. | Online<br></h5>                                                           
                                </div>
                                
                                <div class="clearfix"></div>
                            </div>
                           <div class="col-md-3 emp_btn text-right">
                                <a>Prescription(pdf)</a>
                            </div>
                        </div>
                        <%}}
                    		 }	
 								
                    	}
                        %>
                     </div>
                </div>

            </div>
        </div>
    </section>
    
    
<jsp:include page="footer.jsp" />
 <%
  	}
 	else
 	{
 		response.sendRedirect("login.jsp");
 	}
%>
</body>
</html>