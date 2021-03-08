<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>My ToDoList</h1>
	<form action="addnewtodo" method="GET">
		<label>Inserisci nuova ToDo:</label> <input type="text" name="toDo" />
		<input type="submit" value="AGGIUNGI TODO" />
	</form>
	
	<ul>
		<c:forEach items="${lista_todo}" var="toDo">
			
			<li>${toDo.getValue()}</li>
			<a   href="/ToDoList/removetodo?toDo=${toDo.getKey()}">X</a>
		</c:forEach>
	</ul>
</body>
</html>