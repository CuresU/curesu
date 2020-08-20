<%
session.removeAttribute("u");
session.removeAttribute("d");
//session.invalidate();
request.getSession().invalidate();
//response.sendRedirect("login.jsp");
response.sendRedirect(request.getContextPath() + "/login.jsp");
%>