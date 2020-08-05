<%
session.removeAttribute("u");
//session.invalidate();
request.getSession().invalidate();
//response.sendRedirect("login.jsp");
response.sendRedirect(request.getContextPath() + "/login.jsp");
%>