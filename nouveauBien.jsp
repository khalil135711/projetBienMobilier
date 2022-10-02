<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
    
 <html lang="en">
<head>
<sql:setDataSource
        var="myDS"
        driver="com.mysql.cj.jdbc.Driver"
        url= "jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
        user="root" password="Khalil123@@"
 
    />
 <sql:query var="listFamille" dataSource="${myDS}">
    SELECT *, LAST_INSERT_ID((refBien)) FROM projet.bienmobilier; 
    SELECT * FROM  projet.bienmobilier  ORDER BY nomDemandeur limit 1 ;        
    </sql:query>
    
    <sql:query var="fam" dataSource="${myDS}">
     SELECT * FROM projet.famille;         
    </sql:query>
<meta charset="utf-8">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>liste des biens d entree</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Bootstrap DataTable -->
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/dataTables.bootstrap.min.css">
<!-- Bootstrap ExportDataTable -->
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/1.5.0/css/buttons.bootstrap.min.css">
<!-- Font icons -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- jQuery -->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
<!-- DataTables JS -->
<script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.10.16/js/dataTables.bootstrap.min.js"></script>
<!--  ExportDataTable JS -->
<script src="https://cdn.datatables.net/buttons/1.5.0/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.0/js/buttons.bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.32/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.0/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.0/js/buttons.print.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.0/js/buttons.colVis.min.js"></script>

</head>
<body>

<style type="text/css">
	
</style>

<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center"><img alt="" src="https://img.icons8.com/color-glass/344/categorize.png" heigth=60 width=60>Listes des biens mobilier</h3>
			<hr>
			<div class="container text-left">
			
		 

<div class="container" style="padding-top:20px;">

 
				
			</div>
			<br>
			
   


<table id="ExportDataTable" class="table table-striped table-hover table-bordered" cellspacing="0" width="100%">


	<thead>
		 <tr>  
		 <img src="data:image/png;base64,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" height="100" width="100"/>
		 
                         <th>ref du bien</th>
                         <th>designation</th>
                         <th>caracteristique Tec</th>	
						<th>emplacement </th>
						<th>codeBien</th>
						<th>Famille</th>
						<th> </th>
						<th> </th>
					
					
                        </tr>
                    </thead>
                    <tbody>
                        
                  <c:forEach var="user" items="${listFamille.rows}">
						<tr>
							<td><c:out value="${user.refBien}" /></td>
							<td><c:out value="${user.designation}" /></td>
							<td><c:out value="${user.caracteristiqueTech}" /></td>
							
							<td><c:out value="${user.emplacement}" /></td>
							
							
							
							<td><img alt="" src="https://static.thenounproject.com/png/1673593-200.png" height="50" width="70"><br><c:out  value="${user.codeBarre}" /></td>
							<td><c:out value="${user.famille}" /></td>
							<td>
                                     <img  src="getPhotoBienServlet?refBien=<c:out value="${user.refBien}" />" width="130px" /></td>
                                     <td> <a href="http://localhost:8080/projet/addBonds.jsp"><img alt="" src="https://image.shutterstock.com/image-vector/reserved-icon-illustration-isolated-vector-260nw-561824290.jpg" height="60" width="60"></a></td>
                     
</tr>
					</c:forEach>
                 	
	</tbody>
</table>

</div>


<script type="text/javascript">
$(document).ready(function() {
    var table = $('#ExportDataTable').DataTable( {
        lengthChange: false,
		
    } );
    table.buttons().container()
        .appendTo( '#ExportDataTable_wrapper .col-sm-6:eq(0)' );
} );

$(document).ready(function () {
	   $("select").select2();
	});
</script>

</body>
</html> 	