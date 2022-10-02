<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>bien mobilier Application</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<!--  

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: red">
			<div>
				<a href="https://www.xadmin.net" class="navbar-brand"> Gestion des familles des biens Mobiliers </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/listBE"
					class="nav-link">Famille</a></li>
			</ul>
		</nav>
	</header>-->
	<br>

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
			
			
	
	
<div class="container search-table">
            <div class="search-box">
                <div class="row">
                    <div class="col-md-3">
                        <h5>Search :</h5>
                    </div>
                    <div class="col-md-9">
                        <input type="text" id="myInput" onkeyup="myFunction()" class="form-control" placeholder="Search all fields...">
                        <script>
                            $(document).ready(function () {
                                $("#myInput").on("keyup", function () {
                                    var value = $(this).val().toLowerCase();
                                    $("#myTable tr").filter(function () {
                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                                    });
                                });
                            });
                        </script>
                    </div> 
                </div>
            </div>
            <div class="search-list">
                
                <table class="table" id="myTable">
                    <thead>
                        <tr>
                            <th>id bon d entree</th>
						<th>num bon d entree</th>
						<th>date bon d entree</th>
						<th>num facture assoucie</th>
						<th>date facture assoucie</th>
						<th>action</th>
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
        </div>
</body>
</html>