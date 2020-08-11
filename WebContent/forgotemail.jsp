<%@page import="com.beans.*"%>
<%@page import="com.beans.user"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Forgot Password</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"/>

<script type="application/x-javascript"> 
addEventListener("load", function() { 
	setTimeout(hideURLbar, 0); 
	}, false); 
	function hideURLbar(){ window.scrollTo(0,1); 
	} </script>

<!-- Custom CSS -->
<Style>
 
/* body {
  
  background-repeat: no-repeat;
  
  
} */

</Style>
<link href="css/style.css" rel='stylesheet' type='text/css' />
<script src="js/Chart.js"></script>
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<script src="js/jquery-1.10.2.min.js"></script>

</head> 
   
 <body style="background-image: url('imagesuser/1.jpg'); background-height:100%;">
    <section>
    	<div>
    		<div>
				<div class="sign-in-form">
					<div class="sign-in-form-top">
						<p><span>Forgot Password</span> </p>							
					</div>
				<div class="signin">
 				<form name="FORGOT PASSWORD" method="post" action="ActionController">
				<%-- <input type="hidden" name="id" value="<%=id %>">
				<input type="hidden" name="role1" value="<%=role1 %>"> --%>
				<div class="log-input">
					<div class="log-input-left">
					   <input type="text" class="user" name="forgotemail" Placeholder="Enter your registered Email Id">
					</div>
				</div>
				<table>
 				<tr colspan="2">
				<td><input type="submit" name="action" value="Send OTP" style="margin-left:140px; width:150px;"></td>
							</tr>
							</table>
						</form>	 
						</div>
					</div>
				</div>
			</div>
	</section>
	
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
    
</body>
</html>