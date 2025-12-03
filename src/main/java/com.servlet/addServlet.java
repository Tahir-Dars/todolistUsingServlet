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
			System.out.println("Data Entered Syuccessfully !!");
		} else {
			System.out.println("Error !^! ");
		}
         }
               }
