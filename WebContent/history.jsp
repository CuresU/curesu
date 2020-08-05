<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User History</title>
<style type="text/css">

		.image{			
			border-radius: 10px;
			box-shadow: 3px 3px 3px 3px;
		}
		.head{
			background-color: #e9ecef; 
			color: black;
			
		}
		.para{
			
			font-size: 100%;
			color: black;
			font-family: Times New Roman;		
		}

	</style>
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
<center>
<table width="75%" align="center" class="image">
			<tr>
				<tr class="head"><td colspan = "3">
					<div style="padding-top: 1%; padding-left: 1%">Order Placed Successfully<br>12/02/2019</div>
					<div style="padding-right: 1%; " align="right">Order Id :152839</div>
				</td></tr>

				<td style="width: 15%;" align="left">
					<img src="" alt="image" style="height: 20vh; width: 20vh;">
				</td>
				<td align="center" width="30%">
					<p align="left" class="para">
					title | size<br>
					status : pending <br>
					Price : 300 Rs.<br>
					visitDate prescription(pdf)  Doctor speclity visitCount  pay(only patient)
					</p>
				</td>
				<td width="25%" align="center">
					<br>
					<a class="btn_3" href="">Return & Replace</a>
						
				</td>
			</tr>
		</table>
		</center>
<%@ include file="footer.jsp" %>
</body>
</html>