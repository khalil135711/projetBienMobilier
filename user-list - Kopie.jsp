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

	
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center"><img alt="" src="https://img.icons8.com/clouds/2x/user.png"> List of Users</h3>
			<hr>
			<div class="container text-left">
			<c:if test="${modif}">
				<p style="background-color:powderblue;" ><img alt="" src="https://img.icons8.com/external-flaticons-flat-flat-icons/2x/external-catalog-traditional-marketing-flaticons-flat-flat-icons.png" heigth=40 width=40> Updated Successfully</p>
			</c:if>
			<c:if test="${dlt}">
				<p style="background-color:powderblue;"><img alt="" src="https://img.icons8.com/color/2x/waste--v2.gif" heigth=40 width=40>l utilisateur est suprimmer</p>
			</c:if>
			
				<a href="<%=request.getContextPath()%>/register" class="btn btn-success">Add New User</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>usename</th>
						<th>firstname</th>
						<th>lastname</th>
						<th>email</th>
						<th>role</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="user" items="${users}">

						<tr>
							
							<td><c:out value="${user.username}" /></td>
							<td><c:out value="${user.first_Name}" /></td>
							<td><c:out value="${user.last_Name}" /></td>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.role}" /></td>
							<td><a href="edituser?id=<c:out value='${user.id}' />"><img alt="" src="https://ouch-cdn2.icons8.com/V_2X59pfE3i1Kd6-3da2Crk44VuLvzl9Ij9AMCJgcIo/rs:fit:256:216/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9zdmcvNTky/LzA1Nzc1YjZlLWE5/M2ItNDQyOC1iOWNl/LWY5YTA1YjhhZWJi/OC5zdmc.png" height="40px" width="40px" ></a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a
								href="deleteuser?id=<c:out value='${user.id}' />"><img alt="" src="https://ouch-cdn2.icons8.com/dHX-QjDDOOSG1CLJccad4PBNtaeMHTzWzgZoSvCkcxA/rs:fit:256:215/czM6Ly9pY29uczgu/b3VjaC1wcm9kLmFz/c2V0cy9wbmcvNDIy/Lzg1MzlkMWI5LTc0/MjgtNDg4ZS1hMDdl/LTZjMDA3ZDUxYjQ5/MC5wbmc.png" height="30px" width="30px"></a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>