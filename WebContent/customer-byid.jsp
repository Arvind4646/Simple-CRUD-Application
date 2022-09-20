<%@ include file="navbar.jsp" %>
<%@page import="java.sql.*"%>
<html>
  <body onload="makeActive('search')">
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("select");
  ps.setString(1,request.getParameter("cid"));
  ResultSet rst=ps.executeQuery();
  if(rst.next())
  {
	  %>
	  <table class='tab' border='1' style='border-collapse:collapse;font-size:1.6vw'>
	   <tr style='background-color:orange;color:white'>
	    <td colspan="2" class='lah' align="center">Customer Details</td>
	   </tr>
	   <tr>
	    <th align="left">Customer ID</th>
	    <td><%=rst.getString(1)%></td>
	   </tr>
	   <tr>
	    <th align="left">First name</th>
	    <td><%=rst.getString(2)%></td>
	   </tr>
	   <tr>
	    <th align="left">Last name</th>
	    <td><%=rst.getString(3)%></td>
	   </tr>
	   <tr>
	    <th align="left">City</th>
	    <td><%=rst.getString(4)%></td>
	   </tr>
	   <tr>
	    <th align="left">Phone number</th>
	    <td><%=rst.getString(5)%></td>
	   </tr>
	   <tr>
	    <th align="left">Email Id</th>
	    <td><%=rst.getString(6)%></td>
	   </tr>
	  </table>
	  <%
	  return;
  }
  %>
  <div class='dv'>
   <label class='lah' style='color:red'>Customer record not found...</label>
  </div>
 </body>
</html>