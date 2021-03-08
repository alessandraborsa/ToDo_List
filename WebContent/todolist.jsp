<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<style>
.button {
	height: 7px;
	width: 7px;
	font: bold 11px Arial;
	text-decoration: none;
	background-color: #EEEEEE;
	color: #333333;
	padding: 1px 4px 1px 4px;
	border-top: 1px solid #CCCCCC;
	border-right: 1px solid #333333;
	border-bottom: 1px solid #333333;
	border-left: 1px solid #CCCCCC;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>My ToDoList</h1>
	<form action="addnewtodo" method="GET">
		<label>Insert new ToDo:</label> <input type="text" name="toDo" /> <input
			type="submit" value="Add" />
	</form>

	<ul>
		<c:forEach items="${lista_todo}" var="toDo">

			<li>${toDo.getValue()}<a class="button"
				href="/ToDoList/removetodo?toDo=${toDo.getKey()}">X</a></li>

		</c:forEach>
	</ul>
</body>
</html>