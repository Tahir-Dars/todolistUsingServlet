package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.todoDAO;
import com.DB.DBConnect;

@WebServlet("/update")
public class UpdateServlet {
  @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String todo = req.getParameter("todo");
		String timeWindow = req.getParameter("timeWindow");
		String status = req.getParameter("status");
		todoDAO dao = new todoDAO(DBConnect.getConn());
		
		Entity t = new Entity();
		t.setId(id);
		t.setTodo(todo);
		t.setTimeWindow(timeWindow);
		t.setStatus(status);

		boolean f = dao.updateTodo(t);
		HttpSession session = req.getSession();
		if (f) {
			session.setAttribute("sucMsg", "edited successfully");
			resp.sendRedirect("index.jsp");
		} else {
			session.setAttribute("failedMsg", "not edited-Something Went Wrong...");
			resp.sendRedirect("index.jsp");

		}
	}

}
