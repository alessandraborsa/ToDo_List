package it.objectmethod.todo.servlets;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.objectmethod.todo.servlets.constants.Constants;

public class Remove extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();

		String idToDelete = req.getParameter("toDo");

		Map<String, String> toDoList = null;

		toDoList = (HashMap<String, String>) session.getAttribute(Constants.LISTA_TODO);

		toDoList.remove(idToDelete);

		req.getRequestDispatcher("todolist.jsp").forward(req, resp);
	}
}
