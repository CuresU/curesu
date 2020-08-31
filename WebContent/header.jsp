<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@page import="com.beans.*"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="com.beans.Doctor"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>CuresU</title>
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
    
   
    <script>  
var request=new XMLHttpRequest();  
function searchInfo()
{  
	//alert("in dfun");
	var name=document.finddoctor.dname.value;  
	//alert("dname=" + name);
	var url="docsearch.jsp?val="+name;  
	//alert("url is : " + url);
	try
	{  
		//alert("in try");
		request.onreadystatechange=function(){  
		if(request.readyState==4)
		{  
			//alert("in if")
			var val=request.responseText;  
			//alert("val is : " + val)
			document.getElementById('edata').innerHTML=val;  
		}  
	}//end of function  
	request.open("GET",url,true);  
	request.send();  
}
	catch(e){alert("Unable to connect to server");}  
}  
</script>
    
    
</head>
<body>

<%
	user_master um=null;
	if(session!=null)
	{
		if(session.getAttribute("um")!=null)
		{
			um=(user_master)session.getAttribute("um");
			System.out.println("um id = " + um.getId());
%>
                <header>
                    <div class="top-head ml-lg-auto text-center">
                        <div class="row">

                            <div class="col-md-4">
                                <span>Welcome <%=um.getFname() %> !</span>
                            </div>
                            <div class="col-md-3 sign-btn">
                                <a href="Ulogout.jsp" data-toggle="modal" data-target="#exampleModalCenter">
                                    <i class="fas fa-lock"></i><a href="Ulogout.jsp">Logout</a></a>
                            </div>
                        
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
                                    <img src="logo/logo.png" alt="CuresU"/></a>
                            </h1>
                        </div>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon">
                                <i class="fas fa-bars"></i>
                            </span>

                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-lg-auto text-center">
                                <li class="nav-item active">
                                    <a class="nav-link" href="userindex2.jsp">Home
                                        <span class="sr-only">(current)</span>
                                    </a>
                                </li>
                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Catogories
                                        <i class="fas fa-angle-down"></i>
                                    </a>
                                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                        <a class="dropdown-item" href="UParticulardoc.jsp?&cat=NeuroSurgeon">NeuroSurgeon</a>
                                        <a class="dropdown-item" href="UParticulardoc.jsp?&cat=Physiotherapist" title="">Physiotherapist</a>
                                        <a class="dropdown-item" href="UParticulardoc.jsp?&cat=Skin Specialist" title="">Skin Specialist</a>
                                        <a class="dropdown-item" href="UParticulardoc.jsp?&cat=Homeopathy" title="">Homeopathy</a>
                                        <a class="dropdown-item" href="UParticulardoc.jsp?&cat=child specialist" title="">child specialist</a>
										<a class="dropdown-item" href="UParticulardoc.jsp?&cat=Gynecologist" title="">Gynecologist</a>

                                    </div>
                                </li>
                                 <li class="nav-item">
                                    <a class="nav-link" href="contact.jsp">Contact</a>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="resetpassword.jsp">Reset Password</a>
                                </li>
                                
                                <li class="nav-item">
                                    <a class="nav-link" href="history.jsp">History</a>
                                </li>
                                
                            </ul>

                        </div>
                    </nav>
                </header>
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