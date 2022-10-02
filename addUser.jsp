<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ajouter des nouvelles utilisateurs</title>
</head>
<style>

<%@include file="css/addUser.css" %>

</style>
<body>


 
<div class="wrapper">
 <div class="form_container">
 <a href="<%=request.getContextPath()%>/admin" class=""><img alt="" src="https://img.icons8.com/bubbles/344/back.png" heigth=50 width=50></a>			
 
   <form  action="<%= request.getContextPath() %>/register" method="post">
 <div class="heading">
     <h2>Registion Form</h2>
  </div>
  <div class="form_wrap fullname">


<div class="form_wrap">
   <div class="form_item">
     <label>Username</label>
     <input type="text" name="username" required >
  </div>
</div>



  <div class="form_item">
      <label>First Name</label>
      <input type="text"  name="firstname" required> 
  </div>


  <div class="form_item">
      <label>Last Name</label>
      <input type="text" name="lastname" required>
  </div>

</div>

<div class="form_wrap">
  <div class="form_item">
    <label>Email Address</label>
    <input type="text" name="email">
  </div>
</div>



<div class="form_wrap">
  <div class="form_item">
    <label>password</label>
    <input type="password" name="password">
  </div>
</div>

<!--  

<div class="form_wrap">
  <div class="form_item">
    <label>password</label>
    <input type="password" name="password">
  </div>
</div>-->

<div class="form_wrap select_box">


  <div class="form_item">
    <label>role</label>
       <select name="role">
	  <option value="PROFESSEUR">PROFESSEUR</option>
	  <option value="ADMIN">ADMIN</option>
	  <option value="ETUDIANT">ETUDIANT</option>
       </select>
 </div>

</div>
<div class="btn">
    <input type="submit" value="Get Started">
 </div>

  </form>
 </div>
</div>
</body>
</html>