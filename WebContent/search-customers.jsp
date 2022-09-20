<%@ include file="navbar.jsp" %>
<%@page import="java.sql.*"%>
<html>
  <body onload="makeActive('search')">
  <table class='tab'>
   <tr>
    <td style='padding:1vw'>
    <form action='customer-byid.jsp'>
     <table style='width:100%'>
      <tr>
       <td style='width:30%'><label class='la'>Enter id:</label></td>
       <td style='width:50%'><input type='text' name='cid' class='tb'></td>
       <td align="right" style='width:20%'><button class='bt'>GO</button></td>
      </tr>  
     </table>
     </form>
    </td>
    </tr>
    <tr>
     <td style='padding:1vw'>
     <form action='customer-list-byname.jsp'>
     <table style='width:100%'>
      <tr>
       <td style='width:30%'><label class='la'>Enter first name:</label></td>
       <td style='width:50%'><input type='text' name='firstname' class='tb'></td>
       <td align="right" style='width:20%'><button class='bt'>GO</button></td>
      </tr>  
     </table>
     </form>
    </td>
   </tr>
   <tr>
    <td style='padding:1vw'>
    <form action='customer-list-bycity.jsp'>
     <table style='width:100%'>
      <tr>
       <td style='width:30%'><label class='la'>Select city:</label></td>
       <td style='width:50%'>
        <select class='tb' name='city'>
         <%
         Statement st=(Statement)application.getAttribute("city");
         ResultSet rst=st.executeQuery("select distinct city from customerinfo");
         while(rst.next())
         {
        	 %>
        	 <option><%= rst.getString(1)%></option>
        	 <%
         }
         %>
        </select>
       </td>
       <td align="right" style='width:20%'><button class='bt'>GO</button></td>
      </tr>  
     </table>
     </form>
    </td>
   </tr>
  </table>
 </body>
</html>