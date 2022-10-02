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
   <form  action="<%= request.getContextPath() %>/modifier1" method="post">
 <div class="heading">
     <h2>modification des familles</h2>
  </div>
  <div class="form_wrap fullname">
<div class="form_wrap">
<!-- 
   <div class="form_item"> -->
     <label>nom de la famille</label>
     <input type="text" name="nomFam" value="${us.nomfamille}" required >
  </div>
</div>
</div>
<div class="btn">
    <input type="submit" value="Get Started">
 </div>
  </form>
 </div>
</div>
<br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>