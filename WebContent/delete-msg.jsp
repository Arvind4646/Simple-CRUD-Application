<%@page import="java.sql.*"%>
<%@ include file="navbar.jsp" %>
<html>
 <body onload="makeActive('delete')">
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("delete");
  ps.setString(1,request.getParameter("cid"));
  ps.executeUpdate();
  %>
    <div class='dv'>
   <label class='lah' style='color:green'>Customer has been Deleted successfully</label>
  </div>
 </body>
</html>