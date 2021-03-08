package it.objectmethod.todo.servlets;

import java.util.HashMap;
import java.util.Map;
import java.util.Random;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import it.objectmethod.todo.servlets.constants.Constants;

public class Add extends HttpServlet {

	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();

		String toDo = req.getParameter("toDo");

		Map<String, String> toDoList = null;

		toDoList = (HashMap<String, String>) session.getAttribute(Constants.LISTA_TODO);
		if (toDoList == null) {
			toDoList = new HashMap<String, String>();
		}

		if (!toDo.equals("")) {
			int sizeInt = toDoList.size() + 1;
			String size = Integer.toString(sizeInt);
			toDoList.put(size, toDo);

		}

		session.setAttribute(Constants.LISTA_TODO, toDoList);

		req.getRequestDispatcher("todolist.jsp").forward(req, resp);
	}
}
