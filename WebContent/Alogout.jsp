<%
session.removeAttribute("a");
session.invalidate();
response.sendRedirect("Asign_in.jsp");
%>