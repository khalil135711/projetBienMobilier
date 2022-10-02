<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>User Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
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
				<li><a href="<%=request.getContextPath()%>/listFam"
					class="nav-link">Famille</a></li>
			</ul>
		</nav>
	</header>-->
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center"><img alt="" src="https://img.icons8.com/color-glass/344/categorize.png" heigth=60 width=60>Listes des familles</h3>
			<hr>
			<div class="container text-left">
			<c:if test="${modif}">
				<p style="background-color:powderblue;" ><img alt="" src="https://img.icons8.com/external-flaticons-flat-flat-icons/2x/external-catalog-traditional-marketing-flaticons-flat-flat-icons.png" heigth=40 width=40> Updated Successfully</p>
			</c:if>
			<c:if test="${dlt}">
				<p style="background-color:powderblue;"><img alt="" src="https://img.icons8.com/color/2x/waste--v2.gif" heigth=40 width=40>une famille est suprimmer</p>
			</c:if>
				<a href="<%=request.getContextPath()%>/admin" class=""><img alt="" src="https://img.icons8.com/bubbles/344/back.png" heigth=50 width=50></a>			
				<a href="<%=request.getContextPath()%>/register1" class="btn btn-success">Ajouter une nouvelle famille</a>
				
				<a href="<%=request.getContextPath()%>/register" class="btn btn-danger">Ajouter utulisateur</a>
				<a href="<%=request.getContextPath()%>/register1" class="btn btn-success">Ajouter un bien mobilier </a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						
						<th>nom Famille</th>
						
						
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="user" items="${users}">

						<tr>
							
							<td><c:out value="${user.nomfamille}" /></td>
							
							<td><a href="edituser1?idFam=<c:out value='${user.idFam}' />"><img alt="" src="https://ouch-cdn2.icons8.com/V_2X59pfE3i1Kd6-3da2Crk44VuLvzl9Ij9AMCJgcIo/rs:fit:256:216/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNTky/LzA1Nzc1YjZlLWE5/M2ItNDQyOC1iOWNl/LWY5YTA1YjhhZWJi/OC5zdmc.png" height="40px" width="40px" ></a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteuser1?idFam=<c:out value='${user.idFam}' />"><img alt="" src="https://ouch-cdn2.icons8.com/dHX-QjDDOOSG1CLJccad4PBNtaeMHTzWzgZoSvCkcxA/rs:fit:256:215/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNDIy/Lzg1MzlkMWI5LTc0/MjgtNDg4ZS1hMDdl/LTZjMDA3ZDUxYjQ5/MC5wbmc.png" height="30px" width="30px"></a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>