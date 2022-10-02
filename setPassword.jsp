<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <div id="bg"></div>

<form action="<c:url value="/setPassword"/>" method="post">
  <div class="form-field">
    <input type="email" placeholder="Email " name="email" required/>
  </div>
  
  <div class="form-field">
    <input type="password" placeholder="Password" name="password" required/> 
  </div>
  
  <div class="form-field">
    <button class="btn" type="submit">Log in</button>
  </div>
</form>
</body>
</html>