<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <html lang="en">
<head>
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
<!-- Bootstrap JS -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>

<style type="text/css">
	
</style>

<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center"><img alt="" src="https://img.icons8.com/color-glass/344/categorize.png" heigth=60 width=60>Listes des bons d'entree</h3>
			<hr>
			<div class="container text-left">
			<c:if test="${modif}">
				<p style="background-color:powderblue;" ><img alt="" src="https://img.icons8.com/external-flaticons-flat-flat-icons/2x/external-catalog-traditional-marketing-flaticons-flat-flat-icons.png" heigth=40 width=40> Updated Successfully</p>
			</c:if>
			<c:if test="${dlt}">
				<p style="background-color:powderblue;"><img alt="" src="https://img.icons8.com/color/2x/waste--v2.gif" heigth=40 width=40>un bon d entree est suprimmer</p>
			</c:if>
				<a href="<%=request.getContextPath()%>/admin" class=""><img alt="" src="https://img.icons8.com/bubbles/344/back.png" heigth=50 width=50></a>			
				<a href="<%=request.getContextPath()%>/register1" class="btn btn-success">Ajouter une nouvelle famille</a>
				
				<a href="<%=request.getContextPath()%>/register" class="btn btn-danger">Ajouter utulisateur</a>
				<a href="<%=request.getContextPath()%>/bienMobilier" class="btn btn-success">Ajouter un bien mobilier </a>
				<a href="http://localhost:8080/projet/addBonde.jsp" class="btn btn-danger">Ajouter un bon d entree </a>
			</div>
			<br>
			

<div class="container" style="padding-top:20px;">

<table id="ExportDataTable" class="table table-striped table-hover table-bordered" cellspacing="0" width="100%">
	<thead>
		 <tr>  
                        <th>id bon d entree</th>
						<th>num bon d entree</th>
						<th>date bon d entree</th>
						<th>num facture associe</th>
						<th>date facture associe</th>
						<th> </th>
                        </tr>
	</thead>
	<tbody>
		  
                  <c:forEach var="user" items="${users}">

						<tr>
						

							
							<td><c:out value="${user.idbonDE}" /></td>
							<td><c:out value="${user.numBe}" /></td>
							<td><c:out value="${user.dateBE}" /></td>
							<td><c:out value="${user.numFac}" /></td>
							<td><c:out value="${user.dateFac}" /></td>
							<td><a href="editBonde?idbonDE=<c:out value='${user.idbonDE}' />"><img alt="" src="https://ouch-cdn2.icons8.com/V_2X59pfE3i1Kd6-3da2Crk44VuLvzl9Ij9AMCJgcIo/rs:fit:256:216/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNTky/LzA1Nzc1YjZlLWE5/M2ItNDQyOC1iOWNl/LWY5YTA1YjhhZWJi/OC5zdmc.png" height="40px" width="40px" ></a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deletBonde?idbonDE=<c:out value='${user.idbonDE}' />"><img alt="" src="https://ouch-cdn2.icons8.com/dHX-QjDDOOSG1CLJccad4PBNtaeMHTzWzgZoSvCkcxA/rs:fit:256:215/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNDIy/Lzg1MzlkMWI5LTc0/MjgtNDg4ZS1hMDdl/LTZjMDA3ZDUxYjQ5/MC5wbmc.png" height="30px" width="30px"></a></td>
						
</tr>
					</c:forEach>
                   
		
	</tbody>
</table>

</div>


<script type="text/javascript">
$(document).ready(function() {
    var table = $('#ExportDataTable').DataTable( {
        lengthChange: false,
        //buttons: [ 'copy', 'excel', 'pdf', 'print', 'colvis' ]
		buttons: [ 'copy', 'excel', 'pdf', 'print']
    } );
    table.buttons().container()
        .appendTo( '#ExportDataTable_wrapper .col-sm-6:eq(0)' );
} );
</script>

</body>
</html> 							