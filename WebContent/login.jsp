<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Login</title>
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


<div id="demo-1" data-zs-src='["imagesuser/1.jpg", "imagesuser/2.jpg","imagesuser/3.jpg", "imagesuser/4.jpg"]' data-zs-overlay="dots">
        <div class="demo-inner-content">
            <div class="header-top">
                <header>
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
                        <form name="login" action="ActionController" method="post">
                        	<div class="form-group">
                        	 <label class="mb-2"></label>
                        		<input class="mb-2" type="radio" name="user-type" value="Doctor">Doctor
                        		<input type="radio" name="user-type" value="Patient" style="margin-left:100px;"required>Patient<br>
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
                           <span id="logininvalid" style="color:red;"></span><br>
                            <button type="button" name = "action"  value="sign_in" id="action" class="btn btn-primary submit mb-4" onclick="logincheck()">Sign In</button>
                            <button type="submit" name = "action" class="btn btn-primary submit mb-4"><a href="forgotemail.jsp">Forgot Password</a></button>
                            <p class="text-center pb-4">
                                <a href="registration.jsp" data-toggle="modal2" data-target="#exampleModalCenter"> Don't have an account?</a>
                            </p>
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
    var request=new XMLHttpRequest();
    function logincheck()
    {
        //alert(1);
        var emailid=document.login.email.value;
        var pass=document.login.pass.value;
        //alert(emailid + " " + pass);
        //alert(11);
        /* var url="Logincheck.jsp?val="+emailid; 
		alert("url " +url); */
        var url="Logincheck.jsp?val="+emailid+"&pass="+pass;
        
		//alert("url " +url);
	  	try
	  	{  
	  		 //alert("in try"); 
			request.onreadystatechange=function()
			{  
			 //alert("in functionfunction"); 
				if(request.readyState==4)
				{  
					
					var val=request.responseText;
					
					//document.getElementById('email').innerHTML=val;
					if(val.trim()=="true")
					{
						document.getElementById("action").type="submit";
						//alert(document.getElementById("action").type);
						//document.getElementById('action').disabled=false;	
					}
					else
					{
						var x=document.getElementById("action").type;
						//alert(x);
						//document.getElementById('action').disabled=true;
						document.getElementById('logininvalid').innerHTML="Your username or Password is wrong!";
						//alert(2);
						
						//alert("Your username or Password is wrong!");
						
					}
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
    }
    </script>
    <!-- //password-script -->

    <!-- stats -->
    <script src="jsuser/jquery.waypoints.min.js"></script>
    <script src="jsuser/jquery.countup.js"></script>
    
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
    
    <!--// end-smoth-scrolling -->
</body>

</html>