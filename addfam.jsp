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
   <form  action="<%= request.getContextPath() %>/register1" method="post">
 <div class="heading">
 <a href="<%=request.getContextPath()%>/listFam" ><img alt="" src="https://img.icons8.com/ios-glyphs/2x/visible.png" height="40px" width="40px"> </a><p>lister les familles</p>
     <h2>modification des familles</h2>
  </div>
  <div class="form_wrap fullname">
<div class="form_wrap">
<!-- 
   <div class="form_item"> -->
     <label>nom de la famille</label>
     <input type="text" name="nomFam" value="" required >
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