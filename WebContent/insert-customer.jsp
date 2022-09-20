<%@ include file="navbar.jsp" %>
<html>
  <body onload="makeActive('save')">
  <div class='container'>
    <div class='card col-md-10 mx-auto'>
     <div class='card-body'>
      <form action='save.jsp' method="post">
       <div class='row form-group'>
         <div class='col-md-10'>
          <label for='cid' class='la'>Enter customer id</label><span> *</span>
          <input type='text' id='cid' name='cid' class='form-control' required> 
         </div>
       </div>
       <div class='row form-group'>
         <div class='col-md-5'>
          <label for='fname' class='la'>Enter first name</label><span> *</span>
          <input type='text' id='fname' name='firstname' class='form-control' required> 
         </div>
         <div class='col-md-5'>
          <label for='lname' class='la'>Enter last name</label><span> *</span>
          <input type='text' id='lname' name='lastname' class='form-control' required> 
         </div>
       </div>
       <div class='row form-group'>
         <div class='col-md-5'>
          <label for='city' class='la'>Enter city</label><span> *</span>
          <input type='text' id='city' name='city' class='form-control' required> 
         </div>
         <div class='col-md-5'>
          <label for='phone' class='la'>Enter phone number</label><span> *</span>
          <input type='text' id='phone' name='phone' class='form-control' required> 
         </div>
       </div>
       <div class='row form-group'>
         <div class='col-md-10'>
          <label for='email' class='la'>Enter email id</label><span> *</span>
          <input type='text' id='email' name='email' class='form-control' required> 
         </div>
       </div>
       <div class='row form-group'>
         <div class='col-md-10'>
          <button class='btn btn-primary'>Save Record</button> 
         </div>
       </div>
      </form>
     </div>
    </div>
  </div>
 </body>
</html>