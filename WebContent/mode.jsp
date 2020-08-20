<%@page import="com.beans.*"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="com.beans.Doctor"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Select Mode</title>
</head>

<body>
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
    <%
 System.out.println("select mode.jsp");
 
	
	Doctor d=null;
	List<user> list1=usermaster_dao.getAllusers();
 	if(session!=null)
 	{		
 		System.out.println("in if");
		System.out.println("session um: "+session.getAttribute("um"));
		System.out.println("request d: "+request.getAttribute("d"));
		if(session.getAttribute("um")!=null && request.getAttribute("d")!=null)
		{
			System.out.println("in if if");
			um=(user_master)session.getAttribute("um");
			System.out.println("um.getId() "+um.getId());
			//u=(user)session.getAttribute("um");
			d=(Doctor)request.getAttribute("d");
 			
 %>
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
                    Select Mode</h3>
            <!--  Button Start-->        
            <div class="emp_btn " >
            <button class="btn-primary" style="width: 48%;height:4em" name="online" id="online"  ><h3>Online</h3></button>
            <button class="btn-primary" style="width: 48%;height:4em" name="offline" id="offline"><h3>Offline</h3></button>
            </div>
                     
         <!--  Button End-->
				
<div class="col-lg-8 job_info_left hy" >
<div class="emply-resume-list" style="height:560px; width: 1100px;">
				
				
				<!--  Online Mode-->
					<div class="display1">
						<h3 class="tittle text-center mb-lg-4 mb-3"> <span><h2>Write Your Issue Here:</h2></span></h3>
						 <form name="OnlineForm" action="ActionController" method="post">
						 <br><center>
						 <% for(user u:list1){
							 if(um.getId()==u.getUm().getId()){
						 %>
						 <input type="hidden" name="uid" value="<%=u.getUid() %>">
						 <%}} %>
                        	<input type="hidden" name="did" value="<%=d.getDid() %>">
                        	<input type="hidden" name="onmode" value="online">
                        	
						 <textarea rows="14" cols="120" name="issue" ></textarea><br>
						<div class="col-md-3 emp_btn text-right">
                                <button type="submit" name = "action"  value="onlinebooking" class="btn btn-primary">Book Appointment</button></center>
                            </div>
                  	</form>
                  	
                  	<!-- <script>
                  	n =  new Date();
                  	y = n.getFullYear();
                  	m = n.getMonth() + 1;
                  	d = n.getDate();
                  	document.getElementById("date").innerHTML = y + "-" + m + "-" + d;
                  	</script>
                  	 -->
                  	
                 <!--  Offline Mode -->
	                <div class="hide1"> 
                       <div class="login px-4 mx-auto mw-100">
                        <center><h5>Book Appointment</h5></center><br>
                        <form name="OfflineForm" action="ActionController" method="post">

                        	<input type="hidden" name="uid" value="<%=um.getId() %>">

                         <% for(user u:list1){
							 if(um.getId()==u.getUm().getId()){
						%>
                        	<input type="hidden" name="uid" value="<%=u.getUid() %>">
                        	<%}} %>

                        	<input type="hidden" name="did" value="<%=d.getDid() %>">
                        	<input type="hidden" name="onmode" value="offline">
                          	
                        	<div class="form-group">
                                <label class="mb-2">Doctor Name : </label>
                              <label class="form-control">Dr. <%=d.getFname() %> <%=d.getLname() %></label>
                                </div>
                            <div class="form-group">
                                <label class="mb-2">Appoinment date : </label>
                                <input type="date" name="appointdate" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="" onchange="gettime(this)">
                                <small id="emailHelp" class="form-text text-muted">Please choose your appointment date wisely.</small>
                            </div>
                            <div class="form-group">
                                <label class="mb-2">Appoinment Time Available : </label><br>

                               <%-- 	<select class="form-control" name="appointtime">
                            	<option>10 am to 11 am</option>
                            	<option>11 am to 12 pm</option>
                            	<option>12 pm to 1 pm</option>
                            	<option>1 pm to 2 pm</option>
                            	
                            	<option><%=d.getFrom_time() %></option>
                            	</select> --%>
                            	 <input type="text" id="allotedtime" name="allotedtime" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="" required="" onchange="gettime(this)">


                            </div>
                          <center><button type="submit" name = "action"  value="Appointment" class="btn btn-primary submit mb-4">Book Appointment</button></center>
                            
                        </form>
                    </div></div>
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

     $(document).ready(function () {
         $('.display1').hide();
         $('.hy').hide();
         $('.hide1').hide();
        
        $('#offline').click(function () 
        {
        	$('.hy').show();
            $('.display1').hide();
            $('.hide1').show();        
        });
        $('#online').click(function () 
        {
        	$('.hy').show();
            $('.display1').show();
            $('.hide1').hide();        
        });    
    });    

  </script>
  
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
    
    <script>
    var request=new XMLHttpRequest(); 
    	function gettime(selecteddate)
    	{
        	//alert(selecteddate.value);
        	var appdate=selecteddate.value;
        	var did=document.OfflineForm.did.value;
       		/* if(appdate.trim()==="" || appdate.trim()===null)
       		{
       			document.getElementById('emailtaken').innerHTML="Please Enter Email Id";
       			document.getElementById('registersubmit').disabled=true;
       		}
       		else
       		{ */
       			var url="Appointtime.jsp?appdate="+appdate+"&did="+did; 
       		  	try
       		  	{  
       				request.onreadystatechange=function()
       				{  
       					if(request.readyState==4)
       					{  
       						var val=request.responseText;
       						//alert(val);
       						document.getElementById('allotedtime').value=val;
       						/* if(val.trim()=="false")
       						{
       							document.getElementById('registersubmit').disabled=false;	
       							document.getElementById('emailtaken').innerHTML="";
       						}
       						else
       						{
       							document.getElementById('emailtaken').innerHTML="This email address is already registered! Please enter valid Email Address!";
       							document.getElementById('registersubmit').disabled=true;
       						} */
       					}  
       				}  
       				request.open("GET",url,true);  
       				request.send();  
       			}
       		  	catch(e)
       		  	{
       		  		System.out.println("in catch");
       		  		alert("Unable to connect to server");
       		  	}
       		/* }  */ 
        }
    </script>
    <!-- //dropdown nav -->
    <!-- password-script -->
    
    <!-- //password-script -->
    <!-- //js -->
    <script src="jsuser/bootstrap.js"></script>
    <!--/ start-smoth-scrolling -->
    <script src="jsuser/move-top.js"></script>
    <script src="jsuser/easing.js"></script>
    <script>
    var request=new XMLHttpRequest(); 
    	function gettime(selecteddate)
    	{
        	//alert(selecteddate.value);
        	var appdate=selecteddate.value;
        	var did=document.OfflineForm.did.value;
       		/* if(appdate.trim()==="" || appdate.trim()===null)
       		{
       			document.getElementById('emailtaken').innerHTML="Please Enter Email Id";
       			document.getElementById('registersubmit').disabled=true;
       		}
       		else
       		{ */
       			var url="Appointtime.jsp?appdate="+appdate+"&did="+did; 
       		  	try
       		  	{  
       				request.onreadystatechange=function()
       				{  
       					if(request.readyState==4)
       					{  
       						var val=request.responseText;
       						//alert(val);
       						document.getElementById('allotedtime').value=val;
       						/* if(val.trim()=="false")
       						{
       							document.getElementById('registersubmit').disabled=false;	
       							document.getElementById('emailtaken').innerHTML="";
       						}
       						else
       						{
       							document.getElementById('emailtaken').innerHTML="This email address is already registered! Please enter valid Email Address!";
       							document.getElementById('registersubmit').disabled=true;
       						} */
       					}  
       				}  
       				request.open("GET",url,true);  
       				request.send();  
       			}
       		  	catch(e)
       		  	{
       		  		System.out.println("in catch");
       		  		alert("Unable to connect to server");
       		  	}
       		/* }  */ 
        }
    </script>
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
  	}
 	else
 	{
 		response.sendRedirect("login.jsp");
 	}
%>   
</body>

</html>