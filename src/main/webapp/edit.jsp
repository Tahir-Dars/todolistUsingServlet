<%@page import="com.entity.Entity"%>
<%@page import="com.DAO.todoDAO"%>
<%@page import="com.DB.DBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="component/allCSS.jsp"%>
</head>
<body>
<%@include file="component/navbar.jsp"%>
<div class="container">
		<div class="row p-5">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body"
						style="background-color: #1A2A40; border: 1px solid black; border-radius: 8px;">
						<h3 class="text-center" style="color: darkkhaki;">Edit</h3>
                        <%
						int id=Integer.parseInt(request.getParameter("id"));
						todoDAO dao=new todoDAO(DBConnect.getConn());
						Entity t = dao.getdobyid(id);
						
						%>
                        <input type="hidden" value="<%=t.getId()%>" name="id">
						<form action="addtodo" method="post">

							<div class="mb-3">
								<label for="todoInput" class="form-label"
									style="color: darkkhaki;">TODO</label> <input type="text"
									class="form-control" id="todoInput" aria-describedby="todoHelp"
									style="color: darkkhaki; background-color: #1A2A40;"
									name="todo" value="<%=t.getTodo()%>">
							</div>
							<div class="mb-3">
								<label for="todoInput" class="form-label"
									style="color: darkkhaki;">Time Window</label> <input
									type="text" class="form-control" id="todoInput"
									aria-describedby="todoHelp"
									style="color: darkkhaki; background-color: #1A2A40;"
									name="timeWindow" value="<%=t.getTimeWindow()%>">
							</div>
							<div class="col-md-13 col-sm-6 col-12">
								<label for="inputState" class="form-label">Status</label> <select
									id="inputState" class="form-select w-100"
									style="color: darkkhaki; background-color: #1A2A40;"
									name="status">
                                    <%
									if("Pending".equals(t.getStatus()))
									{%>
									<option value="Pending">Pending</option>
									<option value="Completed">Completed</option>
									<%}
									else
									{ %>
									<option value="Completed">Completed</option>
									<option value="Pending">Pending</option>
									<%	
									}
									%>
								</select>
							</div>
							<br>
							<div class="text-center">
								<button type="submit" class="btn btn-primary"
									style="background-color: darkkhaki; border:1px solid darkkhaki">Change</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
</body>
</html>
