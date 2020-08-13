<%@page import="com.beans.user"%>
<%@page import="com.dao.usermaster_dao"%>
<%@page import="com.beans.user_master"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	List<user> list=usermaster_dao.getAllusers();
%>

<%
	for(user u:list)
	{
%>
	<input type="text" value="<%=u.getFname()%>">
<%
	}
%>
</body>
</html>