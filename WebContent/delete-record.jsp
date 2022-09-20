<%@page import="java.sql.*"%>
<%@ include file="navbar.jsp" %>
<html>
 <body>
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("delete");
  ps.setString(1,request.getParameter("cid"));
  ps.executeUpdate();
  response.sendRedirect("customer-list.jsp");
  %>
 </body>
</html>