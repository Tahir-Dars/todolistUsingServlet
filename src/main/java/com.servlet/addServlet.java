package com.servlet;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/addtodo")
public class addServlet extends HttpServlet {
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
String todo = req.getParameter("todo");
  String timeWindow = req.getParameter("timeWindow");
		String status = req.getParameter("status");
		todoDAO dao = new todoDAO(DBConnect.getConn());
		boolean f = dao.addtoDo(todo, timeWindow, status);

		if (f) {
			//changing code to send these upper attribtes to index.jsp page 
			session.setAttribute("sucMsg","TODO added successfully!v!");
			resp.sendRedirect("index.jsp");
		} else {
			session.setAttribute("errMsg", "Failed to add TODO!");
			    resp.sendRedirect("add_TODO.jsp");
		}
         }
               }
