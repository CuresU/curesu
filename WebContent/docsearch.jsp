<%@page import="com.beans.*"%>
<%@page import="java.util.List"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@ page import="java.sql.*" %>  

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Doctor Search</title>
</head>
<body>
<%@ page import="java.sql.*" %>  

<%  
String name=request.getParameter("val");  
if(name==null||name.trim().equals("")){  
out.print("<p>Please enter name!</p>");  
}
else
{  
	try
	{  
		System.out.println("doc searchhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh");
		Class.forName("com.mysql.jdbc.Driver");  
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/si_try","root","kd25021999");  
		PreparedStatement ps=con.prepareStatement("select fname from doctor where fname like '"+name+"%'");  
		ResultSet rs=ps.executeQuery();  
		  
		if(!rs.isBeforeFirst()) 
		{      
		 	out.println("<p>Sorry! No Record Found!</p>");   
		}
		else
		{  
			out.print("<table border='1' cellpadding='2' width='20%' border='0' style='margin-left:70px;margin-top:-10px;'>");  
			out.print("<tr></tr>");  
			while(rs.next())
			{  
				
				out.print("<p><tr><td>"+rs.getString(1)+"</td></tr></p>");  
				//out.print("<tr><td><a href='ActionController?action=Search&name="+rs.getString(16)+"'>" +rs.getString(23)+ "</a></td></tr>");  
			}  
			out.print("</table>");  
		}//end of else for rs.isBeforeFirst  
		con.close();  
	}
	catch(Exception e){out.print(e);}  
}//end of else  
%>  
    
</body>
</html>