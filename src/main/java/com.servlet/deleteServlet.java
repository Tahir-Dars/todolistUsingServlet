package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/delete")
public class deleteServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		todoDAO dao = new todoDAO(DBConnect.getConn());

		boolean f = dao.deletetodo(id);
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
