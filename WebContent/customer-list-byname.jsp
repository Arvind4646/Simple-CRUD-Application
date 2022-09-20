<%@page import="java.sql.*"%>
<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('search')">
  <div class='container'>
    <div class='card mx-auto'>
     <div class='card-body'>
      <%
      PreparedStatement ps=(PreparedStatement)application.getAttribute("pname");
      ps.setString(1,request.getParameter("firstname"));
      ResultSet rst=ps.executeQuery();
      if(!rst.next())
      {
    	  %>
    	  <div class='dv'>
   			<label class='lah' style='color:red'>Record not found...</label>
  		  </div>
    	  <%
    	  return;
      }
      %>
       <div class='table'>
        <table class='table table-hover'>
          <thead>
           <tr>
            <th class='la'>Customer id</th><th class='la'>First name</th><th class='la'>Last name</th>
            <th class='la'>City</th><th class='la'>Phone no</th><th class='la'>Email id</th>
           </tr>
          </thead>
          <tbody>
          <%
          rst.beforeFirst();
          while(rst.next())
          {
        	  %>
        	  <tr>
        	   <td class='la'><%=rst.getString(1)%></td>
        	   <td class='la'><%=rst.getString(2)%></td>
        	   <td class='la'><%=rst.getString(3)%></td>
        	   <td class='la'><%=rst.getString(4)%></td>
        	   <td class='la'><%=rst.getString(5)%></td>
        	   <td class='la'><%=rst.getString(6)%></td>
        	  </tr>
        	  <%
          }
          %>
          </tbody>
        </table>
       </div>  
    </div>
  </div>
  </div>
 </body>
</html>