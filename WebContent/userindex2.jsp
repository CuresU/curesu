<%@page import="com.beans.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="zxx">
<body>
<%-- <%
	user_master um=null;
	if(session!=null)
	{
		if(session.getAttribute("um")!=null)
		{
			um=(user_master)session.getAttribute("um");
			System.out.println("um id = " + um.getId());
%> --%>
    <!-- banner-inner -->
    <div id="demo-1" data-zs-src='["imagesuser/1.jpg", "imagesuser/2.jpg","imagesuser/3.jpg", "imagesuser/4.jpg"]' data-zs-overlay="dots">
        <div class="demo-inner-content">
            <div class="header-top">
 <%@ include file="header.jsp" %>
   </div>
            <!--/banner-info-w3layouts-->
            <div class="banner-info-w3layouts text-center">

                <h3>
                    <span>Find the Right Doctor</span> .
                    <span>Right Now.</span>
                </h3>
                <p>Your doctor search starts and ends with us.</p>

                <form name="finddoctor" class="ban-form row">
                    <div class="col-md-3 banf">
                        <input class="form-control" type="text" name="dname" placeholder="Name" onkeyup="searchInfo()" required>
                    	<spam id="edata" style="width:50px; font-color:white;"></spam>
                    </div>
                    <div class="col-md-3 banf">
                        <select class="form-control" id="country12" name="Location">                            
                            <option>CHANDHKHEDA</option>
                            <option>PALDI</option>
                            <option>SABARMATHI</option>
                            <option>BAPUNAGAR</option>
                            <option>CHILLODA</option>
                            <option>NARODA</option>
                            <option>GHATLODIA</option>
                        </select>
                    </div>
                    <div class="col-md-3 banf">
                        <select id="country13" class="form-control">
                            <option>Skin Specialist </option>
                            <option>NeuroSurgeon</a></option>
                            <option>orthopedic</option>
                            <option> child specialist</option>
                            <option>NeuroSurgeon</option>
                            <option>Gynocologist</option>
                            <option>physiostherapist</option>
                        </select>

                    </div>
                    <div class="col-md-3 banf">
                        <button class="btn1" name="find" type="submit">FIND YOUR DOCTOR
                            <i class="fas fa-search"></i>
                        </button>
                    </div>
                </form>
            </div>
            <!--//banner-info-w3layouts-->
        </div>
    </div>
 
 <!-- banner-bottom-wthree -->
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <h3 class="tittle text-center mb-lg-4 mb-3">
                    <span>Our Mission</span>Popular Categories</h3>
                <div class="row populor_category_grids mt-5">
                    <div class="col-md-3 category_grid">
                        <div class="view view-tenth">
                            <div class="category_text_box">
                                <i class="fas fa-bullhorn"></i>
                                <h3> NeuroSurgeon</h3>
                                
                            </div>
                            <div class="mask">
                                <a href="UParticulardoc.jsp?&cat=NeuroSurgeon">
                                    <img src="imagesuser/p1.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 category_grid">
                        <div class="view view1 view-tenth">
                            <div class="category_text_box">
                                <i class="fas fa-graduation-cap"></i>
                                <h3>Physiotherapist</h3>
                               
                            </div>
                            <div class="mask">
                                <a href="UParticulardoc.jsp?&cat=Physiotherapist">
                                    <img src="imagesuser/p2.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 category_grid">
                        <div class="view view2 view-tenth">
                            <div class="category_text_box">
                                <i class="fab fa-accusoft"></i>
                                <h3>Skin Specialist </h3>
                               
                            </div>
                            <div class="mask">
                                <a href="UParticulardoc.jsp?&cat=Skin Specialist">
                                    <img src="imagesuser/p3.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 category_grid">
                        <div class="view view3 view-tenth">
                            <div class="category_text_box">
                                <i class="fas fa-users"></i>
                                <h3>Homeopathy</h3>
                                
                            </div>
                            <div class="mask">
                                <a href="UParticulardoc.jsp?&cat=Homeopathy">
                                    <img src="imagesuser/p4.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row mt-3 justify-content-center">
                    <div class="col-md-3 category_grid">
                        <div class="view view4 view-tenth">
                            <div class="category_text_box">
                                <i class="fas fa-users"></i>
                                <h3>child specialist </h3>
                                
                            </div>
                            <div class="mask">
                                <a href="UParticulardoc.jsp?&cat=child specialist">
                                    <img src="imagesuser/p4.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 category_grid">
                        <div class="view view5 view-tenth">
                            <div class="category_text_box">
                                <i class="fas fa-users"></i>
                                <h3>Gynecologist </h3>
                               
                            </div>
                            <div class="mask">
                                <a href="UParticulardoc.jsp?&cat=Gynecologist">
                                    <img src="imagesuser/p4.jpg" class="img-fluid" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
          <div class="inner-sec-w3ls py-lg-5  py-3">
                                </div>
                            </div>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>
    <!--//job -->

    <!--job -->
    <section class="banner-bottom-wthree py-lg-5 py-md-5 py-3">
        <div class="container">
            <div class="inner-sec-w3ls py-lg-5  py-3">
                <h3 class="tittle text-center mb-lg-5 mb-3">
                    <span>Some Info</span> Quick Medical Tips</h3>
                <div class="row mt-5">

                    <div class="card-deck">
                        <div class="card">
                            <img src="imagesuser/g1.jpg" alt="Card image cap" class="img-fluid card-img-top">
                            <div class="card-body">
                                <h5 class="card-title"> Neurobics for your mind</h5>
                                <p class="card-text">Get your brain fizzing with energy. American researchers coined the term ‘neurobics’ for tasks which activate the brain's own biochemical pathways and to bring new pathways online that can help to strengthen or preserve brain circuits. </p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                        <div class="card">
                            <img src="imagesuser/g2.jpg" alt="Card image cap" class="img-fluid card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">Knock one back</h5>
                                <p class="card-text"> A glass of red wine a day is good for you. A number of studies have found this, but a recent one found that the polyphenols (a type of antioxidant) in green tea, red wine and olives may also help protect you against breast cancer. It’s thought that the antioxidants help protect you from environmental carcinogens such as passive tobacco smoke. </p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                        <div class="card">
                            <img src="imagesuser/g3.jpg" alt="Card image cap" class="img-fluid card-img-top">
                            <div class="card-body">
                                <h5 class="card-title">Berries for your belly?</h5>
                                <p class="card-text">Blueberries, strawberries and raspberries contain plant nutrients known as anthocyanidins, which are powerful antioxidants. Blueberries rival grapes in concentrations of resveratrol – the antioxidant compound found in red wine that has assumed near mythological proportions. Resveratrol is believed to help protect against heart disease and cancer.  </p>
                            </div>
                            <div class="card-footer">
                                <small class="text-muted">Last updated 3 mins ago</small>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
   </section>
   <!--//job -->

                
  
                    

               
    <!--//clients-->
    <!--model-forms-->
    
        <jsp:include page="footer.jsp" />

    <!--//model-form-->
    <%--  <%
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
     %>  --%>     
</body>

</html>