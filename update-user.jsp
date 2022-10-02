<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

</head>
<style>

<%@include file="css/addUser.css" %>

</style>
<body>

<div class="wrapper">
 <div class="form_container">
   <form  action="<%= request.getContextPath() %>/modifier" method="post">
 <div class="heading">
     <h2>Registion Form</h2>
  </div>
  <div class="form_wrap fullname">


<div class="form_wrap">
   <div class="form_item">
     <label>Username</label>
     <input type="text" name="username" value="${us.username}" required >
  </div>
</div>



  <div class="form_item">
      <label>First Name</label>
      <input type="text"  name="firstname" value="${us.first_Name}"required> 
  </div>


  <div class="form_item">
      <label>Last Name</label>
      <input type="text" name="lastname" value="${us.last_Name}" required>
  </div>

</div>








<div class="form_wrap">
  <div class="form_item">
    <label>Email Address</label>
    <input type="text" name="email" value="${us.email}">
  </div>
</div>

<div class="form_wrap">
  <div class="form_item">
    <label>password</label>
    <input type="password" name="password" value="${us.password}">
  </div>
</div>

<div class="form_wrap select_box">


  <div class="form_item">
    <label>role</label>
       <select name="role" value="${us.role}">
	  <option value="PROFESSEUR">  PROFESSEUR</option>
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