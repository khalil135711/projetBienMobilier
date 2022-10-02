<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<sql:setDataSource
        var="myDS"
        driver="com.mysql.cj.jdbc.Driver"
        url= "jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
        user="root" password="Khalil123@@"
 
    />
<sql:query var="var1" dataSource="${myDS}">
    select qteLivre from projet.bienmobilier where refBien=2 ;
    </sql:query>
       <sql:query var="var2" dataSource="${myDS}">
    select  sum(qteServie) from projet.bonsortie  where refBien=2 
     
    </sql:query>
</head>
<body>
<c:out value="${ var1 }"></c:out>
</body>
</html>