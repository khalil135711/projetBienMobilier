<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="./style.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat&display=swap" rel="stylesheet">
    <title>Login page</title>
</head>
<style>
<%@include file="css/auth.css"%>
</style>
<body>
    <section class="side">
        <img src="https://www.fs-umi.ac.ma/wp-content/uploads/2020/10/logo-2.png" alt="">
    </section>

    <section class="main">
        <div class="login-container">
            <p class="title">bienvenue</p>
            <div class="separator"></div>
            <p class="welcome-message">Please, provide login credential to proceed and have access to all our services</p>
	<c:if test="${err}">
				<p>verifier vos information svp!</p>
			</c:if>
            <form class="login-form" method="post" action="<c:url value="/login"/>">
                <div class="form-control">
                    <input type="text" placeholder="username" name="username" required>
                    <i class="fas fa-user"></i>
                </div>
                <div class="form-control">
                    <input type="password" placeholder="password" name="password" required>
                    <i class="fas fa-lock"></i>
                </div>
                 
                <button class="submit">Login</button>
            </form>
                 
        </div>
    </section>
    
</body>
</html>