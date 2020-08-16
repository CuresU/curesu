<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="zxx">
<head>
    <title>Registration Page </title>
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
    <!-- banner-inner -->
    <div id="demo-1" data-zs-src='["imagesuser/1.jpg", "imagesuser/2.jpg","imagesuser/3.jpg", "imagesuser/4.jpg"]' data-zs-overlay="dots">
        <div class="demo-inner-content">
            <div class="header-top">
    <!--/Register-->
  
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
                       <form name="userindex" action="ActionController" method="post" >
                        
<div class="form-group">
<input class="mb-2" type="radio" name="u-type" value="Doctor">Doctor
<input type="radio" name="u-type" value="Patient" style="margin-left:100px;" required> Patient
                        <br>
                         </div>

                            <div class="form-group">
                                <label>First name</label>
                                <input type="text" name="fname" minlength="3" class="form-control" id="validationDefault01" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label>Last name</label>
                                <input type="text" name="lname" minlength="3"  class="form-control" id="validationDefault02" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label>Contact Number</label>
                                <input type="text" name="cnum" pattern="[6-9]{1}[0-9]{9}" class="form-control" id="" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label>Email</label>

                                <input type="text" id="email" name="email" value="" class="form-control" id="validationDefault02" placeholder="" required="" onblur="searchInfo();">
                                
                            	<span id="emailtaken" style="color:red;"></span>

                            </div>
                            

                            <div class="form-group">
                                <label class="mb-2">Password</label>
                                <input type="password" name="password" minlength="6"  class="form-control" id="password1" placeholder="" required="">
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <input type="password" name="cpass" minlength="6" class="form-control" id="password2" placeholder="" required="">
                            	<span id="passcheck" style="color: red;"></span>
                            </div>

                            <button type="submit" id="registersubmit" class="btn btn-primary submit mb-4" name="action" value="insertusermaster" disabled="disabled">Register</button>
                            
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
            {
            	document.getElementById('registersubmit').disabled=true;	
            	document.getElementById('passcheck').innerHTML="Passwords doesn't match!";
                document.getElementById("password2").setCustomValidity("Passwords Doesn't Match");
            }
            else
            {
            	document.getElementById('registersubmit').disabled=false;
            	document.getElementById('passcheck').innerHTML="";	
                document.getElementById("password2").setCustomValidity('');
            }
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
           
            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!--// end-smoth-scrolling -->
      <script>
	var request=new XMLHttpRequest();  
	 function searchInfo()
	{  
		 //alert("in function"); 
		var email=document.userindex.email.value;  
		//alert("Email");
		
		var url="Emailcheck.jsp?val="+email; 
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
					
					document.getElementById('email').innerHTML=val;
					if(val.trim()=="false")
					{
						document.getElementById('registersubmit').disabled=false;	
						document.getElementById('emailtaken').innerHTML="";
					}
					else
					{
						document.getElementById('emailtaken').innerHTML="This email address is already registered! Please enter valid Email Address!";
						//alert("This email address is already registered! Please enter valid Email Address!!");
						document.getElementById('registersubmit').disabled=true;
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
</body>

</html>