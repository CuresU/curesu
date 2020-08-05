<%
session.removeAttribute("d");
session.invalidate();
response.sendRedirect("login.jsp");
%>