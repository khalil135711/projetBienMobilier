<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<sql:setDataSource
        var="myDS"
        driver="com.mysql.cj.jdbc.Driver"
        url= "jdbc:mysql://localhost:3306/projet?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC"
        user="root" password="Khalil123@@"
 
    />
<sql:query var="listFamille" dataSource="${myDS}">
     SELECT * FROM projet.bienmobilier;
    </sql:query>
<meta charset="ISO-8859-1">
<title>Bon de Sortie </title>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<body >
<form class="form-horizontal" action="<%=request.getContextPath()%>/registerBonds" method="post" >
<fieldset>

<!-- Form Name -->
<legend>bons de Sortie</legend>


<c:if test="${add}">
				<p style="background-color:powderblue;" ><img alt="" src="data:image/svg+xml;base64,PHN2ZyB2ZXJzaW9uPSIxLjEiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgeG1sbnM6eGxpbms9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZpZXdCb3g9IjAgMCAxNzIgMTcyIj48ZGVmcz48bGluZWFyR3JhZGllbnQgeDE9Ijc1LjI1IiB5MT0iMTAwLjU3OTY5IiB4Mj0iNzUuMjUiIHkyPSIxMzAuNzU0OTQiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiBpZD0iY29sb3ItMSI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjZmY5ZjcwIj48L3N0b3A+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLWNvbG9yPSIjOGIyOGI2Ij48L3N0b3A+PC9saW5lYXJHcmFkaWVudD48bGluZWFyR3JhZGllbnQgeDE9Ijg2IiB5MT0iMTIuMTc5NzUiIHgyPSI4NiIgeTI9IjE1MC4xMDIyNSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIGlkPSJjb2xvci0yIj48c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiNmZjUzMDAiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiM0NTE0NWEiPjwvc3RvcD48L2xpbmVhckdyYWRpZW50PjxsaW5lYXJHcmFkaWVudCB4MT0iNzUuMjUiIHkxPSIxMi4xNzk3NSIgeDI9Ijc1LjI1IiB5Mj0iMTUwLjEwMjI1IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgaWQ9ImNvbG9yLTMiPjxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2ZmNTMwMCI+PC9zdG9wPjxzdG9wIG9mZnNldD0iMSIgc3RvcC1jb2xvcj0iIzQ1MTQ1YSI+PC9zdG9wPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IHgxPSI3NS4yNSIgeTE9IjEyLjE3OTc1IiB4Mj0iNzUuMjUiIHkyPSIxNTAuMTAyMjUiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiBpZD0iY29sb3ItNCI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjZmY1MzAwIj48L3N0b3A+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLWNvbG9yPSIjNDUxNDVhIj48L3N0b3A+PC9saW5lYXJHcmFkaWVudD48bGluZWFyR3JhZGllbnQgeDE9Ijc1LjI1IiB5MT0iMTIuMTc5NzUiIHgyPSI3NS4yNSIgeTI9IjE1MC4xMDIyNSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIGlkPSJjb2xvci01Ij48c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiNmZjUzMDAiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiM0NTE0NWEiPjwvc3RvcD48L2xpbmVhckdyYWRpZW50PjxsaW5lYXJHcmFkaWVudCB4MT0iNzUuMjUiIHkxPSIxMi4xNzk3NSIgeDI9Ijc1LjI1IiB5Mj0iMTUwLjEwMjI1IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgaWQ9ImNvbG9yLTYiPjxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2ZmNTMwMCI+PC9zdG9wPjxzdG9wIG9mZnNldD0iMSIgc3RvcC1jb2xvcj0iIzQ1MTQ1YSI+PC9zdG9wPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IHgxPSI3NS4yNSIgeTE9IjEwMC41Nzk2OSIgeDI9Ijc1LjI1IiB5Mj0iMTMwLjc1NDk0IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgaWQ9ImNvbG9yLTciPjxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iI2ZmOWY3MCI+PC9zdG9wPjxzdG9wIG9mZnNldD0iMSIgc3RvcC1jb2xvcj0iIzhiMjhiNiI+PC9zdG9wPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IHgxPSI4NiIgeTE9IjEyLjE3OTc1IiB4Mj0iODYiIHkyPSIxNTAuMTAyMjUiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiBpZD0iY29sb3ItOCI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjZmY1MzAwIj48L3N0b3A+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLWNvbG9yPSIjNDUxNDVhIj48L3N0b3A+PC9saW5lYXJHcmFkaWVudD48bGluZWFyR3JhZGllbnQgeDE9Ijc1LjI1IiB5MT0iMTIuMTc5NzUiIHgyPSI3NS4yNSIgeTI9IjE1MC4xMDIyNSIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIGlkPSJjb2xvci05Ij48c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiNmZjUzMDAiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiM0NTE0NWEiPjwvc3RvcD48L2xpbmVhckdyYWRpZW50PjxsaW5lYXJHcmFkaWVudCB4MT0iNzUuMjUiIHkxPSIxMi4xNzk3NSIgeDI9Ijc1LjI1IiB5Mj0iMTUwLjEwMjI1IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgaWQ9ImNvbG9yLTEwIj48c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiNmZjUzMDAiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiM0NTE0NWEiPjwvc3RvcD48L2xpbmVhckdyYWRpZW50PjxsaW5lYXJHcmFkaWVudCB4MT0iNzUuMjUiIHkxPSIxMi4xNzk3NSIgeDI9Ijc1LjI1IiB5Mj0iMTUwLjEwMjI1IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgaWQ9ImNvbG9yLTExIj48c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiNmZjUzMDAiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiM0NTE0NWEiPjwvc3RvcD48L2xpbmVhckdyYWRpZW50PjxsaW5lYXJHcmFkaWVudCB4MT0iNzUuMjUiIHkxPSIxMi4xNzk3NSIgeDI9Ijc1LjI1IiB5Mj0iMTUwLjEwMjI1IiBncmFkaWVudFVuaXRzPSJ1c2VyU3BhY2VPblVzZSIgaWQ9ImNvbG9yLTEyIj48c3RvcCBvZmZzZXQ9IjAiIHN0b3AtY29sb3I9IiNmZjUzMDAiPjwvc3RvcD48c3RvcCBvZmZzZXQ9IjEiIHN0b3AtY29sb3I9IiM0NTE0NWEiPjwvc3RvcD48L2xpbmVhckdyYWRpZW50PjxsaW5lYXJHcmFkaWVudCB4MT0iMTM3LjA2MjUiIHkxPSIxMDIuNTczODEiIHgyPSIxMzcuMDYyNSIgeTI9IjE3MS40NDEiIGdyYWRpZW50VW5pdHM9InVzZXJTcGFjZU9uVXNlIiBpZD0iY29sb3ItMTMiPjxzdG9wIG9mZnNldD0iMCIgc3RvcC1jb2xvcj0iIzFhNmRmZiI+PC9zdG9wPjxzdG9wIG9mZnNldD0iMSIgc3RvcC1jb2xvcj0iI2M4MjJmZiI+PC9zdG9wPjwvbGluZWFyR3JhZGllbnQ+PGxpbmVhckdyYWRpZW50IHgxPSIxMzcuMDYyNSIgeTE9IjEwMi4xMjUiIHgyPSIxMzcuMDYyNSIgeTI9IjE3MiIgZ3JhZGllbnRVbml0cz0idXNlclNwYWNlT25Vc2UiIGlkPSJjb2xvci0xNCI+PHN0b3Agb2Zmc2V0PSIwIiBzdG9wLWNvbG9yPSIjMWE2ZGZmIj48L3N0b3A+PHN0b3Agb2Zmc2V0PSIxIiBzdG9wLWNvbG9yPSIjYzgyMmZmIj48L3N0b3A+PC9saW5lYXJHcmFkaWVudD48L2RlZnM+PGcgZmlsbD0ibm9uZSIgZmlsbC1ydWxlPSJub256ZXJvIiBzdHJva2U9Im5vbmUiIHN0cm9rZS13aWR0aD0iMSIgc3Ryb2tlLWxpbmVjYXA9ImJ1dHQiIHN0cm9rZS1saW5lam9pbj0ibWl0ZXIiIHN0cm9rZS1taXRlcmxpbWl0PSIxMCIgc3Ryb2tlLWRhc2hhcnJheT0iIiBzdHJva2UtZGFzaG9mZnNldD0iMCIgZm9udC1mYW1pbHk9Im5vbmUiIGZvbnQtd2VpZ2h0PSJub25lIiBmb250LXNpemU9Im5vbmUiIHRleHQtYW5jaG9yPSJub25lIiBzdHlsZT0ibWl4LWJsZW5kLW1vZGU6IG5vcm1hbCI+PHBhdGggZD0iTTAsMTcydi0xNzJoMTcydjE3MnoiIGZpbGw9Im5vbmUiIHN0cm9rZT0ibm9uZSI+PC9wYXRoPjxnIGlkPSJvcmlnaW5hbC1pY29uIiBzdHJva2U9Im5vbmUiIG9wYWNpdHk9IjAiIHZpc2liaWxpdHk9ImhpZGRlbiI+PGNpcmNsZSBjeD0iMjgiIGN5PSI0MyIgdHJhbnNmb3JtPSJzY2FsZSgyLjY4NzUsMi42ODc1KSIgcj0iNSIgZmlsbD0idXJsKCNjb2xvci0xKSI+PC9jaXJjbGU+PHBhdGggZD0iTTE0NS4xMjUsMjkuNTYyNWMwLC03LjQwOTQ0IC02LjAyODA2LC0xMy40Mzc1IC0xMy40Mzc1LC0xMy40Mzc1aC05MS4zNzVjLTcuNDA5NDQsMCAtMTMuNDM3NSw2LjAyODA2IC0xMy40Mzc1LDEzLjQzNzV2MTAyLjEyNWgyOS41NjI1djE5LjAwMDYzYzAsMi4wMTU2MyAxLjExMjYzLDMuODQ1ODEgMi44OTk4MSw0Ljc3MDMxYzEuNzk1MjUsMC45MzI1NiAzLjkyNjQ0LDAuNzgyMDYgNS41NzExOSwtMC4zNzg5NGwxMC4zNDE1LC03LjI5Mzg3bDEwLjM0MTUsNy4yOTY1NmMwLjkyNzE5LDAuNjUzMDYgMi4wMDc1NiwwLjk4MzYyIDMuMDkzMzEsMC45ODM2MmMwLjg0Mzg3LDAgMS42OTMxMywtMC4xOTg4NyAyLjQ3Nzg3LC0wLjYwNzM3YzEuNzg3MTksLTAuOTI0NSAyLjg5OTgxLC0yLjc1NDY5IDIuODk5ODEsLTQuNzcwMzF2LTE5LjAwMDYzaDI5LjU2MjV2LTgwLjYyNWgyMS41ek03NS4yNSwxMzQuMzc1Yy0xMC4zNzEwNiwwIC0xOC44MTI1LC04LjQ0MTQ0IC0xOC44MTI1LC0xOC44MTI1YzAsLTEwLjM3MTA2IDguNDQxNDQsLTE4LjgxMjUgMTguODEyNSwtMTguODEyNWMxMC4zNzEwNiwwIDE4LjgxMjUsOC40NDE0NCAxOC44MTI1LDE4LjgxMjVjMCwxMC4zNzEwNiAtOC40NDE0NCwxOC44MTI1IC0xOC44MTI1LDE4LjgxMjV6TTc4LjM0ODY5LDE0My4zOTQyNWMtMS44NTE2OSwtMS4zMTE1IC00LjM0ODM3LC0xLjMwODgxIC02LjE5NzM4LC0wLjAwMjY5bC0xMC4zMzg4MSw3LjI5NjU2di0xNS4wMjg1YzMuODQ1ODEsMi41OCA4LjQ2ODMxLDQuMDkwMzcgMTMuNDM3NSw0LjA5MDM3YzQuOTY5MTksMCA5LjU5MTY5LC0xLjUxMDM3IDEzLjQzNzUsLTQuMDkwMzd2MTUuMDI4NXpNMTE4LjI1LDEyNi4zMTI1aC0yMS4zNjU2M2MxLjYxNzg3LC0zLjI0MzgxIDIuNTUzMTMsLTYuODg1MzcgMi41NTMxMywtMTAuNzVjMCwtMTMuMzM4MDYgLTEwLjg0OTQ0LC0yNC4xODc1IC0yNC4xODc1LC0yNC4xODc1Yy0xMy4zMzgwNiwwIC0yNC4xODc1LDEwLjg0OTQ0IC0yNC4xODc1LDI0LjE4NzVjMCwzLjg2NDYzIDAuOTMyNTYsNy41MDYxOSAyLjU1MzEzLDEwLjc1aC0yMS4zNjU2MnYtOTYuNzVjMCwtNC40NDUxMyAzLjYxNzM4LC04LjA2MjUgOC4wNjI1LC04LjA2MjVoODAuNjk0ODhjLTEuNzA2NTYsMi4yNTIxMiAtMi43NTczNyw1LjAyNTYyIC0yLjc1NzM3LDguMDYyNXpNMTM5Ljc1LDQ1LjY4NzVoLTE2LjEyNXYtMTYuMTI1YzAsLTQuNDQ1MTMgMy42MTczOCwtOC4wNjI1IDguMDYyNSwtOC4wNjI1YzQuNDQ1MTIsMCA4LjA2MjUsMy42MTczNyA4LjA2MjUsOC4wNjI1eiIgZmlsbD0idXJsKCNjb2xvci0yKSI+PC9wYXRoPjxyZWN0IHg9IjE3IiB5PSIyNCIgdHJhbnNmb3JtPSJzY2FsZSgyLjY4NzUsMi42ODc1KSIgd2lkdGg9IjIyIiBoZWlnaHQ9IjIiIGZpbGw9InVybCgjY29sb3ItMykiPjwvcmVjdD48cmVjdCB4PSIyMCIgeT0iMTkiIHRyYW5zZm9ybT0ic2NhbGUoMi42ODc1LDIuNjg3NSkiIHdpZHRoPSIxNiIgaGVpZ2h0PSIyIiBmaWxsPSJ1cmwoI2NvbG9yLTQpIj48L3JlY3Q+PHJlY3QgeD0iMTciIHk9IjE0IiB0cmFuc2Zvcm09InNjYWxlKDIuNjg3NSwyLjY4NzUpIiB3aWR0aD0iMjIiIGhlaWdodD0iMiIgZmlsbD0idXJsKCNjb2xvci01KSI+PC9yZWN0PjxyZWN0IHg9IjIwIiB5PSIyOSIgdHJhbnNmb3JtPSJzY2FsZSgyLjY4NzUsMi42ODc1KSIgd2lkdGg9IjE2IiBoZWlnaHQ9IjIiIGZpbGw9InVybCgjY29sb3ItNikiPjwvcmVjdD48L2c+PGcgaWQ9InN1YnRyYWN0ZWQtaWNvbiIgc3Ryb2tlPSJub25lIj48cGF0aCBkPSJNNzUuMjUsMTI5YzcuNDIxMzMsMCAxMy40Mzc1LC02LjAxNjE3IDEzLjQzNzUsLTEzLjQzNzVjMCwtNy40MjEzMyAtNi4wMTYxNywtMTMuNDM3NSAtMTMuNDM3NSwtMTMuNDM3NWMtNy40MjEzMywwIC0xMy40Mzc1LDYuMDE2MTcgLTEzLjQzNzUsMTMuNDM3NWMwLDcuNDIxMzMgNi4wMTYxNywxMy40Mzc1IDEzLjQzNzUsMTMuNDM3NXoiIGZpbGw9InVybCgjY29sb3ItNykiPjwvcGF0aD48cGF0aCBkPSJNMTQ1LjEyNSw1MS4wNjI1aC0yMS41djQ3Ljk5MDEyYy0xLjg1NzY2LDAuNjU4NjcgLTMuNjUzMTQsMS40NDk5MSAtNS4zNzUsMi4zNjIyOHYtNzEuODUyNGMwLC0zLjAzNjg4IDEuMDUwODEsLTUuODEwMzcgMi43NTczNywtOC4wNjI1aC04MC42OTQ4N2MtNC40NDUxMiwwIC04LjA2MjUsMy42MTczNyAtOC4wNjI1LDguMDYyNXY5Ni43NWgyMS4zNjU2M2MtMS42MjA1NiwtMy4yNDM4MSAtMi41NTMxMywtNi44ODUzNyAtMi41NTMxMywtMTAuNzVjMCwtMTMuMzM4MDYgMTAuODQ5NDQsLTI0LjE4NzUgMjQuMTg3NSwtMjQuMTg3NWMxMy4zMzgwNiwwIDI0LjE4NzUsMTAuODQ5NDQgMjQuMTg3NSwyNC4xODc1YzAsMy44NjQ2MyAtMC45MzUyNSw3LjUwNjE5IC0yLjU1MzEzLDEwLjc1aDEuMzIwNzRjLTAuNDgzOTcsMS43NDcyOCAtMC44NTI5NSwzLjU0MTg0IC0xLjA5ODI2LDUuMzc1aC0zLjA0NDM2djE5LjAwMDYzYzAsMi4wMTU2MyAtMS4xMTI2MywzLjg0NTgxIC0yLjg5OTgxLDQuNzcwMzFjLTAuNzg0NzUsMC40MDg1IC0xLjYzNCwwLjYwNzM3IC0yLjQ3Nzg3LDAuNjA3MzdjLTEuMDg1NzUsMCAtMi4xNjYxMywtMC4zMzA1NiAtMy4wOTMzMSwtMC45ODM2MmwtMTAuMzQxNSwtNy4yOTY1NmwtMTAuMzQxNSw3LjI5Mzg3Yy0xLjY0NDc1LDEuMTYxIC0zLjc3NTk0LDEuMzExNSAtNS41NzExOSwwLjM3ODk0Yy0xLjc4NzE5LC0wLjkyNDUgLTIuODk5ODEsLTIuNzU0NjkgLTIuODk5ODEsLTQuNzcwMzF2LTE5LjAwMDYzaC0yOS41NjI1di0xMDIuMTI1YzAsLTcuNDA5NDQgNi4wMjgwNiwtMTMuNDM3NSAxMy40Mzc1LC0xMy40Mzc1aDkxLjM3NWM3LjQwOTQ0LDAgMTMuNDM3NSw2LjAyODA2IDEzLjQzNzUsMTMuNDM3NXpNOTQuMDYyNSwxMTUuNTYyNWMwLC0xMC4zNzEwNiAtOC40NDE0NCwtMTguODEyNSAtMTguODEyNSwtMTguODEyNWMtMTAuMzcxMDYsMCAtMTguODEyNSw4LjQ0MTQ0IC0xOC44MTI1LDE4LjgxMjVjMCwxMC4zNzEwNiA4LjQ0MTQ0LDE4LjgxMjUgMTguODEyNSwxOC44MTI1YzEwLjM3MTA2LDAgMTguODEyNSwtOC40NDE0NCAxOC44MTI1LC0xOC44MTI1ek04OC42ODc1LDE1MC42ODgxM3YtMTUuMDI4NWMtMy44NDU4MSwyLjU4IC04LjQ2ODMxLDQuMDkwMzcgLTEzLjQzNzUsNC4wOTAzN2MtNC45NjkxOSwwIC05LjU5MTY5LC0xLjUxMDM3IC0xMy40Mzc1LC00LjA5MDM3djE1LjAyODVsMTAuMzM4ODEsLTcuMjk2NTZjMS44NDksLTEuMzA2MTMgNC4zNDU2OSwtMS4zMDg4MSA2LjE5NzM4LDAuMDAyNjl6TTEzOS43NSwyOS41NjI1YzAsLTQuNDQ1MTMgLTMuNjE3MzgsLTguMDYyNSAtOC4wNjI1LC04LjA2MjVjLTQuNDQ1MTIsMCAtOC4wNjI1LDMuNjE3MzcgLTguMDYyNSw4LjA2MjV2MTYuMTI1aDE2LjEyNXoiIGZpbGw9InVybCgjY29sb3ItOCkiPjwvcGF0aD48cGF0aCBkPSJNMTA0LjgxMjUsNjkuODc1di01LjM3NWgtNTkuMTI1djUuMzc1eiIgZmlsbD0idXJsKCNjb2xvci05KSI+PC9wYXRoPjxwYXRoIGQ9Ik05Ni43NSw1Ni40Mzc1di01LjM3NWgtNDN2NS4zNzV6IiBmaWxsPSJ1cmwoI2NvbG9yLTEwKSI+PC9wYXRoPjxwYXRoIGQ9Ik0xMDQuODEyNSw0M3YtNS4zNzVoLTU5LjEyNXY1LjM3NXoiIGZpbGw9InVybCgjY29sb3ItMTEpIj48L3BhdGg+PHBhdGggZD0iTTk2Ljc1LDgzLjMxMjV2LTUuMzc1aC00M3Y1LjM3NXoiIGZpbGw9InVybCgjY29sb3ItMTIpIj48L3BhdGg+PC9nPjxnIHN0cm9rZT0ibm9uZSI+PGc+PHBhdGggZD0iTTE1MC41LDEzNC4zNzVoLTEwLjc1di0xMC43NWMwLC0xLjQ4NDI3IC0xLjIwMzIzLC0yLjY4NzUgLTIuNjg3NSwtMi42ODc1Yy0xLjQ4NDI3LDAgLTIuNjg3NSwxLjIwMzIzIC0yLjY4NzUsMi42ODc1djEwLjc1aC0xMC43NWMtMS40ODQyNywwIC0yLjY4NzUsMS4yMDMyMyAtMi42ODc1LDIuNjg3NWMwLDEuNDg0MjcgMS4yMDMyMywyLjY4NzUgMi42ODc1LDIuNjg3NWgxMC43NXYxMC43NWMwLDEuNDg0MjcgMS4yMDMyMywyLjY4NzUgMi42ODc1LDIuNjg3NWMxLjQ4NDI3LDAgMi42ODc1LC0xLjIwMzIzIDIuNjg3NSwtMi42ODc1di0xMC43NWgxMC43NWMxLjQ4NDI3LDAgMi42ODc1LC0xLjIwMzIzIDIuNjg3NSwtMi42ODc1YzAsLTEuNDg0MjcgLTEuMjAzMjMsLTIuNjg3NSAtMi42ODc1LC0yLjY4NzV6IiBmaWxsPSJ1cmwoI2NvbG9yLTEzKSI+PC9wYXRoPjxwYXRoIGQ9Ik0xMzcuMDYyNSwxNzJjLTE5LjI2NCwwIC0zNC45Mzc1LC0xNS42NzM1IC0zNC45Mzc1LC0zNC45Mzc1YzAsLTE5LjI2NCAxNS42NzM1LC0zNC45Mzc1IDM0LjkzNzUsLTM0LjkzNzVjMTkuMjY0LDAgMzQuOTM3NSwxNS42NzM1IDM0LjkzNzUsMzQuOTM3NWMwLDE5LjI2NCAtMTUuNjczNSwzNC45Mzc1IC0zNC45Mzc1LDM0LjkzNzV6TTEzNy4wNjI1LDEwNy41Yy0xNi4yOTk2OSwwIC0yOS41NjI1LDEzLjI2MjgxIC0yOS41NjI1LDI5LjU2MjVjMCwxNi4yOTk2OSAxMy4yNjI4MSwyOS41NjI1IDI5LjU2MjUsMjkuNTYyNWMxNi4yOTk2OSwwIDI5LjU2MjUsLTEzLjI2MjgxIDI5LjU2MjUsLTI5LjU2MjVjMCwtMTYuMjk5NjkgLTEzLjI2MjgxLC0yOS41NjI1IC0yOS41NjI1LC0yOS41NjI1eiIgZmlsbD0idXJsKCNjb2xvci0xNCkiPjwvcGF0aD48L2c+PGcgZmlsbD0iIzAwMDAwMCIgb3BhY2l0eT0iMCI+PHBhdGggZD0iTTEzNy4wNjI1LDk2Ljc1Yy0yMi4yMjgzMSwwIC00MC4zMTI1LDE4LjA4NDE5IC00MC4zMTI1LDQwLjMxMjVjMCwyMi4yMjgzMSAxOC4wODQxOSw0MC4zMTI1IDQwLjMxMjUsNDAuMzEyNWMyMi4yMjgzMSwwIDQwLjMxMjUsLTE4LjA4NDE5IDQwLjMxMjUsLTQwLjMxMjVjMCwtMjIuMjI4MzEgLTE4LjA4NDE5LC00MC4zMTI1IC00MC4zMTI1LC00MC4zMTI1eiI+PC9wYXRoPjwvZz48L2c+PHBhdGggZD0iTTEwMi4xMjUsMTcydi02OS44NzVoNjkuODc1djY5Ljg3NXoiIGlkPSJvdmVybGF5LWRyYWciIGZpbGw9IiNmZjAwMDAiIHN0cm9rZT0ibm9uZSIgb3BhY2l0eT0iMCI+PC9wYXRoPjwvZz48L3N2Zz4=" heigth=40 width=40>bon de sortie was added with Successfully</p>
			</c:if>
				
<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="percentage_discount">date bon de sortie</label>  
  <div class="col-md-4">
  <input  name="dateBS"   type="date">
    
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="stock_alert">Qte Servie</label>  
  <div class="col-md-4">
  <input id="stock_alert" name="qteServie" placeholder="Qte Servie" class="form-control input-md" required="" type="text">
    
  </div>
</div>

<div class="form-group">
   <label class="col-md-4 control-label" for="author">nom Demandeur</label>  
  <div class="col-md-4">
  <input id="author" name="nomDem" placeholder="num Facture" class="form-control input-md" required="" type="text">
    
  </div>
</div>


<div class="form-group">
  <label class="col-md-4 control-label" for="product_categorie">reference du bien</label>
  <div class="col-md-4">
    <select id="product_categorie" name="idFam" class="form-control">
       <c:forEach var="user" items="${listFamille.rows}">
         <option value=<c:out value="${user.refBien}"/>><c:out value="${user.designation} ${user.famille}"/></option>
                              </c:forEach>
    </select>
</div>



<div class="form-group">
  <div class="col-md-4">
    <button id="singlebutton" name="singlebutton" class="btn btn-primary" style="btn-align=center;">enregister</button>
  </div>
  </div>

</fieldset>
</form>

</body>
</html>